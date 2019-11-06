def numeric_formatter(template, number = "1234567890")
  p number
  counter = -1
  template.chars.map do |char|
    if char.match?(/[A-Za-z]/)
      counter += 1
      counter == number.length ? counter = 0 : counter
      number.chars[counter].to_s
    else
      char.to_s  
    end
  end.map { |c| c.to_s }.join
end
