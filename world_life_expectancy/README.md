# World Life Expectancy Analysis Project

## Project Overview
This project aims to analyze life expectancy data across various countries over multiple years. The analysis focuses on understanding global trends, identifying key factors influencing life expectancy, and providing insights into disparities between developed and developing nations.

## Files Included

1. **`world_life_expectancy_project (Exploratory Analysis).sql`**
   - Contains SQL queries for exploratory data analysis (EDA).
   - Tasks performed:
     - Finding minimum and maximum life expectancy for each country.
     - Calculating average life expectancy per year.
     - Identifying trends and variations in life expectancy.

2. **`world_life_expectancy_project (cleaning).sql`**
   - Contains SQL queries for data cleaning.
   - Tasks performed:
     - Detecting and handling duplicate rows.
     - Resolving inconsistencies in the dataset.
     - Preparing the data for analysis.

3. **`WorldLifeExpectancy.csv`**
   - The raw dataset used for analysis.
   - Key columns:
     - `Country`: Name of the country.
     - `Year`: Year of data collection.
     - `Status`: Development status (Developing/Developed).
     - `Life expectancy`: Average life expectancy (years).
     - `Adult Mortality`, `infant deaths`, `percentage expenditure`, and other health-related indicators.
   - Note: Contains some missing values in `Life expectancy` and `Status` columns.

## Tools and Technologies Used
- **SQL**: For data cleaning and exploratory analysis.
- **Python (Optional)**: For advanced data manipulation and visualization.
- **Pandas**: For handling the CSV dataset.

## Steps to Reproduce
1. **Data Cleaning**:
   - Use the queries in `world_life_expectancy_project (cleaning).sql` to clean the dataset.
   - Detect and handle duplicates, and prepare the data for analysis.

2. **Exploratory Analysis**:
   - Use the queries in `world_life_expectancy_project (Exploratory Analysis).sql` to analyze trends and patterns.
   - Focus on key metrics such as life expectancy trends, disparities between countries, and annual improvements.

3. **Visualization (Optional)**:
   - Load the cleaned dataset into Python using Pandas.
   - Create visualizations using libraries like Matplotlib or Seaborn to further explore trends.

## Key Insights
- **Global Trends**: Analysis reveals life expectancy trends over time and highlights disparities between developed and developing countries.
- **Factors Influencing Life Expectancy**: Variables such as GDP, schooling, and healthcare indicators significantly impact life expectancy.
- **Regional Disparities**: Developing nations often show lower life expectancy compared to developed nations, with significant variations.

## Potential Improvements
- Address missing values in the dataset using imputation techniques.
- Enhance the dataset by incorporating additional variables (e.g., population density, healthcare expenditure).
- Perform predictive modeling to forecast future trends in life expectancy.


