create schema cars;
use cars;

-- READ DATA --
select * from car_dekho;
-- Total Cars: To get a count of total records--
select count(*) from car_dekho;

-- The Manager asked the employee how many cars will be available in 2023?--
select count(*) from car_dekho where year = 2023;

-- The Manager asked the employee how many cars is available in 2020,2021,2022--
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7

-- GROUP BY --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- Client asked me to print the total of all cars by year. I don't see all the details --
select year, count(*) from car_dekho group by year;

-- Client asked to car dealer agent how many diesel cars will there be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";

-- Client requested a car dealer agent how many petrol cars will there be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "Petrol";

-- The manager told the employee to give a print all the fuel cars (Petrol, Diesel and CNG) come by all year --
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- Manager said there where more than 100 cars in a given year, which year had more than 100 cars?--
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)<50;

-- The manager said to the employee all cars count details between 2015 and 2023; we need a complete list --
select count(*) from car_dekho where year between 2015 and 2023;

-- The manager said to the employee all car details between 2015 and 2023 we need complete list --
select * from car_dekho where year between 2015 and 2023;

-- END -- 








