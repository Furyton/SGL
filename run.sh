#!/bin/bash

#SBATCH -e yelp_SGL.err

#SBATCH -o yelp_SGL.out
#SBATCH -J yelp_SGL

#SBATCH --partition=debug
#SBATCH --gres=gpu:1
#SBATCH --nodelist=gpu04
#SBATCH --cpus-per-task=2

#SBATCH --time=24:00:00

#SBATCH --mem=10G

#source ${HOME}/.bashrc
#cap

#bash run.sh

python main.py --recommender=SGL

