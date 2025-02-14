DNA <- 'ATACGTGATTGAATTACTCCAAAACTGGATTACTTCCGCCACTTGTTACCAACCTGTTCTGCTAGTAACTAGTTATCGGTGCAAATATCGATGGTTAGAGGAATTCGTACCCGCGGGTTCAAAAACCGCACTAAGAGAGATTACATGCTGTTGATCTATGCATTTGCAACCTCGAATCATCTGTGACCGTCTGGAAGGTCGAAATCAGGTTCAATACTACAATGCGCGGGGAGCGCTTTCAAATAGGGAAATCTATGACATCGACTCTTGATCATTACAGCGAGGCTTGCGCTGCCTATAAATAGTGAGGATAATTATTCTCGACAAGAACAAGCGTTTCGGTCGTTACCCGTGGGGCTGAGCGATACTCTATTACTATAGGGGCCTTCGTACTATTCTCGTCGAGGTACTTATAAGTAACCCATCGGGTTGATTAAGCCTAGTTTTGAGGTATTATAGACCTACAGTGGAGTGTTACTACTCGAACTAACGTGCAAATAGTTTCGTTTGAACAGGGGTAAAGATTGTGCCCAACTCGGCAGCGCTATTTAGCCGTTGTGACGCTTGAAAAGTGACCAGGGGCTGGGTGTTAACGAGTGATGAGCCGTCACGGCCGGCTGTATAACGTTGGCCGTTATCCTAGCATTGGCAGCTGGCCTCGGCGCTAATCACGAAATGTCGAGTCTTGATTTCCACCGAGGCGATCCGCACATCAATACAACGCGTATCCCTGGAAGAAGAGGGTCGATCGCGACCTTGCGGCTTCAAATACTCTATGTCGCGGGGCGGTAACCGCTGAGTCACGGATACACCCTTATTAATAAAGTAAACTAAGCGACTAGGTTCAAAGAGAAACACGGTGATGTGCTCTTAATGCGCGACGAGTGAGAATCCAACCTTCCTACACAATCAGGGCAACTGAGAATCGGCAGATGTCTTCAAATCATGTAGTAGCTTCCCGCCCC'
test <- strsplit(DNA,split=NULL)[[1]]
test <- rev(test)
# it is a good idea to initialise your result array to the correct length
# otherwise R guesses a length and spends time copying and reallocating the array 
# when this is exceeded
Complement = character(length=nchar(DNA))

for (i in 1:length(test)) {
  if (test[i] =='A') {
    Complement[i] = 'T'
  } else if (test[i] =='T') {
    Complement[i] = 'A'
  } else if (test[i] =='C') {
    Complement[i] = 'G'
  } else if (test[i] =='G') {
    Complement[i] = 'C'
  }
}

Complement <- paste(Complement, collapse = '')
print(Complement)
