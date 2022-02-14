# Group-Project-2

Creating Database in MYSQL!

Content

Project Description
[Database](#Create Database)
Project Goals
Requirements & Deliverables
Schedule
Presentation
Example
Project Goals

Dive deeper into the database creation and panel data.

Project Description

The goal of this project is to create the database that reflects one of the important socio-economic subject, develop the composite indicator that allows to compare the countries/regions/cities/other objects and implement queries that return useful insights about your data. Subjects:

energy,
healthcare,
sustainable development,
poverty,
gender (our dataset)
business,
education,
science.
Our approach:

Disscuss the subject and check the available datasources
Make the project planning in Jira (creating a new project for your group)
Create ER Model
Get the data
Create the datasources description and metadata
Create the database
Develop the methodology of your indicator
Implement the queries
Disscuss the results
Prepare slides
Prepare your presentation
Databases

At least one datasourse should be received via API or scrapping. At least 4 different tables. At least 5 queries, where 1 query should be done for the indicator calculations, 1 query - for presenting all the information about countries/cities/regions for different cities/countries/regions.

Requirements & Deliverables

Each team member should upload all the project mateerials to Github The link to GitHub should be shared on Slack on Monday. You should deliver:

Planning of your project in Jira,
Code in Python for API or Scrapping,
ER model,
data sources and metadata,
composite indicator methodology
sql script,
slides.
Presentation

The presentation time limit is 6 minutes! You will have 3 minutes to present your project to the class and then 2 minutes for Q&A.

The slides of your presentation must include the content listed below and a demo of your game:

Title of the project + Team names
Description of your Project (Planning, ER, DataBase Schema, Queries, Methodoloy for the composite indicator)
Challenges
Process
Highlights
Main results
Demo (ONE MINUTE)
Example

Goal: to develop a database "Innovations" Proposed data: Number of teachers per student, Number of patents, Hi-tech import. ER model: Countries description (Country, Code, Income, Classification), Teachers_per_students (Country_code, Indicator, Year), Patents (Country_code, Indicator, Year), Hi_tech import (Country_code, Indicator_category1, Indicator_category2, Year)

Composite indicator:

standartization/ normalization of data
Assume that all the components have equal weights
Final indicator=sum of the components.
