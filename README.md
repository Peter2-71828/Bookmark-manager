# Bookmark

This bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

## User requirements

As a user
So I can keep a list of all my bookmarks
I want to show a list of my bookmarks

As a user
So I can keep my bookmarks up to date
I would like to add a new bookmark

## Domain model

![Domain model diagram](https://github.com/makersacademy/course/blob/master/bookmark_manager/images/bookmark_manager_1.png?raw=true)

## Database Setup

* Connect to `psql` and create the `bookmark_manager` database:

* `CREATE DATABASE bookmark_manager;`  

* To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

* CREATE DATABASE bookmark_manager_test;
* `psql`
* `admin=# CREATE DATABASE "bookmark_manager_test";`
* `admin=# CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));`

## How To Use
* clone directory
* run
* `bundle`
* `rackup`
* go to http://localhost:9292/ in your browser 
