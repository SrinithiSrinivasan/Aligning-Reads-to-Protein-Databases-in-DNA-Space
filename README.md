# CompGenome

This is the repo to the final project for Fall 2021 Computational Genomic: Sequences, 

Team 647 Alina Guo, Srinithi Srinivasan, Chen Wang, Gary Yang



Please be sure that you have the following packages downloaded and python module downloaded

1. Bowtie2
2. Samtools
3. gunzip
4. makeblastdb
5. Matplotlib
6. Numpy
7. Biopython

To reproduce the results, please follow this instruction.

*1. All the data is a folder called "data". PLEASE redownload all the data WITH COMMANDS (be sure you are in the main directory)

  ```
  cd data &&
  bash get_data.sh && 
  cd ..
 ``` 
 
This will take about 1 minute depending on your network connectivity.

*2 Please open SixFrame.ipynb, click on "RUN ALL" under the "RUN" drop-down menu. Or simply run through all cells in order, whichever way you prefer. (This takes about 6 minutes)


*3 Please call 

  ```
  bash script_running_bowtie2.sh 
  ```
  
This should generate a sam file called "gQ23IRL96296_nt_encoded.sam" in the main directory. The sam file contains all the mapped query reads. This file is needed for analysis later. (This takes about 2 minutes)

*4 Please call
  ```
  bash script_running_blast.sh
  ```
  (a one-liner for converting fastq to fasta is obtained from https://onestopdataanalysis.com/fastq-to-fasta/)
  
*5 Running BLAST in the background with 8 threads
  ```
  nohup time ncbi-blast-2.12.0+/bin/blastx -db db/viraldb -query data/gQ23IRL96296.fasta -out test.out -num_threads 8 &
  ```
  
Please be ***cautious*** that this script will take about ***3~4 hours*** on a single-threaded laptop with Intel(R) Core(TM) i7-8550U CPU @ 1.80GHz. Unfortunately, I accidentally deleted the 3.5G output file, so please consider running through BLAST if you wish to reproduce the results.

*6 Please open Analysis.ipynb, click on "RUN ALL" under the "RUN" drop-down menu. Or simply click through all cells in order, whichever way you prefer.(This will take about 5 minutes)

