# World Life Expectancy Project (Data Cleaning)

SELECT *
FROM world_life_expectancy;


# Find the duplicate rows

SELECT Country, Year, CONCAT(Country,Year), COUNT(CONCAT(Country,Year))
FROM world_life_expectancy
GROUP BY Country, Year, CONCAT(Country,Year)
HAVING COUNT(CONCAT(Country,Year)) > 1; 



SELECT *
FROM (
	SELECT Row_ID,
	CONCAT(Country,Year),
	ROW_NUMBER() OVER(PARTITION BY CONCAT(Country,Year) ORDER BY CONCAT(Country,Year)) AS Row_Num
	FROM world_life_expectancy
	) AS Row_of_table
WHERE Row_Num > 1;


# Delete Rows with duplicates

DELETE FROM  world_life_expectancy
WHERE Row_ID IN (
	SELECT Row_ID
	FROM (
		SELECT Row_ID,
		CONCAT(Country,Year),
		ROW_NUMBER() OVER(PARTITION BY CONCAT(Country,Year) ORDER BY CONCAT(Country,Year)) AS Row_Num
		FROM world_life_expectancy
		) AS Row_of_table
	WHERE Row_Num > 1
);




# Find Blank values in "Status" Column

SELECT *
FROM world_life_expectancy
WHERE Status = '';


# Find NULL values in "Status" Column

SELECT *
FROM world_life_expectancy
WHERE Status IS NULL;


# Find DISTINCT values in "Status" Column

SELECT DISTINCT(Status)
FROM world_life_expectancy
WHERE Status <> '';




# Find Countries with status developed and developing

SELECT DISTINCT(Country)
FROM world_life_expectancy
WHERE Status = 'Developed';


SELECT DISTINCT(Country)
FROM world_life_expectancy
WHERE Status = 'Developing';




# Filling rows with missing status with (developed or developing)

UPDATE world_life_expectancy w1
JOIN world_life_expectancy w2
	ON w1.Country = w2.Country
SET w1.Status = 'Developing'
WHERE w1.Status = ''
AND w2.Status <> ''
AND w2.Status = 'Developing';


UPDATE world_life_expectancy w1
JOIN world_life_expectancy w2
	ON w1.Country = w2.Country
SET w1.Status = 'Developed'
WHERE w1.Status = ''
AND w2.Status <> ''
AND w2.Status = 'Developed';




# Find Blank and NULL values in "Life expectancy" Column

SELECT *
FROM world_life_expectancy
WHERE `Life expectancy` = '' OR `Life expectancy` IS NULL;


# Finding the average of the previous and next year in the "Life expectancy" column

SELECT w1.Country, w1.Year, w1.`Life expectancy`,
w2.Country, w2.Year, w2.`Life expectancy`,
w3.Country, w3.Year, w3.`Life expectancy`,
ROUND((w2.`Life expectancy` + w3.`Life expectancy`)/2,1)
FROM world_life_expectancy w1
JOIN world_life_expectancy w2
	ON w1.Country = w2.Country
    AND w1.Year = w2.Year-1
JOIN world_life_expectancy w3
	ON w1.Country = w3.Country
    AND w1.Year = w3.Year+1
WHERE w1.`Life expectancy` = '';



# Filling blanks in the "Life expectancy" column with the average of the previous and next year

UPDATE world_life_expectancy w1
JOIN world_life_expectancy w2
	ON w1.Country = w2.Country
    AND w1.Year = w2.Year-1
JOIN world_life_expectancy w3
	ON w1.Country = w3.Country
    AND w1.Year = w3.Year+1
SET w1.`Life expectancy` = ROUND((w2.`Life expectancy` + w3.`Life expectancy`)/2,1)
WHERE w1.`Life expectancy` = '';


SELECT *
FROM world_life_expectancy;