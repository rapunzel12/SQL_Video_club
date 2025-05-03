# SQL_Video_club
# 🎥 Video Club Database Project

## 📌 Project Description
This project demonstrates SQL knowledge by creating and managing a Video Club database in **MySQL** and **PostgreSQL**.

## Steps for making the database and writing MySQL and PostgreSQL queries:
1. **Creating a Model in MySQL Workbench**
2. **Using the option Forward Engineering to create a script in MySQL Workbench to create Database Schema**
3. **Making adjustments to the script for Database Schema so it can be properly executed (deleting the word VISIBLE which is automatically present when using option Forward Engineering and conducting similar actions)**
4. **After the database was made, I moved on to populating the data in MySQL Workbench and phpMyAdmin manually**
5. **After the database was completed, I exported the database from phpMyAdmin tool as .sql file**
6. **In separated file I saved the queries which can be performed on the DB to present certain data – the SQL queries were my ideas**
7. **I analyzed MySQL language and PostgreSQL language and made adjustments for creating database in pgAdmin 4 (PostgreSQL tool).**
8. **I made adjustments to the script containing the data for creating database, inserts of the data and to the script for conducting SQL queries.**


👉 [Full Database Overview](documentation/database_overview.md)  

## 🔍 Key Features
- SQL queries for **CRUD operations** (Enables basic data management).
- Usage of **JOINs**, **GROUP BY**, **ORDER BY**, **HAVING** (Organizes and links data efficiently).
- Aggregative functions like **COUNT, SUM, AVG, MIN, MAX** (Used for statistics & summaries).
- Query optimization insights (Improves performance).

## 💾 Files Included

1. **Model for Database**
   - `video_club_model.mwb` (MySQL)
   
2. **Database Creation Scripts**
   - `video_club_creating_database_mysql.sql` (MySQL)
   - `video_club_creating_database_without_data_postgresql.sql` (PostgreSQL)

3. **Data Population Scripts**
   - `video_club_populated_data_mysql.sql` (MySQL)
   - `video_club_creating_db_with_data_postgresql.sql` (PostgreSQL)

4. **SQL Queries**
   - `video_club_queries_mysql.sql` (Includes CRUD, joins, aggregations)
   - `video_club_queries_postgresql.sql` (Same queries, adjusted for PostgreSQL)

## 🛠️ How to Run the Database
- Import MySQL scripts into `phpMyAdmin` or `MySQL Workbench`.
- Use PostgreSQL scripts in `pgAdmin 4`.
- Execute `video_club_queries_mysql.sql` or `video_club_queries_postgresql.sql` to analyze results.

👉 See database diagram in **[SQL_RESULTS.md](documentation/sql_results.md)**

👉 See query results and database visualization in **[SQL_RESULTS.md](documentation/sql_results.md)**

## 📜 Lessons Learned
👉 [Read the challenges & SQL insights](documentation/lessons_learned.md)  

## 🔁 Version Control & Future Improvements
- **Git repository for updates** 
- I consider this project as work in progress. 
- Future goals: More queries, more data, deeper optimization strategies.