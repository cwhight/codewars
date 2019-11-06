def isValidWalk(walk)
  #your code here
  return walk.length == 10 && walk.count('s') == walk.count('n') && walk.count('e') == walk.count('w')
end
