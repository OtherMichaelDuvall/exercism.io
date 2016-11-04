module BookKeeping
VERSION = 4
end

class Complement  
  def self.of_dna(sequence)
    dna_nucleotides = 'ACGT'
    
    return '' if /[^#{dna_nucleotides}]/.match(sequence)
    sequence.tr('ACGT', 'UGCA')
  end
end
