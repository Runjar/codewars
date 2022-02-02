#[multi-
The cockroach is one of the fastest insects. 
Write a function which takes its speed in km per hour 
and returns it in cm per second, rounded down to the integer (= floored).

For example:

1.08 --> 30

Note! The input is a Real number (actual type is language dependent)
and is >= 0. The result should be an Integer.
]#

#My Solution
import math
proc cockroachSpeed*(x: float): int =
  toint(floor(x/0.036))

#Best Practice
proc cockroachSpeed*(x: float): int =
  (x / 0.036).int
