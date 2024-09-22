#!/bin/bash

curl -O https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzf lab3-bundle.tar.gz

tar -tzf lab3-bundle.tar.gz

awk '!/^[[:space:]]*$/' lab3_data.tsv > cleaned_file.tsv

tr '\t' ',' < cleaned_file.tsv > cleaned_file.csv

data_rows=$(tail -n +2 cleaned_file.csv | wc -l)

echo "Number of data rows (excluding header): $data_rows"

tar -czf converted-archive.tar.gz cleaned_file.csv
