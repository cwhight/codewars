def pyramid(numbers)
  return [] if numbers == 0
  
  (1..numbers).to_a.map { |number| Array.new(number, 1) }   
end
