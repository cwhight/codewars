def duplicate_encode(word)
  #your code here
  count = Hash.new(0)
  chars = word.upcase.split("")
  chars.each { |char| count[char] += 1 }
  new_chars = chars.map do |char| 
    if count[char] > 1 
      ")" 
    else
      "("
    end
  end
  return new_chars.join
end
