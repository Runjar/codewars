'''
Background
Your friend has come up with a way to represent any number using binary, but the number of bits can be infinite to represent even the smallest of numbers! He thinks it will be hard to break since just one number can be represented in so many different (and long) ways:

'000000000000000000000000' == 0

'111111111111' == 0

'0101101001100110' == 0

He isn't a horrible friend so he's given you lots of examples... see if you can crack his code!

Instructions
Your task is to write a function that can decode binary, provided as a string, into the number it represents.

You can safely assume that the given string will only contain ones and zeroes, although it may be empty (in which case the expected number is 0).

Some representations can be very long so make sure your solution is reasonably efficient.

Good Luck!
'''

#My Solution
def decode_bits(bin_str):
    sum = 0;
    for i in range(len(bin_str)):
        if (bin_str[i] == "1"):
            sum= sum-1 if i%2==0 else sum+1
    return sum

#Best Practice
decode_bits = lambda s: s[1::2].count('1')-s[::2].count('1')
