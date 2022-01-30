'''
Finish the solution so that it takes an input n (integer) and returns a string that is the decimal representation of the number grouped by commas after every 3 digits.

Assume: 0 <= n < 2147483647

Examples
       1  ->           "1"
      10  ->          "10"
     100  ->         "100"
    1000  ->       "1,000"
   10000  ->      "10,000"
  100000  ->     "100,000"
 1000000  ->   "1,000,000"
35235235  ->  "35,235,235"
'''

#My Solution
def group_by_commas(n):
    cont=0;ans="";kep=str(n)[::-1]
    for x in range(len(kep)):
        if cont!=3:
            ans+=kep[x]
        else:
            ans+=","+kep[x]
            cont=0
        cont+=1
    return ans[::-1]

#Best Practice
def group_by_commas(n):
    return '{:,}'.format(n)
