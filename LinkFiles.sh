#!/bin/bash

###########################################################################################
# Shell script to batch link files for the Belk Product Image Producer workflow.          #
# Place all non-swatch images into the same folder as the script and run the script.      #
###########################################################################################
# This script was created by Kevin Hu on May 27th, 2016.                                  #
# Please contact 'kevin.j.hu@gmail.com' before making changes.                            #
###########################################################################################

# Change the current directory to the one containing this script.
cd "$(dirname "$0")"

# Loop through all files with .psd extension
for file in *.psd
do
# Insert the filename inside the .txt file and name the .txt file w/o the .psd extension
 echo "${file}" > $(basename "${file}" .psd).txt
done