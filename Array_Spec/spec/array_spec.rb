require '00_array'
require 'rspec'

describe Array do
  describe "#my_uniq" do
    let(:array) { [1,2,3,7,3,2,4] }
  
    it "should return an array containing only unique items" do
      expect(array.my_uniq).to eq([1,2,3,7,4])
    end
    
    it "should return the array in the same order as the original" do
      expect(array.my_uniq).to eq([1,2,3,7,4])
    end
  end
  
  describe "#two_sum" do
    let(:array) { [1,1,-1,5,-5,-1] }
    
    it "should find all pairs of positions where the elements at those positions sum to zero" do
      expect(array.two_sum).to include([0,2],[0,5],[1,2],[1,5],[3,4])
    end
    
    it "should return pairs sorted dictionary-wise" do
      expect(array.two_sum).to eq([[0,2],[0,5],[1,2],[1,5],[3,4]])
    end
  end
  
  describe "#my_transpose" do
    let(:array){[
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ]}
    let(:result){[
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ]}
    it "converts between the row-oriented and column oriented representations"   do
      expect(array.my_transpose).to eq(result)
    end
    
    it "should  " do
      
    end
  end
    
  
end