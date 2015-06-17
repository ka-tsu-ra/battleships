require 'boat'

describe Boat do

  it {is_expected.to respond_to :floating?}

  it {is_expected.to respond_to :hit}

  it "should be created floating" do
    expect(subject).to be_floating
  end

  # it "should be created size 1 by default" do
  #   expect(subject.size).to eq 1
  # end

  it "can be sunk" do
    subject.size.times {subject.hit}
    expect(subject).to be_sunk
  end

  it "can create boats of different sizes" do
    ship = Boat.new 3, [2, 3]
    expect(ship.size).to eq 3
  end

  it "should only sink when hits == size" do
    ship = Boat.new 4, [2, 6]
    ship.hit
    expect(ship).to_not be_sunk
  end

    it "has starting coordinates after being created" do
      expect(subject.coordinates).to eq [0, 0]
    end

  context "direction" do

      it "defaults to horizontal" do
        expect(subject.direction).to eq "horizontal"
      end

      it "can set direction using set_direction" do
        subject.rotate
        expect(subject.direction).to eq 'vertical'
      end

      it "is horizontal after two rotates" do
        2.times { subject.rotate }
        expect(subject.direction).to eq "horizontal"
      end

  end

  context "coordinates" do

    it "finds coordinates when horizontal" do
      ship = Boat.new 3, [0,0]
      expect(ship.used_coordinates).to eq [[0,0],[0,1],[0,2]]
    end

    it "finds coordinates when vertical" do
      ship = Boat.new 3, [1,5]
      ship.rotate
      expect(ship.used_coordinates).to eq [[1,5],[2,5],[3,5]]
    end

  end

end


