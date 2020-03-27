def permutations?(string1, string2)
  return false if string1.length != string2.length
  
  hash1 = create_hash(string1)
  hash2 = create_hash(string2)

  return hash1 == hash2
end


def create_hash(string)
  char_hash = {}

  string.length.times do |i|
    if char_hash.key?(string[i].downcase)
      char_hash[string[i].downcase] += 1
    else
      char_hash[string[i].downcase] = 1
    end
  end

  return char_hash
end


### alternative solution
# def permutations?(string1, string2)
#   return false if string1.length != string2.length
#   char_hash = {}
#   string1.length.times do |i|
#     if char_hash.key?(string1[i].downcase)
#       char_hash[string1[i].downcase] += 1
#     else
#       char_hash[string1[i].downcase] = 1
#     end
#   end

#   string2.length.times do |i|
#     if char_hash.key?(string2[i].downcase)
#       char_hash[string2[i].downcase] -= 1
#     else
#       return false
#     end
#   end

#   char_hash.each do |char, quant|
#     return false if quant != 0
#   end

#   return true
# end