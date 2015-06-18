require 'board'

describe Board do

  it { is_expected.to respond_to(:place).with(1).argument}

  it "places boats in array" do
    boat = double :boat
    subject.place(boat)
    expect(subject.board[0]).to eq boat
  end

  it "doesn't allow placement off the board" do
    boat = double(:boat), :coordinates [12,15]
    expect{ subject.place boat }.to raise_error "This grid isn't on the board"
  end




end
