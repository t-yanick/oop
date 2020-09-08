# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/PerceivedComplexity
# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/MethodLength
class Tic
  attr_accessor :player, :player1
  def initialize(player, player1)
	  @player = player
	  @player1 = player1
	  @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
	  @winner = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
  end

  def display_board
	  puts "  #{@board[0]} | #{@board[1]} | #{@board[2]}"
	  puts "  --+---+---"
	  puts "  #{@board[3]} | #{@board[4]} | #{@board[5]}"
	  puts "  --+---+---"
	  puts "  #{@board[6]} | #{@board[7]} | #{@board[8]}"
	  puts ""
  end

  def add_positions(piece, tic_position)
	  if tic_position < 1 || tic_position > 9 || @board[tic_position - 1] == "X" || @board[tic_position - 1] == "O"
			false
		else
			@board[tic_position-1] = piece
			true
		end
	end

  def check_winner
	  @winner.each do |tic_position|
		  if @board[tic_position[0]] == @board[tic_position[1]] && @board[tic_position[1]] == @board[tic_position[2]] && (@board[tic_position[0]] == "X" || @board[tic_position[0]] == "O")
		    if @board[tic_position[0]] == "X"
				  puts "Hello #{player} have won the game!!!"
				else
					puts "Hello #{player1} have won the game!!!"
				end
				return true
			end
		end
		return false
	end
end

choice = "y"
while choice == "y" do
	puts "Welcome to Tic-Tac-Toe Game"
	puts ""

	puts "Please Enter Your name:"
	player = gets.strip
	puts ""

	puts "Please Enter opponent's name:"
  player1 = gets.strip
  # check duplicate player entry
  while player1 == player do
		puts "#{player} is already taken. Please enter a valid name:"
		player1 = gets.strip
	end
	puts ""

	game = Tic.new(player, player1)
	turn = true
	is_playing = true

	# Game loop
	while is_playing do
		# Printing board to the screen
		game.display_board

		if turn
			turn = false
			while true do
				puts "#{game.player}. Turn 1: Enter a valid position(1-9)"
				tic_position = gets.strip.to_i
				if game.add_positions("X", tic_position)
					break
				end
			end
		else
			turn = true
			while true do
				puts "#{game.player1} Turn 2: Enter a valid position(1-9)"
				tic_position = gets.strip.to_i
				if game.add_positions("O", tic_position)
					break
				end
			end
		end

        if game.check_winner
            puts ""
            game.display_board
            puts ""
			is_playing = false
		end
	end
# User Choice to restart the game or not
	choice = nil
	while choice != "y" && choice != "n"
	  puts "Would you like to start a new game?(y/n)"
		choice = gets.strip.downcase
  end
end

# rubocop:enable Metrics/PerceivedComplexity
# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/PerceivedComplexity