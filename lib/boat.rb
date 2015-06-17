class Boat

  attr_accessor :floating, :sunk
  attr_reader :size

  def initialize
    @floating = true
    @size = 1
    @sunk = false

  end

  def floating?
    floating
  end

  def sunk?
    sunk
  end

  def hit
    self.floating = false
    self.sunk = true
  end

end
