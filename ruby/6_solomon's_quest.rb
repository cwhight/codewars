def solomons_quest(arr)
  location = [0,0]
  level = 0
  arr.each do |subarr|
    level += subarr[0]
    subarr[1].odd? ? index = 0 : index = 1
    subarr[1] >= 2 ? direction = -1 : direction = 1
    dilation = 2 ** level
    distance = subarr[2] * dilation
    location[index] += direction * distance
  end
  return location
end
