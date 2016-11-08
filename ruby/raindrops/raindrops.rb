module BookKeeping
VERSION = 3
end

module Raindrops
  def self.convert(integer)
    rain_hash = { 3 => "Pling", 5 => "Plang", 7 => "Plong" } 
  
    drop_count = rain_hash.select { |key| integer % key == 0 }
    drop_count.empty? ? integer.to_s : drop_count.values.reduce(:+)
  end
end

