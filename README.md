## Companywide Compensation Analysis

 <table style="width:100%">
  <tr valign="top">
    <th><img height="300" alt="Average Salaries Histogram" src="https://github.com/kennethcandersen/sql-challenge/blob/main/output_charts/average_salary_histogram.jpg"></th>
    <th><img height="300" alt="Average Salaries by Position" src="https://github.com/kennethcandersen/sql-challenge/blob/main/output_charts/average_salary_by_position.jpg"></th>
  </tr>
</table> 

**EXECUTIVE SUMMARY**

The analysis of salaries fo over 300,000 employees indicates that there are substantial distortions: 

- Assistant Engineers, Senior Engineers and Tecnique Leaders have almost identical average salaries. 
- Staff and Senior Staff also have nearly identical average salaries, and both make nearly 20% more than all engineers. 

I highly recommend that the compensation committie conduct a thorough review of the salary policies to avoid talent flight and/or a full scale revolution of the engineers. They are armed with nurf guns and are known to be dangerous when agitated. 

**REPOSITORY NAVIGATION**

* [*Database Visual Schemata*](https://github.com/kennethcandersen/sql-challenge/blob/main/schema.png) presents a visual diagram of the employee database. 
* [*Database Postgre Schematic*](https://github.com/kennethcandersen/sql-challenge/blob/main/table_schemata.sql) contains the Postgre SQL code to set up database tables.
* [*Database Queries*](https://github.com/kennethcandersen/sql-challenge/blob/main/queries.sql) contains Postgre SQL to explore the data. 
* [*Data Analysis in Jupyter Notebook*](https://github.com/kennethcandersen/sql-challenge/blob/main/bonus_material.ipynb) contains code to import the database data into Pandas, with a [histogram of salary ranges](https://github.com/kennethcandersen/sql-challenge/blob/main/output_charts/average_salary_histogram.jpg) and [average salary by position](https://github.com/kennethcandersen/sql-challenge/blob/main/output_charts/average_salary_by_position.jpg). 


**OBJECTIVE**

Analyze compensation data for over 300,000 employees:
- Create code to set up a database using Postgre SQL, import data from csv files, and run queries
- Import data into a Jupyter Notebook
- Create code to analyze and plot compensation data
- Provide recommendations to the corporate compensation committee

**DATA** 

- Create conceptual database design for human resources data
<img width="958" alt="Schema" src="https://github.com/kennethcandersen/sql-challenge/blob/main/schema.png">

- Structure data in a Postgre database and import data from csv files
<img width="500" alt="Sample shema code" src="https://github.com/kennethcandersen/sql-challenge/blob/main/code_screenshots/table_schemata_sample_code.png">

- Run queries
<img width="500" alt="Sample query" src="https://github.com/kennethcandersen/sql-challenge/blob/main/code_screenshots/queries_sample_code.png">

- Export data from the Postgre database to a Jupyter Notebook to analyze and plot
<img width="500" alt="Sample Pandas code" src="https://github.com/kennethcandersen/sql-challenge/blob/main/code_screenshots/sample_bar_chart_code.png">



**DEPENDENCIES**

- from sqlalchemy import create_engine
- from sqlalchemy.dialects import postgresql
- from config import pgadmin_pw
- import pandas as pd
- import matplotlib.pyplot as plt                     
       

**PANDAS ANALYSIS**

 <table style="width:100%">
  <tr valign="top">
    <th><img height="300" alt="Average Salaries Histogram" src="https://github.com/kennethcandersen/sql-challenge/blob/main/output_charts/salary_data_stats_description.png"></th>
    <th><img height="300" alt="Average Salaries Histogram" src="https://github.com/kennethcandersen/sql-challenge/blob/main/output_charts/average_salary_histogram.jpg"></th>
    <th><img height="300" alt="Average Salaries by Position" src="https://github.com/kennethcandersen/sql-challenge/blob/main/output_charts/average_salary_by_position.jpg"></th>
  </tr>
</table> 

**CONCLUSIONS**

- Assistant Engineers, Senior Engineers and Tecnique Leaders have almost identical average salaries. 
- Staff and Senior Staff also have nearly identical average salaries, and both make nearly 20% more than all engineers. 



=======

