def longest_consec(strarr, k)
  return "" if strarr.length == 0 || k > strarr.length || k <= 0 
  
  maxLength = 0
  string = ""
  
  strarr.each_with_index do |str, ind|
    if strarr[ind, k].join.length > maxLength
      maxLength = strarr[ind, k].join.length
      string = strarr[ind, k].join
    end
  end
  return string 
end
