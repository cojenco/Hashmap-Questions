def palindrome_permutation?(string)
  return true if string.length == 0

  char_hash = {}

  string.length.times do |i|
    if char_hash.key?(string[i].downcase)
      char_hash[string[i].downcase] += 1
    else
      char_hash[string[i].downcase] = 1
    end
  end

  single_letters = char_hash.select{|char, quant| quant % 2 != 0}
  return single_letters.length <= 1
end