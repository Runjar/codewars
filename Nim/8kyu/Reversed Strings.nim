#[multi-
Complete the solution so that it reverses the string passed into it.

'world'  =>  'dlrow'
'word'   =>  'drow'
]#

#My Solution
import unicode

proc solution*(str: string): string =

  return reversed(str) 

#Best Practice
from unicode import reversed

proc solution*(str: string): string =
  str.reversed
