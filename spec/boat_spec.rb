require 'boat'

describe Boat do

  it {is_expected.to respond_to :floating?}

  it {is_expected.to respond_to :hit}

  it "should be created floating" do
    expect(subject).to be_floating 
  end

  # it "should sink when hit" do
  #   subject.hit
  #   expect(subject.floating?).to eq false
  # end

  it "should be created size 1 by default" do
    expect(subject.size).to eq 1
  end

  it "can be sunk" do
    subject.size.times {subject.hit}
    expect(subject).to be_sunk
  end

  it "can create boats of different sizes" do
    ship = Boat.new 3
    expect(ship.size).to eq 3
  end

  it "should only sink when hits == size" do
    ship = Boat.new 4
    ship.hit
    expect(ship).to_not be_sunk
  end
end
