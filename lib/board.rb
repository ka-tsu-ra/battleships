require_relative './boat.rb'

class Board
  attr_accessor :board

  def initialize
    @board = []
  end

  def place boat
    fail "This spot isn't on the board" unless board.include? (boat.coordinates) 
    board << boat
  end

end
