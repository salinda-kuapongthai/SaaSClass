def palindrome?(string)
 string = string.gsub(/[^a-zA-Z0-9]/, "")
 string = string.downcase
 tmpString = string
 return tmpString == string.reverse
end

def count_words(string)
 string = string.split(/[^a-zA-Z0-9]/)
 string.delete_if{|s| s==""}
 string =  string.collect{|s| s.downcase}
 hash = Hash.new
 string.each do |s| hash[s] = 0 end
 string.each do |s| hash[s] = hash[s] + 1 end
 return hash
end
