mkdir outputs    # comment this out if directory already made
dir="outputs/"   # you will need to make outputs directory using 'mkdir outputs'
ram="16G"        # change these
time="0-0:30"    # accordingly   
job_name="test"
lr="0.01"
sbatch -t $time -J $job_name$lr -o $dir$lr'.out' -e $dir$lr'.err' --mem=$ram submit_job.sh python Project_BC.py $lr
lr="0.001"
sbatch -t $time -J $job_name$lr -o $dir$lr'.out' -e $dir$lr'.err' --mem=$ram submit_job.sh python Project_BC.py $lr
lr="0.0001"
sbatch -t $time -J $job_name$lr -o $dir$lr'.out' -e $dir$lr'.err' --mem=$ram submit_job.sh python Project_BC.py $lr
lr="0.00001"
sbatch -t $time -J $job_name$lr -o $dir$lr'.out' -e $dir$lr'.err' --mem=$ram submit_job.sh python Project_BC.py $lr
lr="0.000001"
sbatch -t $time -J $job_name$lr -o $dir$lr'.out' -e $dir$lr'.err' --mem=$ram submit_job.sh python Project_BC.py $lr
