=begin
Return an array containing the numbers from 1 to N, where N is the parametered value.

Replace certain values however if any of the following conditions are met:

If the value is a multiple of 3: use the value "Fizz" instead
If the value is a multiple of 5: use the value "Buzz" instead
If the value is a multiple of 3 & 5: use the value "FizzBuzz" instead
N will never be less than 1.

Method calling example:

fizzbuzz(3) -->  [1, 2, "Fizz"]
=end

#My Solution
def fizzbuzz(n)
  return (1..n).to_a.map{|x| x%3==0 && x%5==0? "FizzBuzz" : x%5==0? "Buzz" : x%3==0? "Fizz" : x }
end

#Best Practice
def fizzbuzz(n)
  (1..n).map { |x| 
    y = ''
    y += 'Fizz' if x % 3 == 0
    y += 'Buzz' if x % 5 == 0
    y == '' ? x : y
  }
end
