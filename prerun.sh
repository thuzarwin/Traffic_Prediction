#!/usr/bin/env bash

mkdir output
mkdir result
touch result.csv
cd data
python preprocess.py
cd ..

pdsh -w node\[1-10\] sh run.sh