class Boat



  attr_accessor :floating, :sunk, :damage
  alias_method :floating?, :floating
  alias_method :sunk?, :sunk
  attr_reader :size

  def initialize size = 1
    @floating = true
    @size = size
    @sunk = false
    @damage = 0

  end

  # def floating?
  #   damage >= size ? self.floating = false : self.floating = true
  # end
  #
  # def sunk?
  #   !@floating
  # end

  def hit
    self.damage = damage + 1
    check_boat
  end

  def check_boat
    if check_damage
      self.floating = false
      sunk_boat
    end
  end

  def check_damage
    self.damage >= self.size
  end

  def sunk_boat
    self.sunk = true
  end
end
