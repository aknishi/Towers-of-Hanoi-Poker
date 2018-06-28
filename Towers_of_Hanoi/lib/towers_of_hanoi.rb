
class TowersOfHanoi
  attr_accessor :towers
  
  def initialize
    @towers = [[3,2,1], [], []]
  end
  
  
  def play
    until won?
      
    end
  end
  
  def won?
    if (towers[0].empty? && towers[1].empty?) || towers[0].empty? && towers[2].empty?
      return true
    end
    false
  end
    
  def valid_move?(from_tower, to_tower)
    return false unless [from_tower, to_tower].all? { |i| i.between?(0, 2) }
    return false if towers[from_tower].empty?
    return true if !(@towers[from_tower].empty?) && @towers[to_tower].empty?
    towers[to_tower].last > towers[from_tower].last
  end
  
  def move(from_tower, to_tower)
    raise "There are no discs there" if towers[from_tower].empty?
    raise "You cannot put a larger disc on a smaller one" unless valid_move?(from_tower, to_tower)
    towers[to_tower] << towers[from_tower].pop
  end
  
end