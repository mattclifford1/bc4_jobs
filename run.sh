dir="outputs/"   # you will need to make outputs directory using 'mkdir outputs'
ram="64G"        # change these
time="0-6:00"    # accordingly   
job_name="test"
sbatch -t $time -J job_name -o $dir$job_name'.out' -e $dir$job_name'.err' --mem=$ram submit_job.sh python file_name.py arg1 arg2 etc

# then do as many jobs as you like -- change any environment variables set above as required
sbatch -t $time -J job_name -o $dir$job_name'.out' -e $dir$job_name'.err' --mem=$ram submit_job.sh python file_name.py arg1 arg2 etc
sbatch -t $time -J job_name -o $dir$job_name'.out' -e $dir$job_name'.err' --mem=$ram submit_job.sh python file_name.py arg1 arg2 etc
