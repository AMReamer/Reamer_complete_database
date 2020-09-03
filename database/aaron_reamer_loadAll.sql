-- Aaron Reamer
USE PlantNursery;
SET SQL_SAFE_UPDATES = 0;

-- Example data is not intended to be accurately based on real world information and serves only to test database functionality and give a variety of inputs.
-- All measurements exist to fill the data for testing and are not intended to exactly replicte real imserions

-- clear entries
delete from plants;
delete from pots;
delete from log_entry;
delete from tray;
delete from micro_weather_station;
delete from measurements;
delete from holds_data;
delete from containing;

-- plants
insert into plants values ("green bell pepper", "Capsicum annuum", "green", "vegetable", "annual", 21, 85, 2, 25, 108, 25.2, "a green pepper");
insert into plants values ("red bell pepper", "Capsicum annuum", "red", "vegetable", "annual", 21, 85, 2, 25, 102, 23.7, "a red pepper");
insert into plants values ("piranha plant", "Malus mordus", "regular", "flower", "perennial", 2, 1, 60, 22, 98, 19.8, "taste for plumbers");
insert into plants values ("petey piranha plant", "Malus mordus", "boss", "flower", "perennial", 3, 1, 66, 24, 88, 15.2, "evil");
insert into plants values ("plant of knowledge", "Magnoliophyta viva", "knowledge", "herb", "annual", 360, 200.3, 25.2, 23, 102, 33.6, "don't eat it");
insert into plants values ("plant of life", "Magnoliophyta viva", "life", "herb", "annual", 360, 200.4, 26.7, 21, 108, 66.3, "don't eat this one either");
insert into plants values ("english ivy", "Hedera helix", "english", "herb", "perrenial", 20, 18, 16, 18, 99, 88.7, "some common ivy");
insert into plants values ("scp-307", "Hedera helix", "keter", "herb", "perrenial", 20, 25, 52, 17, 98, 66.6, "some dangerous ivy");
insert into plants values ("2d video game plant", "Ludus ametus", "2d", "flower", "1", 16, 11, 15, 22.3, 110, 101, "an overused asset");
insert into plants values ("3d video game plant ", "Ludus ametus", "3d", "flower", "1", 12, 15, 18, 33.1, 101, 111, "a used asset");
insert into plants values ("bigfoot plant", "Mystos cryptum", "bigfoot", "vegetable", "annual", 236, 13, 20, 22, 44, 20, "it makes pictures blurry");
insert into plants values ("monster plant", "Mystos cryptum", "monster", "vegetable", "annual", 236, 15, 18, 33, 15, 12, "some say it's not real");

-- pots
-- group 1
insert into pots values ("abcdef00", 7, 7);
insert into pots values ("abcdef01", 7, 7);
insert into pots values ("abcdef02", 7, 7);
insert into pots values ("abcdef03", 7, 7);
insert into pots values ("abcdef04", 7, 7);
insert into pots values ("abcdef05", 7, 7);
insert into pots values ("abcdef06", 7, 7);
insert into pots values ("abcdef07", 7, 7);
insert into pots values ("abcdef08", 7, 7);
insert into pots values ("abcdef09", 7, 7);
insert into pots values ("abcdef10", 7, 7);
insert into pots values ("abcdef11", 7, 7);
insert into pots values ("abcdef12", 7, 7);
-- group 2
insert into pots values ("bbcdef00", 7, 12);
insert into pots values ("bbcdef01", 7, 12);
insert into pots values ("bbcdef02", 7, 12);
insert into pots values ("bbcdef03", 7, 12);
insert into pots values ("bbcdef04", 7, 12);
insert into pots values ("bbcdef05", 7, 12);
insert into pots values ("bbcdef06", 7, 12);
insert into pots values ("bbcdef07", 7, 12);
insert into pots values ("bbcdef08", 7, 12);
insert into pots values ("bbcdef09", 7, 12);
insert into pots values ("bbcdef10", 7, 12);
insert into pots values ("bbcdef11", 7, 12);
-- group 3
insert into pots values ("cbcdef00", 15, 8);
insert into pots values ("cbcdef01", 15, 8);
insert into pots values ("cbcdef02", 15, 8);
insert into pots values ("cbcdef03", 15, 8);
insert into pots values ("cbcdef04", 15, 8);
insert into pots values ("cbcdef05", 15, 8);
insert into pots values ("cbcdef06", 15, 8);
insert into pots values ("cbcdef07", 15, 8);
insert into pots values ("cbcdef08", 15, 8);
insert into pots values ("cbcdef09", 15, 8);
insert into pots values ("cbcdef10", 15, 8);
insert into pots values ("cbcdef11", 15, 8);
-- group 4
insert into pots values ("dbcdef00", 25, 14);
insert into pots values ("dbcdef01", 25, 14);

-- holds
-- group 1-1
call insert_holds("abcdef00", "green bell pepper", "2019-04-02");
call insert_holds("abcdef01", "green bell pepper", "2019-04-02");
call insert_holds("abcdef02", "green bell pepper", "2019-04-03");
call insert_holds("abcdef03", "green bell pepper", "2019-04-04");
call insert_holds("abcdef04", "green bell pepper", "2019-04-05");
call insert_holds("abcdef05", "green bell pepper", "2019-04-05");
-- group 1-2
call insert_holds("abcdef06", "red bell pepper", "2019-03-06");
call insert_holds("abcdef07", "red bell pepper", "2019-03-06");
call insert_holds("abcdef08", "red bell pepper", "2019-03-06");
call insert_holds("abcdef09", "red bell pepper", "2019-03-06");
call insert_holds("abcdef10", "red bell pepper", "2019-03-06");
call insert_holds("abcdef11", "red bell pepper", "2019-03-06");
call insert_holds("abcdef12", "red bell pepper", "2019-03-06");

-- group 2-1
call insert_holds("bbcdef00", "plant of knowledge", "2018-03-06");
call insert_holds("bbcdef01", "plant of knowledge", "2018-03-06");
call insert_holds("bbcdef02", "plant of knowledge", "2018-03-06");
call insert_holds("bbcdef03", "plant of knowledge", "2018-03-06");
call insert_holds("bbcdef04", "plant of knowledge", "2018-03-06");
call insert_holds("bbcdef05", "plant of knowledge", "2018-03-06");
-- group 2-2
call insert_holds("bbcdef06", "plant of life", "2018-03-06");
call insert_holds("bbcdef07", "plant of life", "2018-03-06");
call insert_holds("bbcdef08", "plant of life", "2018-03-06");
call insert_holds("bbcdef09", "plant of life", "2018-03-06");
call insert_holds("bbcdef10", "plant of life", "2018-03-06");
call insert_holds("bbcdef11", "plant of life", "2018-03-06");
-- group 3
call insert_holds("cbcdef00", "monster plant", "2019-04-30");
call insert_holds("cbcdef01", "monster plant", "2019-04-30");
call insert_holds("cbcdef02", "monster plant", "2019-04-30");
call insert_holds("cbcdef03", "monster plant", "2019-04-30");
call insert_holds("cbcdef04", "monster plant", "2019-04-30");
call insert_holds("cbcdef05", "monster plant", "2019-04-30");
call insert_holds("cbcdef06", "monster plant", "2019-04-30");
call insert_holds("cbcdef07", "monster plant", "2019-04-30");
call insert_holds("cbcdef08", "monster plant", "2019-04-30");
call insert_holds("cbcdef09", "monster plant", "2019-04-30");
call insert_holds("cbcdef10", "monster plant", "2019-04-30");
call insert_holds("cbcdef11", "monster plant", "2019-04-30");
-- group 4
call insert_holds("dbcdef00", "piranha plant", "2019-02-27");
call insert_holds("dbcdef01", "piranha plant", "2019-02-27");

-- trays
insert into tray value ("fedcba00", point(0,0), "2019-04-12 10:59:58");
insert into tray value ("fedcba01", point(50,25), "2019-04-12 10:59:58");
insert into tray value ("fedcba02", point(25,50), "2019-04-12 10:59:58");
insert into tray value ("fedcba03", point(12,0), "2019-04-12 10:59:58");
insert into tray value ("fedcba04", point(0,18), "2019-04-12 10:59:58");
insert into tray value ("fedcba05", point(40,36), "2019-04-12 10:59:58");

-- weather stations
insert into micro_weather_station value ("hijklm00", point(2,18));
insert into micro_weather_station value ("hijklm01", point(21,45));
insert into micro_weather_station value ("hijklm02", point(65,31));
insert into micro_weather_station value ("hijklm03", point(42,30));

-- containing
-- group 1-1
insert into containing value ("fedcba00", "abcdef00");
insert into containing value ("fedcba00", "abcdef01");
insert into containing value ("fedcba00", "abcdef02");
insert into containing value ("fedcba00", "abcdef03");
insert into containing value ("fedcba00", "abcdef04");
insert into containing value ("fedcba00", "abcdef05");
-- group 1-2
insert into containing value ("fedcba01", "abcdef06");
insert into containing value ("fedcba01", "abcdef07");
insert into containing value ("fedcba01", "abcdef08");
insert into containing value ("fedcba01", "abcdef09");
insert into containing value ("fedcba01", "abcdef10");
insert into containing value ("fedcba01", "abcdef11");
insert into containing value ("fedcba01", "abcdef12");
-- group 2
insert into containing value ("fedcba02", "bbcdef00");
insert into containing value ("fedcba02", "bbcdef01");
insert into containing value ("fedcba02", "bbcdef02");
insert into containing value ("fedcba02", "bbcdef03");
insert into containing value ("fedcba02", "bbcdef04");
insert into containing value ("fedcba02", "bbcdef05");
insert into containing value ("fedcba02", "bbcdef06");
insert into containing value ("fedcba02", "bbcdef07");
insert into containing value ("fedcba02", "bbcdef08");
insert into containing value ("fedcba02", "bbcdef09");
insert into containing value ("fedcba02", "bbcdef10");
insert into containing value ("fedcba02", "bbcdef11");
-- group 3
insert into containing value ("fedcba03", "cbcdef00");
insert into containing value ("fedcba03", "cbcdef01");
insert into containing value ("fedcba03", "cbcdef02");
insert into containing value ("fedcba03", "cbcdef03");
insert into containing value ("fedcba03", "cbcdef04");
insert into containing value ("fedcba03", "cbcdef05");
insert into containing value ("fedcba03", "cbcdef06");
insert into containing value ("fedcba03", "cbcdef07");
insert into containing value ("fedcba03", "cbcdef08");
insert into containing value ("fedcba03", "cbcdef09");
insert into containing value ("fedcba03", "cbcdef10");
insert into containing value ("fedcba03", "cbcdef11");
-- group 4-1
insert into containing value ("fedcba04", "dbcdef00");
-- group 4-2
insert into containing value ("fedcba05", "dbcdef01");

-- measurements
-- 00
call take_measurement("hijklm00","2019-04-23 10:59:58", 25, 100, 28);
call take_measurement("hijklm00","2019-04-24 10:59:58", 25, 100, 28);
call take_measurement("hijklm00","2019-04-25 10:59:58", 25, 100, 28);
call take_measurement("hijklm00","2019-04-26 10:59:58", 25, 100, 28);
call take_measurement("hijklm00","2019-04-27 10:59:58", 25, 100, 28);
call take_measurement("hijklm00","2019-04-28 10:59:58", 25, 100, 28);
call take_measurement("hijklm00","2019-04-29 10:59:58", 25, 100, 28);
call take_measurement("hijklm00","2019-04-30 10:59:58", 25, 100, 28);
call take_measurement("hijklm00","2019-04-30 11:59:58", 25, 100, 28);
call take_measurement("hijklm00","2019-05-01 10:59:58", 25, 100, 90);
-- 01
call take_measurement("hijklm01","2019-04-23 10:59:58", 25, 100, 28);
call take_measurement("hijklm01","2019-04-24 10:59:58", 25, 100, 28);
call take_measurement("hijklm01","2019-04-25 10:59:58", 25, 100, 28);
call take_measurement("hijklm01","2019-04-26 10:59:58", 25, 100, 28);
call take_measurement("hijklm01","2019-04-27 10:59:58", 25, 100, 28);
call take_measurement("hijklm01","2019-04-28 10:59:58", 25, 100, 28);
call take_measurement("hijklm01","2019-04-29 10:59:58", 25, 100, 28);
call take_measurement("hijklm01","2019-04-30 10:59:58", 25, 100, 28);
call take_measurement("hijklm01","2019-04-30 11:59:58", 25, 100, 28);
call take_measurement("hijklm01","2019-05-01 10:59:58", 25, 100, 28);
-- 02
call take_measurement("hijklm02","2019-04-23 10:59:58", 25, 100, 28);
call take_measurement("hijklm02","2019-04-24 10:59:58", 25, 100, 28);
call take_measurement("hijklm02","2019-04-25 10:59:58", 25, 100, 28);
call take_measurement("hijklm02","2019-04-26 10:59:58", 25, 100, 28);
call take_measurement("hijklm02","2019-04-27 10:59:58", 25, 100, 28);
call take_measurement("hijklm02","2019-04-28 10:59:58", 25, 100, 28);
call take_measurement("hijklm02","2019-04-29 10:59:58", 25, 100, 28);
call take_measurement("hijklm02","2019-04-30 10:59:58", 25, 100, 28);
call take_measurement("hijklm02","2019-04-30 11:59:58", 25, 100, 28);
call take_measurement("hijklm02","2019-05-01 10:59:58", 25, 100, 28);
-- 03
call take_measurement("hijklm03","2019-04-22 10:59:58", 25, 100, 28);
call take_measurement("hijklm03","2019-04-23 10:59:58", 25, 100, 28);
call take_measurement("hijklm03","2019-04-24 10:59:58", 25, 100, 28);
call take_measurement("hijklm03","2019-04-25 10:59:58", 25, 100, 28);
call take_measurement("hijklm03","2019-04-26 10:59:58", 25, 100, 28);
call take_measurement("hijklm03","2019-04-27 10:59:58", 25, 100, 28);
call take_measurement("hijklm03","2019-04-28 10:59:58", 25, 100, 28);
call take_measurement("hijklm03","2019-04-29 10:59:58", 25, 100, 28);
call take_measurement("hijklm03","2019-04-30 10:59:58", 25, 100, 28);
call take_measurement("hijklm03","2019-04-30 11:59:58", 25, 100, 28);
call take_measurement("hijklm03","2019-05-01 10:59:58", 25, 100, 28);

-- log entries
-- tray 00
call tray_care("fedcba00", "2019-04-19 13:59:58", 5, 100);
call tray_care("fedcba00", "2019-04-20 13:59:58", 5, 100);
call tray_care("fedcba00", "2019-04-21 13:59:58", 5, 100);
call tray_care("fedcba00", "2019-04-22 13:59:58", 5, 100);
call tray_care("fedcba00", "2019-04-23 13:59:58", 5, 100);
call tray_care("fedcba00", "2019-04-24 13:59:58", 5, 100);
call tray_care("fedcba00", "2019-04-25 13:59:58", 5, 100);
call tray_care("fedcba00", "2019-04-26 13:59:58", 5, 100);
call tray_care("fedcba00", "2019-04-27 13:59:58", 5, 100);
call tray_care("fedcba00", "2019-04-28 13:59:58", 5, 100);
call tray_care("fedcba00", "2019-04-29 13:59:58", 5, 100);
call tray_care("fedcba00", "2019-04-30 13:59:58", 5, 100);
call tray_care("fedcba00", "2019-05-01 13:59:58", 5, 100);
-- tray 01
call tray_care("fedcba01", "2019-04-19 13:59:58", 5, 100);
call tray_care("fedcba01", "2019-04-20 13:59:58", 5, 100);
call tray_care("fedcba01", "2019-04-21 13:59:58", 5, 100);
call tray_care("fedcba01", "2019-04-22 13:59:58", 5, 100);
call tray_care("fedcba01", "2019-04-23 13:59:58", 5, 100);
call tray_care("fedcba01", "2019-04-24 13:59:58", 5, 100);
call tray_care("fedcba01", "2019-04-25 13:59:58", 5, 100);
call tray_care("fedcba01", "2019-04-26 13:59:58", 5, 100);
call tray_care("fedcba01", "2019-04-27 13:59:58", 5, 100);
call tray_care("fedcba01", "2019-04-28 13:59:58", 5, 100);
call tray_care("fedcba01", "2019-04-29 13:59:58", 5, 100);
call tray_care("fedcba01", "2019-04-30 13:59:58", 5, 100);
call tray_care("fedcba01", "2019-05-01 13:59:58", 5, 100);
-- tray 02
call tray_care("fedcba02", "2019-02-01 13:59:58", 100, 10);
call tray_care("fedcba02", "2019-02-08 13:59:58", 100, 10);
call tray_care("fedcba02", "2019-02-15 13:59:58", 100, 10);
call tray_care("fedcba02", "2019-02-22 13:59:58", 100, 10);
call tray_care("fedcba02", "2019-03-01 13:59:58", 100, 10);
call tray_care("fedcba02", "2019-03-08 13:59:58", 100, 10);
call tray_care("fedcba02", "2019-03-15 13:59:58", 100, 10);
call tray_care("fedcba02", "2019-03-22 13:59:58", 100, 10);
call tray_care("fedcba02", "2019-03-29 13:59:58", 100, 10);
call tray_care("fedcba02", "2019-04-05 13:59:58", 100, 10);
call tray_care("fedcba02", "2019-04-12 13:59:58", 100, 10);
call tray_care("fedcba02", "2019-04-19 13:59:58", 100, 10);
call tray_care("fedcba02", "2019-04-26 13:59:58", 100, 10);
call tray_care("fedcba02", "2019-05-03 13:59:58", 100, 10);
-- tray 03
call tray_care("fedcba03", "2019-05-01 13:59:58", 10, 5);
-- tray 04
call tray_care("fedcba04", "2019-04-30 13:59:58", 1, 1);
call tray_care("fedcba04", "2019-05-01 13:59:58", 1, 1);
-- tray 05
call tray_care("fedcba05", "2019-04-30 13:59:58", 1, 1);
call tray_care("fedcba05", "2019-05-01 13:59:58", 1, 1);
call tray_care("fedcba05", "2019-05-02 13:59:58", 1, 1);
