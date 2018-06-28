require 'towers_of_hanoi'
require 'rspec'

describe TowersOfHanoi do
  subject(:towers) {TowersOfHanoi.new}
  
  # describe "#initialize" do 
  #   it "should initialize the game with 3 discs in the first tower" do
  #     expect(game.towers[0]).to eq([3,2,1])
  # 
  #   end
  # 
  #   it "should initialize the game with tower2 and tower 3 empty" do
  #     expect(game.towers[1]).to eq([])
  #     expect(game.towers[2]).to eq([])
  #   end
    
  describe "#move" do 
    it "should move a disc from a tower to another tower" do
      expect {towers.move(0,1)}.not_to raise_error
    end
    
    it "should raise and error if player tries to move a disc from an empty tower" do
      expect {towers.move(1,2)}.to raise_error("There are no discs there")
    end
    
    it "should raise and error if player tries to move to a tower with a smaller disc" do
      towers.move(0,1)
      expect {towers.move(0,1)}.to raise_error("You cannot put a larger disc on a smaller one")
    end
    
  end
  
  describe "#won" do 
    it "should be true if all discs were moved to tower 2" do
      towers.move(0, 1)
      towers.move(0, 2)
      towers.move(1, 2)
      towers.move(0, 1)
      towers.move(2, 0)
      towers.move(2, 1)
      towers.move(0, 1)
      expect(towers).to be_won
    end

    it "is won when all disks are moved to tower 3" do
      towers.move(0, 2)
      towers.move(0, 1)
      towers.move(2, 1)
      towers.move(0, 2)
      towers.move(1, 0)
      towers.move(1, 2)
      towers.move(0, 2)
      expect(towers).to be_won
    end
  
  end
    
end