def find_even_index(arr)
  sums  = arr.map.with_index do |int, index| 
     [index == 0 ? 0: arr[0..(index - 1)].inject(:+), index == arr.length - 1 ? 0 : arr[(index + 1)..-1].inject(:+) ]
   end
   return  -1 if sums.find_index { |array| array[0] == array[1] }.nil?
   
   sums.find_index { |array| array[0] == array[1] }
end
