require 'board'

describe Board do

  it { is_expected.to respond_to(:place).with(1).argument}

  it "places boats in array" do
    boat = double :boat
    subject.place(boat)
    expect(subject.board[0]).to eq boat
  end


end
