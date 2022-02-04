/*
Easy SQL: Convert to Hexadecimal

to hexYou have access to a table of monsters as follows:

monsters table schema
id
name
legs
arms
characteristics
Your task is to turn the numeric columns (arms, legs) into equivalent hexadecimal values.

output table schema
legs
arms
*/


--My Solution
SELECT to_hex(legs) as legs, to_hex(arms) AS arms FROM monsters


--Best Practice
SELECT TO_HEX(legs) legs, TO_HEX(arms) arms from monsters;
