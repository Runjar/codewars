=begin
Acknowledgments:
I thank yvonne-liu for the idea and for the example tests :)

Description:
Encrypt this!

You want to create secret messages which can be deciphered by the Decipher this! kata. Here are the conditions:

Your message is a string containing space separated words.
You need to encrypt each word in the message using the following rules:
The first letter must be converted to its ASCII code.
The second letter must be switched with the last letter
Keepin' it simple: There are no special characters in the input.
Examples:
encryptThis("Hello") === "72olle"
encryptThis("good") === "103doo"
encryptThis("hello world") === "104olle 119drlo"
=end

#Mysolution
def encrypt_this(text)
  return text.split(' ').map{|a| a= a.length<=2? a.length<=1? a[0].ord.to_s : a[0].ord.to_s+a[1] : a[0].ord.to_s+a[-1]+a[2..-2]+a[1] }.join(" ")
end


#Best Practice
def encrypt_this(text)
  text.split.map { |word|
    word[1], word[-1] = word[-1], word[1] if word.size > 2
    word[0] = word[0].ord.to_s
    word
  } .join(' ')
end
