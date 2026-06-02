# ShopSense Analytics

## Project Overview

ShopSense Analytics is an end-to-end retail sales analytics project built using the Global Superstore dataset. The project focuses on transforming raw sales data into actionable business insights through data cleaning, SQL analysis, and interactive Power BI dashboards.

The objective of this project is to analyze sales performance, profitability, customer segments, product categories, geographical trends, and shipping efficiency to support data-driven business decisions.

---

## Dataset

**Global Superstore Dataset**

The dataset contains information related to:

* Orders
* Products
* Customers
* Sales
* Profit
* Shipping
* Markets and Regions

---

## Tools & Technologies Used

* Python (Pandas, NumPy)
* SQL Server
* Power BI
* Git & GitHub
* Microsoft Excel

---

## Data Cleaning & Preparation

The dataset was cleaned and prepared using Python and Excel.

### Cleaning Steps Performed

* Checked for missing values
* Identified missing Postal Code values and retained them where appropriate
* Checked for duplicate records (none found)
* Standardized column formats
* Converted Order Date and Ship Date to datetime format
* Created a new feature: Shipping Days
* Exported the cleaned dataset for analysis

---

## SQL Analysis

Performed business-focused SQL analysis to answer key questions such as:

* Total Sales
* Total Profit
* Total Orders
* Sales by Category
* Profit by Category
* Sales by Market
* Sales by Segment
* Top Countries by Sales
* Top Products by Sales
* Shipping Cost Analysis

---

## Power BI Dashboard

### Page 1: Executive Overview

Key Performance Indicators (KPIs)

* Total Sales
* Total Profit
* Total Orders
* Average Shipping Days

Visualizations

* Sales by Category
* Profit by Category
* Sales by Market
* Sales by Segment

---

### Page 2: Geography & Product Analysis

Visualizations

* Top 10 Countries by Sales
* Top 10 Products by Sales
* Sales by Sub-Category (Treemap)

---

### Page 3: Shipping Analysis

Visualizations

* Average Shipping Days by Ship Mode
* Shipping Cost by Ship Mode
* Order Priority Distribution

---

### Interactive Features

Dashboard slicers include:

* Market
* Category
* Segment
* Order Priority

These filters allow users to interactively explore data across all dashboard pages.

---

## Project Structure

ShopSense-Analytics/

├── data/
│   ├── raw/
│   └── cleaned/
│
├── notebooks/
│
├── sql/
│   └── shopsense_analysis.sql
│
├── dashboard/
│   ├── ShopSense_Dashboard.pbix
│   └── screenshots/
│
└── README.md

---

## Key Insights

* Technology generated the highest sales and profit.
* Consumer segment contributed the largest share of sales.
* The United States was the top-performing country by sales.
* Certain shipping modes had significantly higher costs than others.
* Shipping performance varied across different ship modes.

---

## Project Status

✅ Data Cleaning Completed

✅ SQL Analysis Completed

✅ Power BI Dashboard Completed

✅ GitHub Documentation Completed

---

## Author

**Lahari Kasina**

Final Year B.Tech (Computer Science Engineering)

Aspiring Data Analyst
