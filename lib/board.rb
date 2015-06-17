class Board

  attr_accessor :board

  def initialize
    @board = []
  end

  def place boat
    board << boat
  end

end
