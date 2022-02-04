<?php
/*
Complete the function that

accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.
Examples
[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2
*/
//My Solution
function solution(array $a, array $b): float {
  $ans=array();
    for($i = 0;$i<=count($a)-1;$i++){
            $ps=abs($a[$i]-$b[$i])**2;
            array_push($ans,$ps);
    }
    return array_sum($ans)/count($ans);
}

//Best Practices
function solution(array $a, array $b): float 
{    
    $result = array_map(function ($val1, $val2) {
        return pow(abs($val1 - $val2), 2); 
    }, $a, $b);
    
    return array_sum($result) / count($result);
}
