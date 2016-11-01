module BookKeeping
	VERSION = 3
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

	def difference
		square_sum 	= square_of_sum
		sum_square	=	sum_of_squares

		return (square_sum - sum_square)
	end

end

