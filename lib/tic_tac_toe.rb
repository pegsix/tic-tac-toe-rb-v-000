def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], # Top row win_combination[0]
  [3,4,5],  # Middle row win_combination[1]
  [6,7,8],  # Bottom row win_combination[2]
  [0,3,6],  # Left column win_combination[3]
  [1,4,7],  # Middle column win_combination[4]
  [2,5,8],  # Right column win_combination[5]
  [0,4,8],  # 1st diagonal win_combination[6]
  [2,4,6]  # 2nd diagonal win_combination[7]
]