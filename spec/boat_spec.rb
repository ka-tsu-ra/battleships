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
    ship = Boat.new 3, "A1"
    expect(ship.size).to eq 3
  end

  it "should only sink when hits == size" do
    ship = Boat.new 4, "A1"
    ship.hit
    expect(ship).to_not be_sunk
  end

    it "has starting coordinates after being created" do
      expect(subject.starting_coordinate).to eq "A1"
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
      ship = Boat.new 3, "A1"
      expect(ship.placed_coordinates).to eq ["A1","A2","A3"]
    end

    it "finds coordinates when vertical" do
      ship = Boat.new 3, "A5"
      ship.rotate
      expect(ship.placed_coordinates).to eq ["A5","B5","C5"]
    end

  end

end


