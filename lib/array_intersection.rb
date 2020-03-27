def intersection(list1, list2)
  element_hash = {}
  intersection = []

  list1.each do |element|
    if element_hash.key?(element)
      element_hash[element] += 1
    else
      element_hash[element] = 1
    end
  end

  list2.each do |element|
    if element_hash.key?(element)
      element_hash[element] += 1
    else
      element_hash[element] = 1
    end

    intersection << element if element_hash[element] > 1 
  end

  return intersection
end