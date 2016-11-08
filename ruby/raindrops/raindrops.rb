module BookKeeping
VERSION = 3
end

class Raindrops
  def self.convert(natural_number)
    raindrop = { 3 => "Pling", 5 => "Plang", 7 => "Plong" } 
    divisor  = [3, 5, 7]
    counted_drops ||= []
 
    divisor.each do |divisor_element|
      remainder = natural_number % divisor_element
      counted_drops << raindrop[divisor_element] if remainder.zero? 
    end
    
    (counted_drops.empty?) ? natural_number.to_s : counted_drops.join
  end
end

