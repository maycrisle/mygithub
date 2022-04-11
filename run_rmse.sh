#!/usr/bin/env bash
# 从结果中提取rmse的值
echo "introduction: back_lk 0.01\n" >> ../debug/mh01.txt
evo_ape tum ../ov_data/euroc_mav/MH_01_easy.txt pose.txt -va -r trans_part >> ../debug/mh01.txt

file="../debug/mh01.txt"
wfile="../debug/mh01_rmse.txt"

# 行读取
while read line 
do
	echo $line | grep rmse >> ${wfile}
	echo $line | grep intro >> ${wfile}
done < ${file}

# 空格分割读取
# for line in `cat ${file}`
# do
#  echo $line;
# done