/*
Adults only (SQL for Beginners #1)

In your application, there is a section for adults only. You need to get a list of names and ages of users from the users table, who are 18 years old or older.

users table schema

name
age
NOTE: Your solution should use pure SQL. Ruby is used within the test cases just to validate your answer.
*/


--My Solution
select name, age from users where age >= 18

--Best Practice
SELECT name, age FROM users WHERE age >= 18;
