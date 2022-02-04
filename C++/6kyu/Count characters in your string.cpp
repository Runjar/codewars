/*
Count characters in your string

The main idea is to count all the occurring characters in a string. If you have a string like aba, then the result should be {'a': 2, 'b': 1}.

What if the string is empty? Then the result should be empty object literal, {}.
*/


//My Solution
#include <map>
#include <string>
#include <bits/stdc++.h>
using namespace std;

typedef std::map<char, unsigned> CChars;
CChars count(const std::string& string) {
    if(string==""){return {};}
    CChars m;
    for(unsigned i=0; i<= string.length()-1; i++ ){
        unsigned n = count(string.begin(), string.end(), string[i]);
        m.insert ( std::pair<char, unsigned>(string[i],n) );
    }
    return m;
}

//Best Practice
#include <map>
#include <string>

std::map<char, unsigned> count(const std::string& string) {
  std::map<char, unsigned> r;
  for (const char& c: string) ++r[c];
  return r;
}
