class Hamming
  def self.compute(dna1, dna2)
    strand_one, strand_two = dna1.split(""), dna2.split("")
    mutations = 0

    raise ArgumentError.new("Sequence lengths differ") if strand_one.length != strand_two.length

    strand_one.each_with_index do |sequence, i|
      if strand_one[i] != strand_two[i]
        mutations += 1
      end
    end
    mutations
  end
end
