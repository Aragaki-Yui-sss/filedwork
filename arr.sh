#!/bin/bash
awk -v line=$(awk '/<[A-Za-z]*\> fully_connected1.affine/{print NR}' text.raw) '{if(NR>line && NR <=line+120){print $0}}' text.raw > fc1_weights.txt
awk -v line=$(awk '/<[A-Za-z]*\> fully_connected2.affine/{print NR}' text.raw) '{if(NR>line && NR <=line+120){print $0}}' text.raw > fc2_weights.txt
awk -v line=$(awk '/<[A-Za-z]*\> fully_connected3.affine/{print NR}' text.raw) '{if(NR>line && NR <=line+120){print $0}}' text.raw > fc3_weights.txt
awk -v line=$(awk '/<[A-Za-z]*\> fully_connected4.affine/{print NR}' text.raw) '{if(NR>line && NR <=line+120){print $0}}' text.raw > fc4_weights.txt
awk -v line=$(awk '/<[A-Za-z]*\> output.affine/{print NR}' text.raw) '{if(NR>line && NR <=line+4){print $0}}' text.raw >  output_weights.txt
sed -i 's/]//g' fc1_weights.txt
sed -i 's/]//g' fc2_weights.txt
sed -i 's/]//g' fc3_weights.txt
sed -i 's/]//g' fc4_weights.txt
sed -i 's/]//g' output_weights.txt
