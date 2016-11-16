module BookKeeping
VERSION = 1
end

class Sieve 
  def initialize(number_input)
    @start_at = [4, 6, 10, 14, 22, 26]
    @interval = [2, 3, 5, 7, 11, 13]
    @number   = number_input
  end

  def primes
    not_prime ||= []
    index = 0

    @interval.each do |interval|
      (@start_at[index]..@number).step(interval) { |x| not_prime << x }
      index += 1
    end
    
    primes = [*2..@number] - not_prime
  end

end
