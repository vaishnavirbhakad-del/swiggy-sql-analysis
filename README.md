# Swiggy SQL Analysis

# Project Overview

This project analyzes Swiggy restaurant data using SQL to understand restaurant distribution, cuisines, ratings, pricing, and other useful business insights.

The analysis is performed using SQLite and focuses on extracting meaningful information from the dataset through SQL queries.

#  Project Objective

The main objective of this project is to use SQL to analyze Swiggy restaurant data and answer practical business questions such as:

- Which cities have the most restaurants?
- Which cuisines are most popular?
- Which restaurant chains have the most branches?
- Which cities have the highest average ratings?
- What is the average price across cities?
- Which cuisines have the highest average ratings?
- Which restaurants have high ratings and a good number of ratings?
- Which cities offer better value for money?

#  Dataset

The dataset contains Swiggy restaurant information including:

- Restaurant name
- Location
- Rating
- Rating count
- Price
- Cuisine
- License number
- Restaurant link
- Address

# Tools & Technologies

- SQLite
- DB Browser for SQLite
- SQL
- GitHub

#  SQL Analysis

The project contains the following SQL queries:

# 1. Restaurants per City
Finds the number of restaurants listed in each city.

# 2. Popular Cuisines
Identifies the most common cuisines available across the dataset.

# 3. Restaurant Chains
Finds restaurant names with the highest number of branches.

# 4. Top-Rated Cities
Identifies cities with the highest average restaurant ratings.

# 5. Average Price Across Cities
Calculates the average price for two across different locations.

# 6. Highest-Rated Cuisines
Finds cuisines with the highest average restaurant ratings.

# 7. Highly Rated Restaurants
Identifies restaurants with a rating of 4.5 or above and a significant number of ratings.

# 8. Value for Money
Compares average restaurant ratings and average prices across locations to identify better value-for-money locations.

# Key SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- HAVING
- ORDER BY
- COUNT()
- AVG()
- CAST()
- ROUND()
- REPLACE()
- Aggregate Functions
- Filtering and Sorting

# How to Run

1. Open the Swiggy dataset in DB Browser for SQLite.
2. Import the dataset into a table named `swiggy`.
3. Open the `swiggy_analysis.sql` file.
4. Run the SQL queries in DB Browser for SQLite.
5. View the query results in the Results tab.

# Project Structure

text
swiggy-sql-analysis/
│
├── README.md
├── swiggy_analysis.sql
│
└── screenshots/
    ├── total_records.png
    ├── popular_cuisines.png
    ├── top_restaurants.png
    ├── top_locations.png
    ├── average_price.png

## Author

**Vaishnavi Bhakad**

MCA Student | SQL | Python | Power BI | Data Analysis
    ├── average_rating.png
    ├── highly_rated_restaurants.png
    └── value_for_money.png
