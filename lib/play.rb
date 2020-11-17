# Helper Methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

# Define your play method below

# accept an arg of board
#start a loop and call turn

def play(board)
  current_turn = 1
<<<<<<< HEAD
  while current_turn < 10
    turn(board)
    current_turn += 1
  end
end
=======
  while current_turn < 9
    current_turn =+ 1
    turn(board)
  end
end
>>>>>>> f58bff55dd2e483a8f12e4d6fe8e402c5f775a2e
