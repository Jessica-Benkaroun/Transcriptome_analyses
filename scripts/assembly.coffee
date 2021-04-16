##Transcriptome Assembly step using Penaeus vannamei (Pacific white shrimp)
#as a reference genome:
#Download the reference genome at the following location as a fasta format:
https://www.ncbi.nlm.nih.gov/genome/?term=Penaeus+vannamei
#Concatenate the different transcriptome tissues with the following command to create one dataset file containing all tissues cleaned sequecninf reads:
cat tissue1 tissue2 tissue3 > dataset_trimmed.fastq.gz
#The first step of the assembly is to index the reference genome using the tool BWA:
./bwa index reference_genome.fasta
# The dataset cleaned will be aligned to the reference genome with the algorithm BWA-MEM from the BWA tool:
./bwa mem reference_genome.fasta dataset_trimmed.fastq.gz > dataset_aligned.sam
# The alignement is saved as a SAM file named dataset_trimmed.sam
# We will convert the alignement in the SAM fromat to a BAM format using Samtools:
./samtools view -S -b dataset_aligned.sam > dataset_aligned.bam
# The alignement need to be sorted with the following command:
./samtools sort -o dataset_aligned_sorted.bam dataset_aligned.bam
# Record the number of reads that have been aligned to the refrence genome with the following:
./samtools flagstat dataset_aligned_sorted.bam
# We will use the tool IGV to vizualise our alignement
