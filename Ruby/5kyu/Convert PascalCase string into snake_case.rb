=begin
Complete the function/method so that it takes a PascalCase string and returns the string in snake_case notation. Lowercase characters can be numbers. If the method gets a number as input, it should return a string.

Examples
"TestController"  -->  "test_controller"
"MoviesAndBooks"  -->  "movies_and_books"
"App7Test"        -->  "app7_test"
1                 -->  "1"
=end

#Mysolution
def to_underscore(string)
  string=string.to_s
  isUp=->(a){ a==a.upcase && a.match(/[A-z]+/)!=nil}
   ans=""
   for i in 0..string.length-1 do
    k= i<string.length-1 ? 1 : 0
    ans += isUp.call(string[i+k]) ? string[i]+"_" : string[i] 
   end
   return ans.downcase
end

#Best Practice
def to_underscore(string)
  string.to_s.split(/(?=[A-Z])/).join('_').downcase
end
