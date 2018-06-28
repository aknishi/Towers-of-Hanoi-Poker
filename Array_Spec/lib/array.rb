class Array
  
  def my_uniq
    result = []
    each do |el|
      result << el unless result.include?(el)
    end
    
    result
  end
  
  def two_sum
    result = []
    each_index do |i|
      next if i == length - 1
      j = i + 1
      while j < length
        if self[i] + self[j] == 0
          result << [i, j]
        end
         j += 1
      end
    end
    
    result
  end
  
  def my_transpose
    result = []
    each.with_index do |row, row_idx|
      new_row = []
      row.each_index do |col_idx|
        new_row << self[col_idx][row_idx]
      end
      result << new_row
    end
    
    result
  end
  
end