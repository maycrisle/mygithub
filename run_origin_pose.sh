#!/bin/bash
cd /home/lexiaoxia/work/project_ov_dynamic/open_vins/build
cmake ..
make -j3

# 实验：原始openvins的结果

starttimes=(
  "0" #mh01
  "0" #mh02
  "0" #mh03
  "0" #mh04
  "0" #mh05
  "0" #v101
  "0" #v102
  "0" #v103
  "0" #201
  "0" #202
#   "0" #203
)
configpaths=(
  "mh01"
  "mh02"
  "mh03"
  "mh04"
  "mh05"
  "v101"
  "v102"
  "v103"
  "v201"
  "v202"
#   "v203"
)
gtnames=(
  "MH_01_easy"
  "MH_02_easy"
  "MH_03_medium"
  "MH_04_difficult"
  "MH_05_difficult"
  "V1_01_easy"
  "V1_02_medium"
  "V1_03_difficult"
  "V2_01_easy"
  "V2_02_medium"
#   "V2_03_difficult"
)
nums=(
  "0" 
  "1"
  "2"
  "3"
  "4"
  "5"
  "6"
  "7"
  "8"
  "9"
)

for i in ${nums[@]}; do
  ./devel/lib/ov_msckf/run_noros_msckf \
  ../ov_msckf/config/pgeneva_serial_eth_${configpaths[i]}.yaml \
  ../output/pose_${configpaths[i]}_${starttimes[i]}.txt \
  >> ../output/output_${configpaths[i]}_${starttimes[i]}.txt

  echo "${configpaths[i]}: ${starttimes[i]}" >> ../output/results_${starttimes[i]}.txt;

  evo_ape tum \
  /home/lexiaoxia/work/project_ov_dynamic/ov_groundtruth/${gtnames[i]}.txt \
  ../output/pose_${configpaths[i]}_${starttimes[i]}.txt \
  -va >> ../output/results_${starttimes[i]}.txt
done
