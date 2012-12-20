#!/bin/bash

# sh gen.sh 100x100 100
# sh gen.sh 400x400 400
# sh gen.sh 768x768 768
# sh gen.sh 1024x768 1024

dimensions=$1
outputDir=$2
for i in `seq 1 100`; do
 `convert -size $dimensions -gravity center -background lightblue -fill black -pointsize 72 label:$i $outputDir/test$i.png`
done