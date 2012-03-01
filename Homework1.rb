
def palindrome?(string)
 string = string.gsub(/[^a-zA-Z0-9]/, "")
 string = string.downcase
 tmpString = string
 return tmpString == string.reverse
end

palindrome?("A man, a plan, a canal -- Panama")
palindrome?("Madam, I'm Adam!")
palindrome?("Abracadabra")

