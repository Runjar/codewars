/*
Write a function, which takes a non-negative integer (seconds) as input and returns the time in a human-readable format (HH:MM:SS)

HH = hours, padded to 2 digits, range: 00 - 99
MM = minutes, padded to 2 digits, range: 00 - 59
SS = seconds, padded to 2 digits, range: 00 - 59
The maximum time never exceeds 359999 (99:59:59)

You can find some examples in the test fixtures.
*/


//My Solution
public class HumanReadableTime {
  public static String makeReadable(int seconds) {
    int h = 0;int m = 0; int s=0;
        if(seconds>=3600){
         h = seconds/3600;
         m = (seconds-(h*3600))/60;
         s = seconds-((h*3600)+m*60);
        }else if (seconds>=60){
         m = seconds/60;
         s = seconds-(m*60);
        }else if (seconds<60){
         s= seconds;
        } 
        String HH = (h>9) ? Integer.toString(h) : "0"+h ;
        String MM = (m>9) ? Integer.toString(m) : "0"+m ;
        String SS = (s>9) ? Integer.toString(s) : "0"+s ; 
    return (HH+":"+MM+":"+SS);
  }
}

//Best Practice
public class HumanReadableTime {
  public static String makeReadable(int seconds) {
    return String.format("%02d:%02d:%02d", seconds / 3600, (seconds / 60) % 60, seconds % 60);
  }
}
