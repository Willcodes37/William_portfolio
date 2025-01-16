# World Life Expectancy Project (Exploratory Analysis)


SELECT *
FROM world_life_expectancy;



# Max and Min life expectancy per Country

SELECT Country, MIN(`Life expectancy`), MAX(`Life expectancy`),
ROUND(MAX(`Life expectancy`) - MIN(`Life expectancy`),2) AS Life_increase
FROM world_life_expectancy
GROUP BY Country
HAVING MIN(`Life expectancy`) <> 0
AND MAX(`Life expectancy`) <> 0
ORDER BY Life_increase DESC;



# Average life expectancy per Year

SELECT Year, ROUND(AVG(`Life expectancy`),2)
FROM world_life_expectancy
GROUP BY Year;



# Average life expectancy and  GDP per Country

SELECT Country, ROUND(AVG(`Life expectancy`),1) AS Average_Life_Expectancy, ROUND(AVG(GDP)) AS Average_GDP
FROM world_life_expectancy
GROUP BY Country
HAVING Average_Life_Expectancy > 0
AND Average_GDP > 0
ORDER BY Average_GDP;




# Average life expectancy of high and low end of GDP 

SELECT 
	SUM(CASE WHEN GDP >= 1500 THEN 1 ELSE 0 END) HIGH_GDP_Count,
    ROUND(AVG(CASE WHEN GDP >= 1500 THEN `Life expectancy` ELSE NULL END)) HIGH_GDP_Life_Expectancy,
    SUM(CASE WHEN GDP <= 1500 THEN 1 ELSE 0 END) LOW_GDP_Count,
    ROUND(AVG(CASE WHEN GDP <= 1500 THEN `Life expectancy` ELSE NULL END)) LOW_GDP_Life_Expectancy
FROM world_life_expectancy;




# Count number of developed and developing Countries and their average life expectancy

SELECT Status, COUNT(DISTINCT Country) AS num_of_countries, ROUND(AVG(`Life expectancy`)) AS Average_Life_Expectancy
FROM world_life_expectancy
GROUP BY Status
HAVING Average_Life_Expectancy > 0;




# Average life expectancy and  BMI per Country

SELECT Country, ROUND(AVG(`Life expectancy`)) AS Average_Life_Expectancy, ROUND(AVG(BMI)) AS Average_BMI
FROM world_life_expectancy
GROUP BY Country
HAVING Average_Life_Expectancy > 0
AND Average_BMI > 0
ORDER BY Average_BMI;




# Running total of Adult Mortality ordered by year

SELECT Country, Year, `Life expectancy`, `Adult Mortality`,
SUM(`Adult Mortality`) OVER (PARTITION BY Country ORDER BY Year) AS running_total_adult_mortality
FROM world_life_expectancy;





