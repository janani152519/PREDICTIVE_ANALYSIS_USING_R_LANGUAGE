🌦️ Weather Data Analysis using R

This project performs basic statistical analysis and visualization on a weather dataset using R programming.
The analysis focuses on temperature trends, humidity–rainfall relationships, and regression modeling, followed by a clear graphical report.

📁 Dataset Description

The dataset contains 15 days of weather data with the following variables:

Column	Description
day	Day number (1–15)
temperature	Daily temperature (°C)
humidity	Daily humidity (%)
rainfall	Daily rainfall (mm)
📌 Objectives

Identify the hottest and coldest day

Analyze the relationship between humidity and rainfall

Perform regression analysis

Visualize weather data using a bar chart

🔥 1. Hottest and Coldest Day Analysis

Finds the minimum and maximum temperature

Identifies the corresponding day numbers

Helps understand temperature extremes in the given period

Methods used:

min()

max()

Logical indexing

💧 2. Humidity vs Rainfall Relationship

Uses Linear Regression to study how humidity affects rainfall

Scatter plot with a regression line

Predicts rainfall values based on humidity

Model:

lm(rainfall ~ humidity)


Visualization includes:

Scatter plot

Regression line

Predicted values

📊 3. Regression Analysis (Multiple Variables)

Predicts day using:

Temperature

Humidity

Rainfall

Uses Multiple Linear Regression

Displays statistical summary of the model

Model:

lm(day ~ temperature + humidity + rainfall)

📈 4. Weather Visualization Report

Uses first 7 days of weather data

Labels rows as:

Monday to Sunday

Transforms data using matrix transpose

Creates a grouped bar chart for:

Temperature

Humidity

Rainfall

Chart Features:

Side-by-side bars

Color-coded variables

Clear legend

Proper axis labels

🛠️ R Functions & Concepts Used

data.frame()

min(), max()

lm()

plot(), abline()

predict()

barplot()

legend()

Matrix transformation (t())
