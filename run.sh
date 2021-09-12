#!//bin/sh

#for file in `ls .`; do
#done
path="/home/lexiaoxia/codes/line_tracking_on_vins/build/result.txt"
if [ -f "$path" ]
then
	rm result.txt
	echo "rm result.txt" | tee -a result.txt

else
	echo "touch result.txt" | tee -a result.txt
fi


echo "start time:" $(date +"%Y-%m-%d %H:%M:%S") | tee -a result.txt
echo "./main_truth ../config/tum1_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg1_360/ start：" | tee -a result.txt
./main_truth ../config/tum1_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg1_360/ | tee -a result.txt
echo "./main_truth ../config/tum1_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg1_360/ end." | tee -a result.txt

echo "./main_truth ../config/tum1_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg1_floor/ start：" | tee -a result.txt
./main_truth ../config/tum1_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg1_floor/ | tee -a result.txt
echo "./main_truth ../config/tum1_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg1_floor/ end." | tee -a result.txt
 
echo "./main_truth ../config/tum1_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg1_room/ start：" | tee -a result.txt
./main_truth ../config/tum1_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg1_room/ | tee -a result.txt
echo "./main_truth ../config/tum1_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg1_room/ end." | tee -a result.txt

echo "./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM//home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_desk/ start：" | tee -a result.txt
./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_desk/ | tee -a result.txt
echo "./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM//home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_desk/ end." | tee -a result.txt

echo "./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_large_no_loop/ start：" | tee -a result.txt
./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_large_no_loop/ | tee -a result.txt
echo "./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_large_no_loop/ end." | tee -a result.txt

echo "./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_large_with_loop/ start：" | tee -a result.txt
./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_large_with_loop/ | tee -a result.txt
echo "./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_large_with_loop/ end." | tee -a result.txt

echo "./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_long_office_household/ start：" | tee -a result.txt
./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_long_office_household/ | tee -a result.txt
echo "./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_long_office_household/ end." | tee -a result.txt


echo "./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_pioneer_slam3/ start：" | tee -a result.txt
./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_pioneer_slam3/ | tee -a result.txt
echo "./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_pioneer_slam3/ end." | tee -a result.txt

echo "./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_structure_notexture_far/ start：" | tee -a result.txt
./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_structure_notexture_far/ | tee -a result.txt
echo "./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_structure_notexture_far/ end." | tee -a result.txt

echo "./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_structure_notexture_near/ start：" | tee -a result.txt
./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_structure_notexture_near/ | tee -a result.txt
echo "./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_structure_notexture_near/ end." | tee -a result.txt

echo "./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_desk_with_person/ start：" | tee -a result.txt
./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_desk_with_person/ | tee -a result.txt
echo "./main_truth ../config/tum2_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg2_desk_with_person/ end." | tee -a result.txt

echo "./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_sitting_static/ start：" | tee -a result.txt
./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_sitting_static/ | tee -a result.txt
echo "./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_sitting_static/ end." | tee -a result.txt

echo "./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_sitting_xyz/ start：" | tee -a result.txt
./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_sitting_xyz/ | tee -a result.txt
echo "./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_sitting_xyz/ end." | tee -a result.txt

echo "./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_walking_halfsphere/ start：" | tee -a result.txt
./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_walking_halfsphere/ | tee -a result.txt
echo "./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_walking_halfspherer/ end." | tee -a result.txt

echo "./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_walking_rpy/ start：" | tee -a result.txt
./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_walking_rpy/ | tee -a result.txt
echo "./main_truth ../config/tum3_config.yaml /home/lexiaoxia/data/TUM/rgbd_dataset_freiburg3_walking_rpy/ end." | tee -a result.txt





echo "end time:" $(date +"%Y-%m-%d %H:%M:%S") | tee -a result.txt
