module BookKeeping
VERSION = 4
end

class Complement  
  def self.of_dna(sequence)
    dna_nucleotides = 'ACGT'
    
    return '' if /[^#{dna_nucleotides}]/.match(sequence)
    sequence.gsub(/[#{dna_nucleotides}]/, 'A'=>'U', 'C'=>'G', 'G'=>'C', 'T'=>'A')
  end
end
