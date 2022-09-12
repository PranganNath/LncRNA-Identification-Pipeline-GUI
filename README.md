# LncRNA-Identification-Pipeline-GUI
This is under development pipeline for analysis of LncRNA from RNA-Seq data, now with zenity GUI



MANUAL

**1. COMPONENTS**
- FASTP: For pre-processing of FASTQ files. Recommended version: 0.20.0 or above
- FASTQC: For quality checking of FASTQ files. Recommended version: 0.11.9 or above
- HISAT2: For indexing of reference genome and alignment of processed reads to reference genome. Recommended version: 2.1.0 or above
- SAMTOOLS: For interconversion of SAM and BAM file formats. Recommended version: 1.10 or above
- FEATURECOUNTS (SUBREAD PACKAGE): For quantification of gene counts. Recommended version: 2.0 or above
- STRINGTIE: For assembly of transcripts and merging. Recommended version: 2.1.1 or above
- GFFREAD: For interconversion of GTF and FASTA file formats. Recommended version: 0.11.7 or above
- CPC2: For coding potential analysis of transcripts. Recommended version: 1.0.1 or above
- NCBI TOOLKIT: For running BLAST against known transcripts. Recommended version: 2.9.0 or above
- SALMON: For quantification of transcripts. Recommended version: 0.12.0 or above
- ZENITY: For GUI. Recommended version: 3.32.0 or above
- R: For various statistical analyses. Recommended version: 3.6.3 or above
- TxIMPORT(R): For importing and normalizing SALMON quantification files. Recommended version: 1.24.0 or above
- DESeq2(R): For differential expression analysis and generation of plots. Recommended version: 1.36.0 ot above
- LNC-TAR: For predicting LncRNA-mRNA interactions. Recommended version: 1.0 and above
- miRanda: For predicting LncRNA-miRNA interactions. Recommended version: 3.3a or above
- CAPSULE-LPI: For predicting LncRNA-protein interactions. Recommended version: 1.0 and above
- RNAFOLD: For predicting secondary structures of transcripts. Recommended version: 1.99.3 or above
- SEEKR: For functional annotation of novel transcripts. Recommended version: 

**2. INSTALLING THE PIPELINE**
- Make sure you have zenity installed in your system. Currently the GUI version only supports the use of zenity as a GUI platform.
- Download the files **GUI_Alpha_6_installer.sh** and **GUI_Alpha_6_installer.txt** into a working directory.
- Run the script **GUI_Alpha_6_installer.sh** by opening your terminal in the working directory and entering 

  ```
  bash GUI_Alpha_6_installer.sh
  ```
- Make sure you have an active internet connection and admin privileges of your current system.
- Please enter your system superuser password whenever required.
- Please assign a working directory for the pipeline, when required.
- Please make sure your proxy settings allow you connection to the aptitude (APT) repository.
- All the software and packages required for running the pipeline will be installed in your system.
- Please refer to the RUNNING THE PIPELINE section for help regarding running the pipeline.

**3. RUNNING THE PIPELINE**
- Make sure you have zenity installed in your system. Currently the GUI version only supports the use of zenity as a GUI platform.
- Download the files **GUI_Alpha_6.sh** into your working directory, as specified earlier.
- Run the script 'GUI_Alpha_6.sh' by opening your terminal in the working directory and entering 

  ```
  bash GUI_Alpha_6.sh
  ```
- The GUI should guide you along with selection of input files and binaries.
- The progress bar will give you a graphical overview of the pipeline progress.
- A complete run of the pipeline with 3 human paired-ended case-control samples will take around 8 hours on a 20 threads machine. Please be patient.
- The shell, alternatively will give you the details of the tasks running at the time.
- After the completion of the run, a folder with the run name assigned by you, will be created in your $HOME directory. All the generated files can be found here.
- Please refer to the RESULTS section for help regarding interpretation of the pipeline results.

**4. INPUT FILES**
- Raw reads (.FASTQ.gz)
- Reference genome (.Fa)
- Reference annotation (.GTF)
- Reference transcriptome (.Fa)
- Known LncRNAs (.Fa)
- Binaries directory (bin)
