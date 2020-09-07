# rubocop:disable Metrics/PerceivedComplexity
def display_board(the_board)
    puts " #{the_board[0]}| #{the_board[1]}| #{the_board[2]}"
    puts "..........."
    puts " #{the_board[3]}| #{the_board[4]}| #{the_board[5]}"
    puts "..........."
    puts " #{the_board[6]}| #{the_board[7]}| #{the_board[8]}"
  end
  
  puts "Welcome to Tic Tac Toe Game"
  
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  display_board(board)
  
  puts "Guess 1: Guess the Hidden Number | Hint - Select 0-8"
  
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  display_board(board)
  #update data in an array
  position = gets.strip
  token = "x"
  board[position.to_i] = token
  
  puts "Guess 2"
  board = [" ", " ", " ", " ", "x", " ", " ", " ", "0"]
  display_board(board)
  position = gets.strip
  token = "x"
  board[position.to_i] = token
  
  puts "Guess 3"
  board = [" ", " ", "x", " ", "x", " ", " ", " ", "0"]
  display_board(board)
  position = gets.strip
  token = "x"
  board[position.to_i] = token


# rubocop:enable Metrics/PerceivedComplexity