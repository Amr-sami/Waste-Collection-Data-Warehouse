# Waste Collection Data Warehouse

## Project Overview
This project is a final assignment for the **Introduction to Data Warehousing** course by IBM Engineering. It demonstrates how to build a Data Warehouse by organizing waste collection data into fact and dimension tables. The project utilizes **Snowflake Schema** and **Star Schema** designs to allow efficient querying and analysis.

## Project Goals
1. **Organize Waste Collection Data**  
   The main goal is to structure data into appropriate fact and dimension tables, ensuring clarity and scalability for large datasets.

2. **Optimize Query Performance**  
   By using **materialized views** and SQL aggregations, query performance is enhanced, providing faster results for analytical queries.

3. **Demonstrate Data Warehousing Techniques**  
   The project showcases advanced SQL features such as **ROLLUP**, **CUBE**, and **GROUPING SETS** to create multidimensional reports for data analysis.

## Key Features

### Fact and Dimension Tables  
The tables include `MyDimWaste`, `MyDimZone`, `MyDimStation`, and `MyFactTrips`. These are structured to represent different aspects of waste collection, enabling comprehensive reporting.

### Advanced SQL Queries  
The project demonstrates the use of SQL techniques like **ROLLUP**, **CUBE**, and **GROUPING SETS** to allow data to be analyzed from multiple perspectives, such as by station, truck type, and city.

### Materialized Views  
Materialized views store pre-computed query results to boost performance for frequently run analytical queries.

## Use Cases
This project is applicable in various industries that require data warehousing for storing and analyzing large datasets. Specifically, it can be used by waste management organizations to:

- Track waste collection across different zones.
- Analyze truck performance and waste collection efficiency.
- Generate periodic reports for operational improvements.

## Technology Stack
- **SQL**: Used for defining tables, loading data, and performing queries.
- **PostgreSQL**: Suitable for hosting this project and running the queries.
- **CSV Files**: The data is loaded from CSV files into the database.
