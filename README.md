## Companywide Compensation Analysis

 <table style="width:100%">
  <tr>
    <th><img width="450" alt="Average Salaries Histogram" src="https://github.com/kennethcandersen/sql-challenge/blob/main/output_charts/average_salary_histogram.jpg"></th>
    <th><img width="450" alt="Average Salaries by Position" src="https://github.com/kennethcandersen/sql-challenge/blob/main/output_charts/average_salary_by_position.jpg"></th>
  </tr>
</table> 

**EXECUTIVE SUMMARY**

The analysis of over 300,000 employee base salaries concludes that there are substantial distortions in compensation which should be addressed by the compensation committee. 

- Assistant Engineers, Senior Engineers and Tecnique Leaders have almost identical average salaries. 
- Staff and Senior Staff also have nearly identical average salaries, and both make nearly 20% more than all engineers. 

I highly recommend a thorough review of the salary policies to avoid talent flight and/or a full scale revolution of the engineers. They are armed with nurf guns and are known to be dangerous when agitated. 

**REPOSITORY NAVIGATION**

* [*Database Visual Schemata*](https://github.com/kennethcandersen/sql-challenge/blob/main/schema_v4.png) presents a visual diagram of the employee database. 
* [*Database Postgre Schematic*](https://github.com/kennethcandersen/sql-challenge/blob/main/table_schemata.sql) contains the Postgre SQL code to set up database tables.
* [*Database Queries*](https://github.com/kennethcandersen/sql-challenge/blob/main/queries.sql) contains Postgre SQL to explore the data. 
* [*Data Analysis in Jupyter Notebook*](https://github.com/kennethcandersen/sql-challenge/blob/main/bonus_material.ipynb) contains code to import the database data into Pandas, with a [histogram of salary ranges](https://github.com/kennethcandersen/sql-challenge/blob/main/output_charts/average_salary_histogram.jpg) and [average salary by position](https://github.com/kennethcandersen/sql-challenge/blob/main/output_charts/average_salary_by_position.jpg). 


**OBJECTIVE**

Explore how COVID-19 affected music streaming user preferences to answer:
- Are users listening to happy music to cheer up?
- Are users listening to sad music to cope?
- Do results vary by country?


**BUSINESS IMPACT**

Spotify can use this data to improve their algorithms and offer more personalized suggestions to users in different regions, that could potentially provide a better experience to the user, thereby retaining more premium users and increasing revenue.


**DATA** 

- [Spotifycharts.com](https://spotifycharts.com) for historical data on top 200 songs by country and region.
- [Spotify API](https://developer.spotify.com/documentation/web-api/) for metrics on individual tracks.
- [Our World data](https://ourworldindata.org/coronavirusCOVID-19) for Covid data.


**DEPENDENCIES**

- import matplotlib.pyplot as plt
- import pandas as pd
- import numpy as np
- import requests
- import json
- import re, glob
- import os, sys
- from scipy import stats
- import seaborn as sn
- import spotipy                          
       
                                                
**DATA EXPLORATION**

1. Convert input CSVs into DataFrame
    COVID data in csv files from https://ourworldindata.org [5] and Spotify Top Charts at 
    spotifycharts.com. They were read and transformed into DataFrames using Pandas. 

2. Obtain track features from API 
    Using the Spotify API and the track names from the Spotify DataFrame, we got track information 
    regarding Valence. This is a metric used by Spotify which characterize whether a song is relatively sad or happy.
       <img width="958" alt="Vance Comparison 2019-2020" src="https://github.com/verocastillo/data-project-1/blob/main/data-exploration/sample_spotify_api_code.png">
       
3. Delete faulty/repeated data
    Some tracks were not found, and some information was not available in certain countries. 
    These values in the DataFrame were dropped.
    
4. Plot key indexes over time
    Using the dates in which the data was obtained, we merged the DataFrames and plotted valence.

5. Obtain correlations between variables
    Correlations between Covid severity and listerner music preferences as reflected in the Spotify Top 200 Charts were obtained by using scatter plots and linear regression                
    analysis.


**DATA TRANSFORMATION**

From Spotify we obtained CSV files for the weekly top 200 charts for each country and the global one. From Our World in Data COVID statistics divided by date and country were used. Also, the Spotify API was used to obtain track information and audio features for each track. 

From this data, key metric to study was Valence, defined from sounded studies as a measure which indicates whether people associate happy or sad sounds. This is important because it is how Spotify describes the musical positiveness conveyed by a track. The number of COVID cases and deaths were also analysed in order to compare  how valence behaved over time.

Import CSV files obtained from the data sources, and turned them into Pandas DataFrames. From the DataFrame with the Spotify data the Spotify API was used to obtain the track ID associated with each song, and then the audio features of the song, which included song valence. 


**CLEAN-UP DATA**

Dropped songs that are not in certain countries, songs that are no longer in Spotify and songs with missing values. 


**PANDAS ANALYSIS**

Relevant mean values and weighted averages to simplify the data to be grouped by month and year were retrieved. Matplotlib helped to plot valence through time, comparing the monthly change in 2019 and 2020 also scatter plots and linear regression analysis to obtain the correlation between variables was used.
<img width="958" alt="Vance vs. New Cases per Million" src="https://github.com/verocastillo/data-project-1/blob/main/main-data-analysis/sample_plot_analysis_code.png">

**RESULTS**

**Valence preference varies between countries.**
Hispanic and Latin countries have higher mean valence.
Mean valence between 2019 and 2020 was significantly different in some countries.
México decreased in 2020.
Spain increased in 2020.
Globally, there was no significant change in mean valence.
<img width="958" alt="Vance Comparison 2019-2020" src="https://github.com/kennethcandersen/spotify-user-preferences-during-covid-analysis/blob/main/main-data-analysis/output_files/Valence3x3.jpg">

**Valence vs. Cases per Million**
Global tendency shows a strong positive correlation. 
Germany and the US match the trend.
México, Spain and India show from a moderate to a strong negative correlation.
<img width="958" alt="Vance vs. New Cases per Million" src="https://github.com/kennethcandersen/spotify-user-preferences-during-covid-analysis/blob/main/main-data-analysis/output_files/scatter_Valence_to_New%20Cases%20Per%20Million3x3.jpg">

**Valence vs. Deaths per Million**
Global tendency shows a strong positive correlation. 
Germany and the US match the trend.
México, Brazil, Italy and India show from a moderate to a strong negative correlation.
<img width="958" alt="Vance vs. New Cases per Million" src="https://github.com/kennethcandersen/spotify-user-preferences-during-covid-analysis/blob/main/main-data-analysis/output_files/scatter_Valence_to_New%20Deaths%20Per%20Million3x3.jpg">

**CONCLUSIONS**

The majority of the countries analyzed presented a correlation between Covid severity and changes in listening preferencies. 

Therefore, Spotify can use the data obtained to offer more personalized suggestions to users depending on the country, and optimize exclusive contracts with certain artists that match the ‘mood’ of each country. 



=======

