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

=begin
This program asks us to essentially swap chars out from a string (DNA => RNA)

For this task, we set a string for the 'dna_nucleotides'

Next, we will return '' if the regexp does not fully #match the sequence
/ / = regular expression
[ ] = sort through every char in the regular expression
^ = 'not'

The next line, we utilize the String#gsub method, a hash and regular expression to
sort through each letter and swap the DNA nucleotide value with the RNA nucleotide value.
=end
