# US household income Exploratory Analysis


SELECT * 
FROM us_household_income;


SELECT * 
FROM us_household_income_statistics;


# Top Ten states per area of land 

SELECT State_name, SUM(ALand), SUM(AWater)
FROM us_household_income
GROUP BY State_name 
ORDER BY  SUM(ALand) DESC
LIMIT 10;


# Top Ten states per area of water

SELECT State_name, SUM(ALand), SUM(AWater)
FROM us_household_income
GROUP BY State_name 
ORDER BY  SUM(AWater) DESC
LIMIT 10;



SELECT *
FROM us_household_income ui
INNER JOIN us_household_income_statistics uis
	ON ui.id = uis.id
WHERE mean <> 0;



SELECT ui.State_name, County, Type, `Primary`, Mean, Median
FROM us_household_income ui
INNER JOIN us_household_income_statistics uis
	ON ui.id = uis.id
WHERE mean <> 0;



# Top Ten states by average income

SELECT ui.State_name, ROUND(AVG(Mean)), ROUND(AVG(Median))
FROM us_household_income ui
INNER JOIN us_household_income_statistics uis
	ON ui.id = uis.id 
WHERE mean <> 0
GROUP BY ui.State_name
ORDER BY 2 DESC
LIMIT 10;




# Top Ten states by average median income

SELECT ui.State_name, ROUND(AVG(Mean)), ROUND(AVG(Median))
FROM us_household_income ui
INNER JOIN us_household_income_statistics uis
	ON ui.id = uis.id 
WHERE mean <> 0
GROUP BY ui.State_name
ORDER BY 3 DESC
LIMIT 10;


# Top ten 'Type' by average median income

SELECT Type, ROUND(AVG(Mean)), ROUND(AVG(Median))
FROM us_household_income ui
INNER JOIN us_household_income_statistics uis
	ON ui.id = uis.id 
WHERE mean <> 0
GROUP BY Type
ORDER BY 3 DESC
LIMIT 10;



# Top ten 'Type' by average income

SELECT Type, ROUND(AVG(Mean)), ROUND(AVG(Median))
FROM us_household_income ui
INNER JOIN us_household_income_statistics uis
	ON ui.id = uis.id 
WHERE mean <> 0
GROUP BY Type
ORDER BY 2 DESC
LIMIT 10;


# Count of Type

SELECT Type, COUNT(Type), ROUND(AVG(Mean)), ROUND(AVG(Median))
FROM us_household_income ui
INNER JOIN us_household_income_statistics uis
	ON ui.id = uis.id 
WHERE mean <> 0
GROUP BY Type
ORDER BY 3 DESC;




SELECT ui.state_name, City, ROUND(AVG(Mean)), ROUND(AVG(Median))
FROM us_household_income ui
INNER JOIN us_household_income_statistics uis
	ON ui.id = uis.id 
WHERE mean <> 0
GROUP BY State_name, City
ORDER BY 3 DESC;

