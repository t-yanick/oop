# rubocop : disable Layout/LineLength
# rubocop : disable Metrics/BlockNesting

class Tic
  attr_accessor :board

  def display_board
     puts "  #{@board[0]} | #{@board[1]} | #{@board[2]}"
     '  --+---+---'
     "  #{@board[3]} | #{@board[4]} | #{@board[5]}"
     '  --+---+---'
     "  #{@board[6]} | #{@board[7]} | #{@board[8]}"
     ''
  end

  def add_positions(piece, tic_position)
    if tic_position < 1 || tic_position > 9 || @board[tic_position - 1] == 'X' || @board[tic_position - 1] == 'O'
      false
    else
      @board[tic_position - 1] = piece
      true
    end
  end

  def check_winner
    @winner.each do |tic_position|
      unless @board[tic_position[0]] == @board[tic_position[1]] && @board[tic_position[1]] == @board[tic_position[2]] && (@board[tic_position[0]] == 'X' || @board[tic_position[0]] == 'O')
        next
      end

    #   if @board[tic_position[0]] == 'X'
    #     "Hello #{player} have won the game!!!"
    #   else
    #     "Hello #{player1} have won the game!!!"
    #   end
    #   return true
    # end
    # false
  end
end
end

# choice = 'y'
# while choice == 'y'
#   'Welcome to Tic-Tac-Toe Game'
#   ''

#   'Please Enter Your name:'
#   player = gets.strip
#   puts ''

#   puts "Please Enter opponent's name:"
#   player1 = gets.strip

  # check duplicate player entry

#   while player1 == player
#     puts "#{player} is already taken. Please enter a valid name:"
#     player1 = gets.strip
#   end
#   puts ''

#   game = Tic.new(player, player1)
#   turn = true
#   is_playing = true

#   while is_playing
#     game.display_board

#     if turn
#       turn = false
#       loop do
#         puts "#{game.player}. Turn 1: Enter a valid position(1-9)"
#         tic_position = gets.strip.to_i
#         break if game.add_positions('X', tic_position)
#       end
#     else
#       turn = true
#       loop do
#         puts "#{game.player1} Turn 2: Enter a valid position(1-9)"
#         tic_position = gets.strip.to_i
#         break if game.add_positions('O', tic_position)
#       end
#     end

#     next unless game.check_winner

#     puts ''
#     game.display_board
#     puts ''
#     is_playing = false
#   end
#   choice = nil
#   while choice != 'y' && choice != 'n'
#     puts 'Would you like to start a new game?(y/n)'
#     choice = gets.strip!
#   end
# end

# rubocop : enable Layout/LineLength
# rubocop : enable Metrics/BlockNesting
