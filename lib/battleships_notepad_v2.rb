# def used_coordinates size, coordinates, direction
#   array = []
#   size.times do |x|
#     array.push [coordinates[0], coordinates[1]]
#     index_depending_on_direction coordinates, direction
#   end
#   array
# end

# def index_depending_on_direction coordinates, direction
#   if direction == 'horizontal'
#     coordinates[1] += 1
#   else direction == 'vertical'
#     coordinates[0] += 1
#   end
# end


# print used_coordinates 3, [0,0], "horizontal"

# print used_coordinates 4, [1, 3], "vertical"

def vertical size, coordinates
  coords = []
    sc = coordinates[0]
    coords << sc
    (size - 1).times do
      coords << sc.next
      sc = sc.next
    end
    coords.map {|x| x + "#{coordinates[1..-1]}"}
  end

print vertical 3, "A5"