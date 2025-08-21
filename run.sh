#!/bin/bash

# Check if Rscript is installed
if ! command -v Rscript &> /dev/null
then
    echo "Rscript could not be found. Please install R."
    exit
fi

# Run the R script
echo "Running the quadratic equation solver..."
Rscript main.R
