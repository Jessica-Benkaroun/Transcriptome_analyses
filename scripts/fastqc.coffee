## Transcriptome analysis workflow:
# 1st step: data cleaning of the raw sequencing reads from transcriptomic datasets
# The quality of the raw sequencing reads is explored with the FastQC tool
# The working directory was named dataset
# Go the working directory location using the "change directory" commmand cd:
cd dataset
# for listing the content of the working directory and exploring the files with the "ls" command:
ls
# for going to the FastQC directory where the fastqc tool is:
cd FastQC
# for exploring the directory content:
ls
# the following command is use to explore all the options of the tool:
./fastqc --help
# for runing the fastqc tool on a single dataset:
./fastqc Brain_SRR5428113.fastq.gz
# run the fastqc program on all dataset using a wildcard:
./fastqc *fastqc.gz
# after running, the tool will generate a report file in HTML format that can be open
# with a web browser and images with statistics in a zip folder
