def perimeter(n)
    fib = []
    (0..n).to_a.each_with_index do |num, i|
      if i < 2
        fib << 1
      else
        fib << fib[i - 2] + fib[i - 1]
      end
    end
    fib.reduce {|sum, num| sum += num } * 4
end
