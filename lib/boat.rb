class Boat

  attr_accessor :floating, :sunk, :damage, :direction
  alias_method :floating?, :floating
  alias_method :sunk?, :sunk
  attr_reader :size, :starting_coordinate

  def initialize size = 1, starting_coordinate = "A1"
    @floating = true
    @size = size
    @sunk = false
    @damage = 0
    @starting_coordinate = starting_coordinate
    @direction = 'horizontal'
  end

  def hit
    self.damage = damage + 1
    check_boat
  end

  def rotate
    self.direction == 'horizontal' ? self.direction = 'vertical' : self.direction = 'horizontal'
  end

  def placed_coordinates
    if direction == "horizontal"
      coords = []
      sc = @starting_coordinate
      coords << sc
      extend_coords(coords, sc)
      coords
    elsif direction == "vertical"
      coords = []
      sc = @starting_coordinate[0]
      coords << sc
      extend_coords(coords, sc)
      coords.map {|x| x + "#{starting_coordinate[1..-1]}"}
    end
  end

  def extend_coords coords, sc
    (size - 1).times do
      coords << sc.next
      sc = sc.next
    end
  end

  # def vertical
  # coords = []
  #   sc = starting_coordinates[0]
  #   coords << sc
  #   (size - 1).times do
  #     coords << sc.next
  #     sc = sc.next
  #   end
  #   coords.map {|x| x + "#{coordinates[1..-1]}"}
  # end

  # def used_coordinates
  #   array = []
  #   size.times do |x|
  #     array.push [coordinates[0], coordinates[1]]
  #     index_depending_on_direction coordinates
  #   end
  #   @coordinates = array
  # end

  # def index_depending_on_direction coordinates
  #   if direction == 'horizontal'
  #     coordinates[1] += 1
  #   else direction == 'vertical'
  #     coordinates[0] += 1
  #   end
  # end

  private

  def check_boat
    if check_damage
      floating_boat
      sunk_boat
    end
  end

  def check_damage
    self.damage >= self.size
  end

  def sunk_boat
    self.sunk = true
  end

  def floating_boat
    self.floating = false
  end
end
