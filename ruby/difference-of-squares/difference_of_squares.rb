module BookKeeping
  VERSION = 3
end

class Squares

  def initialize(int)
    @integers = (1..int)
  end

  def square_of_sum
    @integers.reduce(:+)**2
  end

  def sum_of_squares
    @integers.inject { |sum, square| sum + square**2 }
  end

  def difference
    if @integers.last.zero?
      return 0
    else
      square_of_sum - sum_of_squares
    end
  end
end
