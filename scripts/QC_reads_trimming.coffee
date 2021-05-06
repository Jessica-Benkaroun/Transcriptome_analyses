#Use of trimmomatic tool to remove adappter sequences/poor quality reads:
#for a single end read file:
java -jar trimmomatic-0.39.jar SE input.fastq.gz output_trimmed.fastq.gz
ILLUMINACLIP:Adapterfile.fa:2:40:15 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:20 MINLEN:25

#for a paired-end read file:
java -jar trimmomatic-0.39.jar PE input_1.fq.gz input_2.fq.gz output_1_trimmed.fq.gz \
output_1_untrimmed.fq.gz output_2_trimmed.fq.gz output_2_untrimmed.fq.gz \
ILLUMINACLIP:Adapterfile.fa:2:40:15 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:20 MINLEN:25

#Use of cutadapt:
cutadapt -a GCTACCTTCGCACGGTTAAAATACCGCGGCCCTTTAGTTTGATCCCAGTG -o cut1.fastq.gz output_trim.1.fastq.gz
