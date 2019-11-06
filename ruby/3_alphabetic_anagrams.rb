def factor(n)
  (1..n).reduce(:*) || 1
end

def listPosition(word)
    order = word.chars.sort
    word.chars.each_with_index.reduce(1) do |position, (c, i)| 
       position += order.index(c) * factor(word.size-i-1)/order.uniq.reduce(1) { |s, n| s*= factor(order.count(n)) }
       order.delete_at(order.index(c)) and position
    end
end
