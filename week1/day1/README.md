# SQL Practice Queries - Day 1

## Overview
This repository contains SQL practice queries based on the Employee, Department, and Project tables.  
The queries cover different SQL concepts including:

- Basic Queries
- String Matching
- Date Functions
- Aggregate Functions
- GROUP BY
- HAVING Clause

## Database Schema

### Employee Table
| Column | Type |
|---|---|
| emp_id | INT |
| name | VARCHAR |
| age | INT |
| salary | INT |
| department_id | INT |
| hire_date | DATE |

### Department Table
| Column | Type |
|---|---|
| department_id | INT |
| name | VARCHAR |

### Project Table
| Column | Type |
|---|---|
| project_id | INT |
| name | VARCHAR |
| department_id | INT |

## Topics Covered

### Basic Queries
- SELECT
- WHERE
- Filtering records

### String Matching
- LIKE operator
- Wildcards

### Date Queries
- YEAR()
- MONTH()
- Date filtering

### Aggregate Functions
- SUM()
- AVG()
- MIN()
- COUNT()

### GROUP BY and HAVING
- Grouping records
- Filtering grouped data

## File Structure

```bash
day1/
│── queries.sql
│── README.md
```

## How to Run

1. Create the tables in MySQL.
2. Insert sample data.
3. Open MySQL Workbench or any SQL editor.
4. Execute the queries from `queries.sql`.

## Author
Pardhu
