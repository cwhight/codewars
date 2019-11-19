def score( dice )
  # Fill me in!
  counts = {}
  dice.each do |num|
    counts.key?(num) ? counts[num] += 1 : counts[num] = 1
  end
  sum = 0
  counts.keys.each do |k|
    if counts[k] >= 3
      sum += 1000 + (counts[k] - 3) * 100 if k == 1
      sum += 500 + (counts[k] - 3) * 50 if k == 5
      sum += k * 100 unless k == 5 || k == 1
    else
      sum += 100 * counts[k] if k == 1
      sum += counts[k] * 50 if k == 5
    end
  end
  sum
end
