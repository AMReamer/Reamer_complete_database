-- Aaron Reamer
USE PlantNursery;
SET SQL_SAFE_UPDATES = 0;
-- drops all views
drop view if exists planted;
drop view if exists holds;
-- drops all tables
drop table if exists holds_data;
drop table if exists containing;
drop table if exists plants;
drop table if exists log_entry;
drop table if exists tray;
drop table if exists measurements;
drop table if exists micro_weather_station;
drop table if exists pots;
-- drops all procedures
drop procedure if exists take_measurement;
drop procedure if exists record_log;
drop procedure if exists insert_holds;
drop procedure if exists tray_care;
drop procedure if exists move_pot;
drop procedure if exists remove_pot;
drop procedure if exists vegetables_planted;
drop procedure if exists num_varieties;
drop procedure if exists pots_with;
drop procedure if exists volume_histogram;
drop procedure if exists most_germinated;
drop procedure if exists last_month_oldest;
drop procedure if exists most_daily_water;
drop procedure if exists food_much;
drop procedure if exists month_more_light;

-- drop database
drop database if exists PlantNursery;