-- Aaron Reamer
USE PlantNursery;
-- user inputs used 
set @c_name := "green bell pepper"; -- example user input for inputs that use common_name
set @month := 5; -- example optional user input for inputs that request a month, May is best month for example data

-- all user inputs are assign to variables accordingly

-- List the unique common names of all the vegetables currently planted.
call vegetables_planted();
-- List the species name and number of varieties for each plant species for all the plants.
call num_varieties();
-- Find the total number of pots currently holding a plant with a given common name.
call pots_with(@c_name); -- uses common name input
-- Find the histogram (value and count) of volumes of pots with germinated plants with a given common name.
call volume_histogram(@c_name); -- uses common name input
-- Find the most populous species among the pots with germinated plants.
call most_germinated();
-- Find the oldest (in terms of current age) vegetable plant(s) among those that germinated during the previous month.
call last_month_oldest();
-- Find the germinated plant(s) that received the most daily water (averaged over their age).
call most_daily_water();
-- Find the number of planted herbs that received more food than the average amount of food received by the germinated vegetables.
call food_much();
-- Find the germinated flowersthat received more dailyambient light in a given month than the previous month.
call month_more_light(@month);