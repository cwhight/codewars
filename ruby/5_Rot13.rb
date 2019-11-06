def rot13(string)
  letters = ("a".."z").to_a
  string.chars.map do |char| 
    if letters.include?(char)
      letters[letters.find_index(char) - 13] 
    elsif letters.include?(char.downcase) 
      letters[letters.find_index(char.downcase) - 13].upcase
    else
      char
    end
  end.join
end
