def who_is_winner(pieces_position_list)
  #le code
  return "Draw" if pieces_position_list == []
  board = [
  [".",".",".",".",".","."],
  [".",".",".",".",".","."],
  [".",".",".",".",".","."],
  [".",".",".",".",".","."],
  [".",".",".",".",".","."],
  [".",".",".",".",".","."],
  [".",".",".",".",".","."]
  ]

  array = ("A".."G").to_a
  pieces_position_list.each do |piece|
    arr = piece.split("_")
    board[array.index(arr[0])][board[array.index(arr[0])].index(".")] = arr[1]

    break if check_win(board)
  end

  check_win(board) ? check_win(board) : "Draw"

end

def check_win(board)
  return check_col(board.transpose) unless check_col(board.transpose).nil?
  return check_col(diagonals(board.transpose)) unless check_col(diagonals(board.transpose)).nil?
  return check_col(board) unless check_col(board).nil?
end



def check_col(board)
  board.each do |col|
    a = col.each_cons(4).find { |a| a.uniq.size == 1 && a.first != '.' }
    return a.first unless a.nil?
  end
  nil
end

def diagonals(board)
    # generate diagonals from grid
    right, left = [], []
    board.each.with_index { |row, i|
      right << ["."] * i + row + ["."] * (5-i)
      left  << ["."] * (5-i) + row + ["."] * i
    }
    right.transpose + left.transpose
end
