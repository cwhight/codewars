def bouncingBall(h, bounce, window)
    return -1 if h <= 0 || bounce <= 0 || bounce >= 1 || window >= h
    
    passes = -1
    while h > window do
      h = h * bounce
      passes +=2 
    end
    return passes
end
