# Make a directory to keep BLAST dictionary index
mkdir db

# Concatenate all protein files
cat data/*protein.faa > db/reference.fasta

# Make BLAST dictionary (database)
makeblastdb -in db/reference.fasta -out db/viraldb -dbtype prot

# FASTQ to FASTA 
# Borrowed from "Easy Conversion FASTQ to FASTA" website
# https://onestopdataanalysis.com/fastq-to-fasta/
cat data/gQ23IRL96296.fastq | awk '{if(NR%4==1) {printf(">%s\n",substr($0,2));} else if(NR%4==2) print;}' > data/gQ23IRL96296.fasta

