
# Customer Issue Reporting System

This is a small web application that can be used to report issues to the system user. 

# Introduction

The user using this system can enter issues related to bug, question and improvement categories as the issue type. After selecting the relevant type, the issue is open states. These states exist under 4 different states in the lifecycle. It also has the following lifecycle.

    1. Can only be switched to in-progress when in open states.
    2. When in-progress status can be changed to waiting on client and resolved.
    3. When waiting on client status can be changed to in-progress and resolved.
    4. Cannot be switched when in resolved state.

Then the issue title and the related issue can be indicated. Also these issues can be updated, deleted and viewed. Also, you can see all the issues list in the home page. And under the chart section, issues states can be seen as a pie chart. Also, you can go to other pages through an attractive footer and the links there.
further more React, bootstrap, chartjs, sweetalert and bootstrap have been used to create the frontend of this application and MySQL and springboot have been used for the backend.
# Requirements

A java ide that can run spring boot backend application (intelliJ IDEA recommend)
An Ide that can run frontend application (vishual Studio recommend)
MySQL
web browser

# Installation
First, download the frontend, backend and sql files in this file. Then open the backend with intelliJ IDEA and the frontend with visual studio. Then create a database named issue in the MySQL database. Then import the SQL file into the database. After that, the application in the resources folder in the files opened by IntelliJ IDEA. Change the settings in the properties file to suit your needs. Then run the backend application. Then the created API will connect with your database. Then open the terminal in the open backend and give the npm start command. Now the application will run in your browser.

# Configuration
The module has no menu or modifiable settings. There is no configuration. 

# Troubleshooting

# Testing
Here postman was used to perform API testing. Used Katalon studio to perform UI and unit testing

# FAQ


# Maintainers
Current maintainer:
 * Thilina Sandaruwan
## Documentation

[Documentation](https://linktodocumentation)

# Customer_Issue_Reporting_System
# Customer-Issue-Reporting-System
