def letter_count(str)
  count = Hash.new(0)
  str.chars.each { |letter| count[letter.to_sym] += 1 }
  count
end
