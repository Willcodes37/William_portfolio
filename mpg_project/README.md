# MPG Analysis Project

## Project Overview
This project delves into vehicle fuel economy (measured in miles per gallon or MPG) to analyze trends and relationships between key vehicle attributes. Using data spanning from 1970 to 1982, the project uncovers insights such as:

- The relationship between horsepower and MPG.
- Comparative fuel economy trends by country of origin (Japan, Europe, USA).
- Temporal changes in vehicle fuel efficiency over the years.

The analysis leverages Python's data visualization and statistical tools to provide actionable insights and well-structured visuals.

## Features
- **Regression Analysis**: Visualizations illustrating correlations between horsepower and fuel economy.
- **Comparative Summaries**: Tables summarizing average MPG values by country of origin.
- **Historical Trends**: Plots showcasing how fuel economy evolved during the study period.
- **Custom Visualizations**: Data-driven graphics using Seaborn and Matplotlib for enhanced interpretability.

## Data
The dataset includes the following vehicle attributes:
- **Horsepower**: Engine power in units of horsepower.
- **Miles Per Gallon (MPG)**: A measure of fuel efficiency.
- **Country of Origin**: The manufacturing origin categorized as Japan, Europe, or USA.
- **Model Year**: The year the vehicle model was manufactured.

### Data Source
The dataset is a well-known resource for exploring automotive trends, typically derived from publicly available sources. Additional preprocessing steps were applied to clean and organize the data for analysis.

## Installation
To run this project, ensure you have the following software and dependencies installed:

1. **Python Version**: Python 3.8 or later.
2. **Required Libraries**: All required libraries are listed in the `requirements.txt` file.
   - **Pandas**: For data manipulation and analysis.
   - **Matplotlib**: For creating static, animated, and interactive visualizations.
   - **Seaborn**: For high-level interface for drawing attractive statistical graphics.

### Installation Steps
1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```
2. Navigate to the project directory:
   ```bash
   cd mpg-analysis
   ```
3. Install all dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Usage
This project is implemented in a Jupyter Notebook. Follow these steps to explore the analysis:

1. Launch the Jupyter Notebook:
   ```bash
   jupyter notebook mpg_project.ipynb
   ```
2. Run each cell sequentially to:
   - Load and preprocess the dataset.
   - Generate visualizations such as regression plots and trend lines.
   - View summary statistics and tabular results.
3. Explore the outputs, including:
   - Regression plots showing relationships between horsepower and MPG.
   - Tables summarizing MPG by country and year.
   - Time-series plots depicting changes in fuel economy.

## Results
### Key Insights
- **Horsepower vs. MPG**: Vehicles with higher horsepower exhibit lower MPG, indicating an inverse relationship between engine power and fuel efficiency.
- **Country Comparison**: During the study period:
  - Japan achieved the highest average MPG (30.45).
  - Europe followed with 27.89 MPG.
  - The USA had the lowest average MPG (20.08).
- **Temporal Trends**: MPG improved significantly over the years, reflecting advancements in automotive technology and regulations.

### Visual Examples
- **Regression Plot**: Illustrates the negative correlation between horsepower and MPG.
- **Bar Chart**: Compares average MPG across different countries.
- **Line Plot**: Depicts year-wise improvement in fuel efficiency.





