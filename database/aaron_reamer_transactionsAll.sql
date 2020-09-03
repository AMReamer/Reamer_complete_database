-- Aaron Reamer
USE PlantNursery;
insert into pots values ("abcdef13", 100, 20); -- loading new pot for demonstration purposes

set @station := "hijklm02"; -- example user input for when a station_id is requested
set @pot := "abcdef13"; -- example user input for when a pot_id is requested
set @tray := "fedcba00"; -- example user input for when tray_id is requested
set @tray_new_0 := "fedcba05"; -- example user input for when tray_id is requested for moving to a new tray
set @tray_new_1 := "fedcba03"; -- example user input for when tray_id is requested for moving to a full tray
set @plant := "red bell pepper"; -- example user input for when a plant common_name is requested
set @time := current_timestamp(); -- example optional user input for timestamp, defaults to current timestamp
set @date := current_date(); -- example optional user input for date, defaults to current date
set @temperature := 25; -- example input from user/weather station
set @moisture := 84; -- example input from user/weather station
set @light := 72.3; -- example input from user/weather station
set @food := 88; -- example input from user for when feeding
set @water := 75; -- example input from user for when watering 

-- all user inputs are assign to variables accordingly

-- sample select statements have been included to demonstrate transaction

-- place plant in a pot
select *
from holds
where pot_id = @pot;

call insert_holds(@pot, @plant, @date);

select *
from holds
where pot_id = @pot;

-- record new measurement
select *
from measurements
where station_id = @station;

call take_measurement(@station, @time, @temperature, @moisture, @light);

select *
from measurements
where station_id = @station;

-- record new individual log entry
select *
from log_entry
where pot_id = @pot;

call record_log(@pot, @time, @food, @water);

select *
from log_entry
where pot_id = @pot;

-- feed & water all pots in a tray
select *
from log_entry;

call tray_care(@tray, @time, @food, @water);

select *
from log_entry;

-- add pot to a tray
select *
from containing
where pot_id = @pot;

call move_pot(@tray, @pot);

select *
from containing
where pot_id = @pot;

-- change trays pot is in example
	-- pre-select not needed for demo, use lat output
call move_pot(@tray_new_0, @pot);

select *
from containing
where pot_id = @pot;

-- remove pot from tray
	-- pre-select not needed for demo, use lat output
call remove_pot(@pot);

select *
from containing
where pot_id = @pot;

-- pot not being added to full tray
call move_pot(@tray_new_0, @pot);
call move_pot(@tray_new_1, @pot);

select *
from containing
where pot_id = @pot;
