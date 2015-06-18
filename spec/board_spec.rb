require 'board'

describe Board do

  it { is_expected.to respond_to(:place).with(1).argument}

  it "places boats in array" do
    board = Board.new(size: 10)
    boat = double :boat, :coordinates => :A1
    subject.place(boat)
    expect(subject.board[0]).to eq boat
  end

  it "doesn't allow placement off the board horizontally" do
    boat = double :boat, :coordinates => :Z1
    expect{ subject.place boat }.to raise_error "This spot isn't on the board"
  end

  it "doesn't allow placement off the board vertically" do
    boat = double :boat, :coordinates => :A11
    expect{ subject.place boat }.to raise_error "This spot isn't on the board"
  end

  it "doesn't allow ships to overlap" do
    boat = double :boat, :coordinates => :A1
    subject.place boat
  end



end
