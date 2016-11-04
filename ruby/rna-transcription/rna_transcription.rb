class Complement

  def self.of_dna(sequence)
    dna_nucleotides = 'ACGT'
    if sequence.each_char {|c| /#{c}/.match(dna_nucleotides) } 
      sequence.gsub(/[#{dna_nucleotides}]/, 'A'=>'U', 'C'=>'G', 'G'=>'C', 'T'=>'A')
    else
      return "x"
    end
  end
end
