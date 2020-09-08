# rubocop:disable Metrics/PerceivedComplexity
# class Board
def display_board(the_board)
  #   puts " #{the_board[0]}| #{the_board[1]}| #{the_board[2]}"
  #   puts "..........."
  #   puts " #{the_board[3]}| #{the_board[4]}| #{the_board[5]}"
  #   puts "..........."
  #   puts " #{the_board[6]}| #{the_board[7]}| #{the_board[8]}"
  # end
  
  # puts "Welcome to Tic Tac Toe Game"
  
  # board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  # display_board(board)
  
  # puts "Guess 1: Guess the Hidden Number | Hint - Select 0-8"
  
  # board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  # display_board(board)
  #update data in an array

  # position = gets.strip
  # token = "x"
  # board[position.to_i] = token
  
  # puts "Guess 2"
  # board = [" ", " ", " ", " ", "x", " ", " ", " ", "0"]
  # display_board(board)
  # position = gets.strip
  # token = "x"
  # board[position.to_i] = token
  
  # puts "Guess 3"
  # board = [" ", " ", "x", " ", "x", " ", " ", " ", "0"]
  # display_board(board)
  # position = gets.strip
  # token = "x"
  # board[position.to_i] = token

# end


# rubocop:enable Metrics/PerceivedComplexity


class Board

  def initialize(the_board)
    @box1 = the_board[1]
    @box2 = the_board[2]
    @box3 = the_board[3]
    @box4 = the_board[4]
    @box5 = the_board[5]
    @box6 = the_board[6]
    @box7 = the_board[7]
    @box8 = the_board[8]
    @box9 = the_board[9]
    @victory = false
  end

  def row(r1, r2, r3)
    " #{r1} | #{r2} | #{r3} "
  end

  def separation
    "--- --- ---"
  end

  def display_board
    @row1 = row(@box1, @box2, @box3)
    @row2 = row(@box4, @box5, @box6)
    @row3 = row(@box7, @box8, @box9)
    puts "#{@row1}\n #{separation}\n #{@row2}\n #{separation}\n #{@row3}\n "
  end

  def player_choice(the_board, box)
    board_state_array[box - 1] = 'X'
  end

  def victory?
    @victory = true if @box1 == @box4 && @box1 == @box7
  end
end