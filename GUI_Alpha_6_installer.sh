#!/bin/bash

#installer.sh

directory=`pwd`
file=$directory/installer.txt

zenity --text-info \
       --title "ETENLNC INSTALLER" \
       --filename=$file \
       --checkbox="I read and accept the terms"
 
#Creating a bin directory at $HOME
mkdir -p $directory/bin
bin_loc=$directory/bin

#Asking user for bin location 
bin=`zenity --file-selection \
	--title="Please select location to create binaries required for the pipeline to run" \
	--filename "/home/${USER}/" \
	--directory`
	
#Moving bin directory to assigned location
mv $bin_loc $bin

(
# =================================================================
echo "# Installing FASTP" ; sleep 5
for i in fastp hisat2 fastqc stringtie zenity samtools gffread subread salmon r-base ncbi-blast+; do
sudo apt-get install -y $i
done

# 2. CPC2
# =================================================================
echo "80"
echo "# Compiling CPC2" ; sleep 2
wget https://github.com/gao-lab/CPC2_standalone/archive/refs/tags/v1.0.1.tar.gz
gunzip v1.0.1.tar.gz
tar xvf v1.0.1.tar
cd CPC2_standalone-1.0.1 
export CPC_HOME="$PWD"
cd libs/libsvm
gunzip libsvm-3.18.tar.gz 
tar xvf libsvm-3.18.tar
cd libsvm-3.18
make clean && make

# 3. LncTar
# =================================================================
echo "99"
echo "# Compiling LncTar" ; sleep 2
wget http://www.cuilab.cn/lnctarapp/download
unzip download

# 4. 


# =================================================================
echo "# All finished." ; sleep 2
echo "100"


) |
zenity --progress \
  --title="Installing Dependencies" \
  --text="First Task." \
  --percentage=0 \
  --auto-close \
  --auto-kill

(( $? != 0 )) && zenity --error --text="Error in zenity command."

exit 0
