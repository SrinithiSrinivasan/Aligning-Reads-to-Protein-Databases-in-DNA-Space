# Build transformed reference database
cat data/*aa_encoded.fasta > data/reference.fasta

# Build Bowtie BWT index
bowtie2-build data/reference.fasta data/reference

# Run Bowtie alignment
bowtie2 -x data/reference -f -U data/gQ23IRL96296_nt_encoded.fasta --very-sensitive-local -L 9 | samtools view -F 4 - > gQ23IRL96296_nt_encoded.sam
