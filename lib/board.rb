require_relative './boat.rb'

class Board
  attr_accessor :board
  attr_reader :size

  def initialize(size: 10)
    @size  = size
    @board = []
  end

  def place boat
    fail "This spot isn't on the board" unless within_grid?(boat.coordinates)
    board << boat
  end

  def within_grid?(coordinates)
    return false if (coordinates[0].ord - 65 > size)
    return false if (coordinates[1..-1].to_i > size)
    true
  end

end
