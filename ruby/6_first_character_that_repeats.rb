def first_dup(s)
  s.chars.select.with_index { |letter, index| s.chars.count(letter) >= 2 }.first
end
