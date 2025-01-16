# US Household Income (Data Cleaning)


SELECT * 
FROM us_project.us_household_income;


SELECT * 
FROM us_project.us_household_income_statistics;


SELECT COUNT(id)
FROM us_project.us_household_income;


SELECT COUNT(id)
FROM us_project.us_household_income_statistics;




# Change colume name from `ï»¿id` TO `id` in us_project.us_household_income_statistics table

ALTER TABLE us_project.us_household_income_statistics RENAME COLUMN `ï»¿id` TO `id`;




# Find the duplicates rows in "us_project.us_household_income" table

SELECT ID, COUNT(id)
FROM us_project.us_household_income
GROUP BY ID
HAVING COUNT(id) > 1;



# Delete the duplicate rows in "us_project.us_household_income" table

DELETE FROM us_project.us_household_income
WHERE row_id IN (
	SELECT row_id
	FROM (
		SELECT row_id, id,
		ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID) AS row_num
		FROM us_project.us_household_income) duplicates
		WHERE row_num > 1);





SELECT DISTINCT(State_Name)
FROM us_household_income;


# Changed the incorrect spelling of 'georia' to 'Georgia'

UPDATE us_household_income 
SET State_Name = 'Georgia'
WHERE State_Name = 'georia';



# Finding blank values in the place column from the "us_project.us_household_income" table

SELECT *
FROM us_project.us_household_income
WHERE Place = '';



# Changed blank vlaue in the place column to 'Autaugaville'

UPDATE us_household_income
SET Place = 'Autaugaville'
WHERE County = 'Autauga County'
AND City = 'Vinemont';



# Count distinct Type

SELECT Type, COUNT(Type)
FROM us_household_income
GROUP BY Type;



# Changed 'Boroughs' to 'Borough' in the Type Column

UPDATE us_project.us_household_income 
SET Type = 'Borough'
WHERE Type = 'Boroughs';



SELECT *
FROM us_project.us_household_income 
WHERE (Aland = 0 OR Aland = '' OR Aland IS NULL)
AND (AWater = 0 OR AWater = '' OR AWater IS NULL)
