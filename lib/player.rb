class Player
    attr_reader :player, :player1
    def initialize(player, player1)
      @player = player
      @player1 = player1
      @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      @winner = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    end
  end