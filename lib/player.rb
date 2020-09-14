# rubocop : disable Layout/LineLength
# rubocop : disable Metrics/BlockNesting
class Player
  attr_accessor :name
  def initialize(name, player2)
    @name = name
    @player2 = player2
    @usrboard = { 1 => [0, 0], 2 => [0, 1], 3 => [0, 2],
                  4 => [1, 0], 5 => [1, 1], 6 => [1, 2],
                  7 => [2, 0], 8 => [2, 1], 9 => [2, 2] }
  end

  def check_position?(position, board)
    xy_pos = @usrboard[position]
    board.empty_position?(xy_pos[0], xy_pos[1])
  end

  def make_move(position, board)
    xy_pos = @usrboard[position]
    board.move(xy_pos[0], xy_pos[1], @player2)
  end
end

# rubocop : enable Layout/LineLength
# rubocop : enable Metrics/BlockNesting
