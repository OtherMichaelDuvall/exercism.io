module BookKeeping
<<<<<<< HEAD
  VERSION = 3
=======
	VERSION = 3
>>>>>>> 61baf9d3b83d812267fbb6b9a7df45e5b9c80d21
end

class Squares
	
	def initialize(integer)
		@integer = integer
	end	

	def square_of_sum
		iteration = 0
		sum = 0
		until iteration == (@integer+1) do
			sum += iteration
			iteration += 1
		end	
		return sum**2
	end

	def sum_of_squares
		iteration = 0
		sum = 0
		until iteration == (@integer+1) do
			square = iteration
			sum += (square**2)
			iteration += 1
		end
		return sum
	end

<<<<<<< HEAD
  def sum_of_squares
    @integers.inject { |sum, square| sum + square**2 }
  end

  def difference
    return 0 if @integers.last.zero?
    square_of_sum - sum_of_squares
  end
=======
	def difference
		square_sum 	= square_of_sum
		sum_square	=	sum_of_squares

		return (square_sum - sum_square)
	end
>>>>>>> 61baf9d3b83d812267fbb6b9a7df45e5b9c80d21
end

