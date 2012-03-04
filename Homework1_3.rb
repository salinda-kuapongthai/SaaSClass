def combine_anagrams(words)
  group = []
  hash = Hash.new
  words.each do |word|
   sortStr = word.downcase 
   sortStr = sortStr.chars.sort.join
   if hash[sortStr] == nil
    hash[sortStr] =  [word]
   else
    hash[sortStr] += [word]
   end
  end
  hash.each do |key,data|
    group += [data]
  end
  return group
end
