def is_solved(board)
  flat = board.flatten!
  top = flat[0..2]
  left = [flat[0],flat[3],flat[6]]
  bottom = flat[6..8]
  middle = [flat[1],flat[4],flat[7]]
  middle2 = flat[3..5]
  right = [flat[2],flat[5],flat[8]]
  cross1 = [flat[2],flat[4],flat[6]]
  cross2 = [flat[0],flat[4],flat[8]]
  
  threes = [flat,top,left,right,bottom,middle,middle2,cross1,cross2]
  
  score = 0

  threes.each do |three|
    score = 2 if three.all?(2)
    score = 1 if three.all?(1)
  end
  
  return score if score == 1 || score == 2
  
  score = -1 if threes.flatten.include?(0) 
  
  return score
end
