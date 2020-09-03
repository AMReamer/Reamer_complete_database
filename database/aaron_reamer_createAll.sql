-- Aaron Reamer
CREATE DATABASE PlantNursery;
USE PlantNursery;

SET SQL_SAFE_UPDATES = 0;

-- create tables
create table plants
	(common_name varchar(45),
     species varchar(45),
     variety varchar(45),
     p_type varchar(10),
     retention varchar(10),
     germination_days int, 
     feed double,
     water double,
     temperature double,
     moisture double,
     light double,
     descript longtext,
     primary key (common_name)
	);
    
    -- stored data for view pots
    create table pots
    (pot_id varchar(8),
     volume int,
     height int,
     primary key (pot_id)
    );
    
    create table log_entry
    (l_id varchar(27),
     pot_id varchar(8),
     timestamp timestamp,
     food double,
     water double,
     temperature double,
     moisture double,
     light double,
     primary key (l_id),
     foreign key (pot_id) references pots (pot_id)
		on delete cascade
    );
    
    create table tray
    (tray_id varchar(8),
     location point,
     timestamp timestamp,
     primary key (tray_id)
    );
    
    create table micro_weather_station
    (station_id varchar(8),
     location point,
     primary key (station_id)
    );
    
    create table measurements
    (m_id varchar(27),
     station_id varchar(8),
     location point,
     timestamp timestamp,
     temperature double,
     moisture double,
     light double,
     primary key (m_id),
     foreign key (station_id) references micro_weather_station (station_id)
		on delete cascade
    );
    
    create table holds_data
    (pot_id varchar(8),
     common_name varchar(45),
     planting_date date,
	 germination_days int,
     germination_date date generated always as (date_add(planting_date, interval (germination_days) day)),
     primary key (common_name, pot_id),
     foreign key (common_name) references plants (common_name)
		on delete cascade,
	 foreign key (pot_id) references pots (pot_id)
		on delete cascade
	 );
     
     create table containing
     (tray_id varchar(8),
      pot_id varchar(8),
      primary key (tray_id, pot_id),
      foreign key (tray_id) references tray (tray_id)
		on delete cascade,
	 foreign key (pot_id) references pots (pot_id)
		on delete cascade
	 );

-- views

-- view for holds     
create view holds as
select *, (datediff(current_date, germination_date)) as age
from holds_data;
-- view created to make things easier since this join is used a lot
create view planted as
select *
from (pots natural inner join holds) natural inner join plants
group by pot_id;

-- procedures
-- transaction procedures
delimiter //
-- transaction records a measurement for a station
create procedure take_measurement(m_station_id varchar(8), time timestamp, temp double, moist double, lighting double)
begin
	start transaction;
	set @id := concat(m_station_id, time);
	set @place := (select location from micro_weather_station where station_id = m_station_id);
    insert into measurements value (@id, m_station_id, @place, time, temp, moist, lighting);
	-- keep only 10 most recent
    delete from measurements
	where station_id = m_station_id and m_id not in (
		select m_id
		from (
			select m_id
			from measurements
            where station_id = m_station_id
			order by timestamp desc
			limit 10
        ) remaining
    );
    commit;
end //
-- transaction records log entry
create procedure record_log(r_pot_id varchar(8), time timestamp, feed double, watered double)
begin
	start transaction;
	set @id := concat(r_pot_id, time);
    set @place := (select location from (pots natural inner join containing) natural inner join tray where pot_id = r_pot_id); -- pot location
	set @station := (
		select station_id
		from (
			select station_id, st_distance(@place, location) as distance
            from micro_weather_station
            order by distance
            limit 1
			) station
        ); -- nearest station
    -- get measurements from nearest station
    select temperature, moisture, light into @temperature, @moisture, @light
	from micro_weather_station natural inner join measurements
	where station_id = @station
	order by timestamp desc
	limit 1;
    -- update tray timestamp
	set @n_tray := (select tray_id from containing where pot_id = r_pot_id);
    if @tray is not null then
		update tray
		set timestamp = CURRENT_TIMESTAMP
		where tray_id = @n_tray;
    end if;
    -- insert log entry
    insert into log_entry values (@id, r_pot_id, time, feed, watered, @temperature, @moisture, @light);
    commit;
end //
-- transactions inserting holds_data to generate entries
create procedure insert_holds(h_pot_id varchar(8), h_common_name varchar(45), h_planting_date date)
begin
	start transaction;
	set @germination_days := (select germination_days from plants where common_name = h_common_name);
    insert into holds_data(pot_id, common_name, planting_date, germination_days) values (h_pot_id, h_common_name, h_planting_date, @germination_days);
    commit;
end //
-- transaction for feeding & watering entire tray
create procedure tray_care(c_tray_id varchar(8), time timestamp, feed double, watered double)
begin
	declare i int default 0;
    declare n int default 0;
	start transaction;
    select count(pot_id) into n from (tray natural inner join containing) natural inner join pots where tray_id = c_tray_id;

    while i < n do
		set @pot := (select pot_id from (pots natural inner join containing) natural inner join tray where tray_id = c_tray_id limit i,1);
		call record_log(@pot, time, feed, watered);
		set i = i + 1;
    end while;
    
	commit;
end //
-- move a pot to a tray
create procedure move_pot(m_tray varchar(8), m_pot varchar(8))
begin
	declare n int default 0; -- number in tray
	start transaction;
    
    select count(pot_id) into n from containing where tray_id = m_tray;
    
    set @in_tray = (select count(tray_id) from containing where pot_id = m_pot);
    -- enforces limit of 12 pots to a tray
    if n >= 12 then
		rollback;
	else 
		if @in_tray >= 1 then
			set @old_tray = (select tray_id from containing where pot_id = m_pot);
            
			update containing
			set tray_id = m_tray
			where pot_id = m_pot;
            
            if @old_tray is not null then
				update tray
				set timestamp = CURRENT_TIMESTAMP
				where tray_id = @old_tray;
            end if;
        else
			insert into containing value (m_tray, m_pot);
        end if;
    end if;
    
    update tray
	set timestamp = CURRENT_TIMESTAMP
	where tray_id = m_tray;
    commit;
end //
-- removes pot from the tray it's currently in
create procedure remove_pot(m_pot varchar(8))
begin
	start transaction;
    set @t_tray := (select tray_id from containing where pot_id = m_pot);
    
    update tray
	set timestamp = CURRENT_TIMESTAMP
	where tray_id = @t_tray;
    
    delete from containing where pot_id = m_pot;
    commit;
end//

-- query procedures
-- List the unique common names of all the vegetables currently planted.
create procedure vegetables_planted()
begin
	select distinct common_name
	from planted
	where p_type = "vegetable";
end //
-- List the species name and number of varieties for each plant species for all the plants.
create procedure num_varieties()
begin
	select species, count(variety) as 'varieties'
	from plants
	group by species;
end //
-- Find the total number of pots currently holding a plant with a given common name.
create procedure pots_with(name varchar(45))
begin
	select count(pot_id) as "number planted"
	from planted
	where common_name = name;
end //
-- Find the histogram (value and count) of volumes of pots with germinated plants with a given common name.
create procedure volume_histogram(name varchar(45))
begin
	select volume, count(pot_id)
	from planted
	where common_name = name and age >= 0
	group by volume;
end //
-- Find the most populous species among the pots with germinated plants.
create procedure most_germinated()
begin
	select species
	from planted
	where age >= 0
	group by species
	order by count(species) desc
	limit 1;
end //
-- Find the oldest (in terms of current age) vegetable plant(s) among those that germinated during the previous month.
create procedure last_month_oldest()
begin
	set @oldest := (
	select age
	from planted p
	where p_type = "vegetable" and month(p.germination_date) = month(date_sub(current_date(), interval 1 month))
	order by age desc
	limit 1
	);
	-- accounts for multiple plants
	select *
	from planted p
	where age = @oldest and p_type = "vegetable" and month(p.germination_date) = month(date_sub(current_date(), interval 1 month));
end //
-- Find the germinated plant(s) that received the most daily water (averaged over their age).
create procedure most_daily_water()
begin
	set @water := (
		select (sum(water) / age) as daily_water
		from (pots natural inner join log_entry) natural inner join holds
		group by pot_id 
        order by daily_water desc
        limit 1);

	select pot_id, common_name, (sum(water) / age) as daily_water
	from (pots natural inner join log_entry) natural inner join holds
	group by pot_id
	having daily_water = @water;
end //
-- Find the number of planted herbs that received more food than the average amount of food received by the germinated vegetables.
create procedure food_much()
begin
	set @veg := (
		select count(pot_id)
        from planted
        where p_type = "vegetable" and age >= 0
	);
	set @avg := (
		select (sum(food)/@veg)
        from log_entry
        where pot_id in (
        select pot_id
        from planted
        where p_type = "vegetable" and age >= 0)
    );
    
    select count(distinct pot_id) as "number of herbs"
    from (
		select pot_id, sum(food) as total_food
		from pots natural inner join log_entry
        group by pot_id
        ) t_food natural inner join planted
        where p_type = "herb" and total_food > @avg;
end //
-- Find the germinated flowersthat received more dailyambient light in a given month than the previous month.
create procedure month_more_light(given_month int)
begin
	select pot_id, light_given as "light during given month", light_last as "light from month before"
	from (
		select pot_id, sum(light) as light_given
		from pots natural inner join log_entry
		where month(timestamp) = given_month
		group by pot_id
	) m1 natural join (
		select pot_id, sum(light) as light_last
		from pots natural inner join log_entry
		where month(timestamp) = given_month-1
		group by pot_id
	) m0 natural join planted
	where age > 0 and p_type = "flower" and light_given > light_last;
end //
delimiter //