# HR-Analytics-Absenteeism-and-Wellness-Incentive-Program-Data-analyst-project-
---
## Absenteeism Analysis Project

This project focuses on analyzing absenteeism data using several datasets and tools like Microsoft SQL Server and Power BI.

### Project Files

* **Absenteeism_at_work.csv** — The main dataset on employee absenteeism.
* **compensation.csv** — The employee compensation dataset.
* **Reasons.csv** — The dataset on reasons for absenteeism.
* **Absenteeism.sql** — The SQL script for creating and processing data in the database.
* **Absenteeism.pbix** — The Power BI file containing data visualizations and analysis.

### How to Open and Run the Project

#### 1. SQL Database Setup

1.  Open **Microsoft SQL Server Management Studio (SSMS)**.
2.  Create a new database (e.g., `AbsenteeismDB`).
3.  Open the **Absenteeism.sql** file and run the script in the newly created database.
4.  This script will create the necessary tables and import the data for analysis.
5.  Make sure the data has been successfully imported into the database.

#### 2. Opening the Project in Power BI

1.  Open **Power BI Desktop**.
2.  Open the **Absenteeism.pbix** file.
3.  Power BI is already connected to the SQL Server database you created in the previous step.
4.  If the database connection needs to be adjusted, update the connection settings in Power BI with your server and database details.
5.  Once the connection is active, you can view and analyze the absenteeism data with the provided visualizations.

### Notes

* Make sure you have both **Microsoft SQL Server** and **Power BI Desktop** installed and running on your computer.
* The CSV files are used as a reference for the original data and are imported via the SQL script.
* If you need to update the data, modify the CSV files and rerun the SQL script as needed.
