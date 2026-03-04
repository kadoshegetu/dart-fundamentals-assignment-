# Dart Fundamentals Assignment

Name: kidus Ergetachew
Student ID: ATE/3349/15
Course: Mobile Application Development – Addis Ababa University  
Assignment Title: Programming Assignment 1 – Dart Fundamentals  


Overview

This repository includes my work for the Dart Fundamentals assignment. The project is divided into two main parts, and each one helped me practice important Dart concepts such as lists, functions, classes, exception handling, and asynchronous programming.

Task 1: Number Analysis App

For the first task, I created a program that works with a list of integers and performs different calculations on it. The program determines the maximum and minimum values, calculates the total sum, and finds the average. I used loops and separate functions to keep the code organized and easy to understand. This task helped me improve my skills in handling lists and writing reusable functions in Dart.

Optional Challenge Additions

I also completed several optional improvements for this task:

Empty List Handling: Added checks to prevent errors when the list is empty. The program now shows a helpful message and returns a safe default value.

Count Negatives: Created a function that counts how many numbers in the list are negative.

Manual Sorting: Implemented a basic bubble sort algorithm to return a new sorted list without using Dart’s built-in .sort() method.

Built-in Methods Comparison: Rewrote the main functions using collection methods like .fold(), .where(), and .reduce(), and added comments to compare them with manual loop implementations.

Task 2: Async Calculator App

In the second task, I developed a Calculator class that performs basic arithmetic operations. I introduced asynchronous behavior using Future, async, and await to simulate delays, similar to processing data from an external source. I also added proper error handling to manage divide-by-zero cases safely. This task helped me better understand object-oriented programming and asynchronous execution in Dart.

Additional Features

History Tracking: Keeps a record of previous calculation results.

Chained Operations: Allows multiple operations to be performed across a list of values.

Input Validation: Includes a custom exception to handle invalid inputs.

Parallel Execution: Demonstrates the difference between running asynchronous tasks sequentially and in parallel.

How to Run

Clone the repository.

Open the project folder.

Run one of the following commands:

dart run task1/number_analysis.dart

or

dart run task2/calculator_app.dart