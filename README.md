# FL_covid_data_notebooks
Gather Florida's Covid data directly from the ARCGIS REST API and save them as CSV files to your computer.

Click "Open in Colab" so that you can run the code yourself.

FL_daily_deaths_to_csv.ipynb is a Google Colaboratory notebook which anyone can use to download the daily reported Covid deaths as reported by the State of Florida's Covid Dashboard. From: https://fdoh.maps.arcgis.com/home/item.html?id=230270972343459a812a1ae8c28574a6

FL_cases_by_day_for_timeseries_analysis_to_csv.ipynb is a Google Colaboratory notebook which anyone can use to download the daily reported Covid cases for each County in Florida as reported by the State of Florida's Covid Dashboard. From: https://fdoh.maps.arcgis.com/home/item.html?id=452ab45aaa714042b3d61c741f851d5a

FL_latest_caseline_file_with_death_updates.ipynb is a Google Colaboratory notebook which anyone can use to download the latest caseline file as two separate CSV files. The first file is the new cases, with age and county information. The second file is the deaths file, which has the person's age and County. This file can be downloaded directly as an excel file in: http://ww11.doh.state.fl.us/comm/_partners/covid19_report_archive/

FL_County_level_health_metrics_weekly_deltas_to_csv.ipynb is a Google Colaboratory notebook which anyone can use to download the weekly update for each County in Florida which reports County-level data on positivity rate and other metrics of note which previously was not readily accessable. An example is provided to assist the user in slicing the data for a specific County. This data is reported by the State of Florida's Covid Dashboard. From: https://fdoh.maps.arcgis.com/home/item.html?id=492f02b473df4c8f8aa68fedf420c933

FL_State_level_health_metrics_weekly_data_to_csv.ipynb is a Google Colaboratory notebook which anyone can use to download the weekly update for the entire State of Florida which reports data on positivity rate and other metrics of note which previously was not readily accessable. This data is reported by the State of Florida's Covid Dashboard. From: https://fdoh.maps.arcgis.com/home/item.html?id=951e4dbc68a74b92b53dab97006c43f7

FL_hospital_bed_census_data_to_csv.ipynb is a Google Colaboratory notebook which anyone can use to download the current hospital bed census for the entire State of Florida which reports data on hospital bed availability and other metrics of note. From: https://services.arcgis.com/3wFbqsFPLeKqOlIK/ArcGIS/rest/services/HOSPITALS_esri/FeatureServer/0

Please tweet me @prof_JTaylor if you have comments or questions.
