#!/bin/bash

#SBATCH -J stampede2_test           # Job name

#SBATCH -o stampede2_test.o%j       # Name of stdout output file

#SBATCH -e stampede2_test.e%j       # Name of stderr error file

#SBATCH -p normal          # Queue (partition) name

#SBATCH -N 8               # Total # of nodes 

#SBATCH -n 64              # Total # of mpi tasks

#SBATCH -t 00:01:00        # Run time (hh:mm:ss)

#SBATCH --mail-user=devrjain32200@gmail.com

#SBATCH --mail-type=all    # Send email at begin and end of job

#SBATCH -A vera_scaling_startup       # Allocation name (req'd if you have more than 1)

date

python ./stampede2_test.py

date

 