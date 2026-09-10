# sales-performance-dashboard
An interactive Sales Performance Dashboard built using SQL, Excel, Power Query, Power BI, and DAX to analyze revenue, profit, sales trends, regional performance, and category-wise performance.
# Sales Performance Dashboard

A Power BI project built to analyze sales performance and turn raw sales data into useful business insights.

The project covers the complete process from **SQL analysis and data cleaning to Power BI visualization and DAX calculations**.

## About the Project

The goal of this project was to understand how sales were performing across different regions, categories, and time periods.

I worked with sales data, cleaned and prepared it, performed analysis using SQL, and then built an interactive dashboard in Power BI.

The dashboard makes it easier to quickly understand revenue, profit, sales volume, and category/region performance.

## Tools Used

* **SQL** – Data analysis and querying
* **Excel** – Data preparation
* **Power Query** – Data cleaning and transformation
* **Power BI** – Dashboard and visualizations
* **DAX** – Calculations and measures

## Project Workflow

```text
Raw Sales Data
      ↓
SQL Analysis
      ↓
Excel & Power Query
      ↓
Data Cleaning
      ↓
Power BI
      ↓
DAX Measures
      ↓
Interactive Dashboard
```

## What I Did

### 1. Data Cleaning

I prepared the sales data before using it for analysis.

Some of the main cleaning steps included:

* Removing duplicate records
* Cleaning text fields
* Correcting data types
* Checking numerical columns
* Creating a Profit Margin column

**Profit Margin:**

```text
Profit Margin = Profit / Revenue
```

### 2. SQL Analysis

I used SQL to analyze the sales data and answer questions such as:

* What is the total revenue and profit?
* Which regions generate the most revenue?
* Which categories are the most profitable?
* How does sales performance change over time?

The SQL queries used for the project are available in the `SQL` folder.

### 3. Power BI Dashboard

After preparing the data, I created an interactive dashboard in Power BI.

The dashboard includes:

* **Total Revenue**
* **Total Profit**
* **Total Sales**
* **Average Profit Margin**
* Monthly Revenue Trend
* Revenue by Region
* Profit by Category
* Revenue Contribution by Category

I also added filters for **Date, Region, and Category** so the user can explore the data interactively.

## DAX Measures

Some of the main measures created in Power BI were:

```DAX
Total Revenue = SUM('Sales'[Revenue])

Total Profit = SUM('Sales'[Profit])

Total Gross Sales = SUM('Sales'[Gross Sales])

Total Cost = SUM('Sales'[Cost])

Total Quantity = SUM('Sales'[Quantity])

Average Profit Margin = AVERAGE('Sales'[Profit Margin])

Total Sales = DISTINCTCOUNT('Sales'[Sales ID])
```

## Key Insights

The dashboard can be used to identify:

* Changes in revenue over time
* Strong and weak performing regions
* Categories generating the highest profit
* Categories contributing the most to revenue
* Differences between revenue and actual profitability

The specific insights and observations are based on the results shown in the dashboard.

## Why I Built This

I built this project to get hands-on experience with the complete data analytics workflow rather than working only on individual tools.

It helped me practice **SQL, data cleaning, Power Query, Power BI, DAX, and business-oriented data analysis** in one project.

## Project Structure

```text
Sales-Performance-Dashboard/
│
├── README.md
│
├── SQL/
│   └── sales_analysis.sql
│
├── Data/
│   └── sales_data.xlsx
│
├── PowerBI/
│   └── Sales_Performance_Dashboard.pbix
│
└── Screenshots/
    └── dashboard.png
```

## Skills

**SQL • Excel • Power Query • Power BI • DAX • Data Cleaning • Data Visualization • Business Analysis**
