# Restaurant Management System (Java + MySQL)

This project is a desktop application for managing restaurant operations such as customers, orders, staff, and ingredients.

The system is built using Java Swing for the user interface and MySQL for the backend database.

## Features

- Add and manage customers
- Place restaurant orders
- Calculate total bill automatically
- Manage restaurant staff
- Add and update ingredients and suppliers
- Connect Java application to MySQL database

## Technologies

- Java
- Java Swing
- MySQL
- JDBC

## Project Structure

Model  
Contains data models such as Customer, Order, Staff, Ingredient, and Table.

Control  
Handles database access and SQL operations.

View  
Contains the GUI forms for interacting with the system.

## Database

The project uses a MySQL database named `restaurant`.

Connection example:

jdbc:mysql://localhost:3306/restaurant
