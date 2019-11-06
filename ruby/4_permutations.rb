def permutations(string)
 string.chars.permutation(string.length).to_a.uniq.map { |arr| arr.join } 
end
