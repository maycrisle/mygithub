file = open("/home/lexiaoxia/work/git-megvii/project_lk/open_vins/debug/mh01.txt", "r")
rmse_file = open("/home/lexiaoxia/work/git-megvii/project_lk/open_vins/debug/mh01_rmse.txt", "w")

file_contents = file.readlines()
for content in file_contents:
	if 'introduction' in content:
		rmse_file.write(content)
	if 'rmse' in content:
		rmse_file.write(content)
