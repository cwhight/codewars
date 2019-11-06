def choose_best_sum(t, k, ls)
    ls.combination(k).to_a.map do |option|
      option.reduce(0) { |sum,num| sum += num }
    end.reject { |dist| dist > t }.max
end
