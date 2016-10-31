class Squares

  def initialize(int)
    @integers = (1..int)
  end

  def square_of_sum
    @integers.reduce(:+)**2
  end


end
