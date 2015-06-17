require 'boat'

describe Boat do

  it {is_expected.to respond_to :floating?}

  it {is_expected.to respond_to :hit}

  it "should be created floating" do
    expect(subject).to be_floating
  end

  it "should sink when hit" do
    subject.hit
    expect(subject.floating?).to eq false
  end

  it "should be created size 1 by default" do
    expect(subject.size).to eq 1
  end

  it "can be sunk" do
    subject.hit
    expect(subject).to be_sunk
  end

end
