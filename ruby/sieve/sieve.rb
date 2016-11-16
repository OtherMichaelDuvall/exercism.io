module BookKeeping
VERSION = 1
end

class Sieve
  def initialize(natural_number)
    @range_limit = natural_number
  end

  def primes
    interval_range = [*2..Math.sqrt(@range_limit).round]
    not_primes     = Array.new 
    
    interval_range.each do |interval|
      multiplier = 0
      begin 
        not_prime = interval**2 + (multiplier * interval)
        not_primes << not_prime
        multiplier += 1
      end while not_prime < @range_limit
    end

    primes = [*2..@range_limit] - not_primes 
  end

end
