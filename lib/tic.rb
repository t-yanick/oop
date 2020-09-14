# rubocop : disable Layout/LineLength
# rubocop : disable Metrics/BlockNesting

class Tic
  attr_reader :winner
  def initialize
    @usrboard = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
    @move_number = 0
    @winner = false
  end

  def current_board
    "\n #{@usrboard[0][0]} | #{@usrboard[0][1]} | #{@usrboard[0][2]} \n"\
    "----------- \n"\
    " #{@usrboard[1][0]} | #{@usrboard[1][1]} | #{@usrboard[1][2]} \n"\
    "----------- \n"\
    " #{@usrboard[2][0]} | #{@usrboard[2][1]} | #{@usrboard[2][2]} \n"
  end

  def move(x_pos, y_pos, player2)
    @usrboard[x_pos][y_pos] = player2
    @move_number += 1
    check_winner(x_pos, y_pos, player2) if @move_number > 4
  end

  def check_winner(x_pos, y_pos, player2)
    @winner = check_row(x_pos, player2)
    return @winner if @winner

    @winner = check_col(y_pos, player2)
    return @winner if @winner

    @winner = check_diagonals(x_pos, y_pos, player2) if x_pos == y_pos || (x_pos - y_pos).abs == 2
  end

  def reset_board
    @usrboard = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
    @move_number = 0
    @winner = false
  end

  def empty_position?(x_pos, y_pos)
    @usrboard[x_pos][y_pos] == ' '
  end

  private

  def check_row(y_pos, player2)
    @usrboard[y_pos].all? { |i| i == player2 }
  end

  def check_col(x_pos, player2)
    @usrboard.all? { |i| i[x_pos] == player2 }
  end

  def check_diagonals(x_pos, y_pos, player2)
    if (x_pos - y_pos).abs == 2
      j = 2
      3.times do |i|
        return false unless @usrboard[i][j] == player2

        j -= 1
      end
      return true
    end

    3.times { |i| return false unless @usrboard[i][i] == player2 }
    true
  end
end

# rubocop : enable Layout/LineLength
# rubocop : enable Metrics/BlockNesting
