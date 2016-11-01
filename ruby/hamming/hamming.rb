module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(dna1, dna2)
    strand_one, strand_two = dna1.chars ,dna2.chars

    raise ArgumentError.new("Sequence lengths differ") unless strand_one.length == strand_two.length
    strand_one.zip(strand_two).count { |sequence_one, sequence_two| sequence_one != sequence_two }
  end
end
