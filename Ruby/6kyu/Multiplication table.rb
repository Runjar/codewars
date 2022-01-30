=begin
Your task, is to create NxN multiplication table, of size provided in parameter.

for example, when given size is 3:

1 2 3
2 4 6
3 6 9
for given example, the return value should be: [[1,2,3],[2,4,6],[3,6,9]]
=end

#My Solution
def multiplication_table(size)
  (1..size).map{|a|(1..size).map{|x| x*a}}
end

#Best Practice
def multiplicationTable(size)
  (1..size).map { |i| (i..size * i).step(i).to_a }
end
