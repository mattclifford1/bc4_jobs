# Login via ssh
## bypass VPN
To login without using VPN use the uni ssh server forwarding eg:
```
ssh -J un12345@seis.bris.ac.uk un12345@bc4login.acrc.bris.ac.uk
```

## bypass password entry
To copy your local machine's ssh public key to save typing your password everytime use eg:
```
ssh-copy-id -i ~/.ssh/id_ed25519.pub un12345@seis.bris.ac.uk
```
and
```
ssh-copy-id -i ~/.ssh/id_ed25519.pub un12345@bc4login.acrc.bris.ac.uk
```

## store command
Add the ssh command to ~/.bashrc to save typing out the command eg:
```
alias bc4='ssh -J un12345@seis.bris.ac.uk un12345@bc4login.acrc.bris.ac.uk'
```



# Submit jobs on blue crystal

- edit `submit_job.sh` to include your own account and the modules you want to load (use `$ module avail` on a login node to see what modules you want to load).
- edit `run.sh` to include the code you want to run with different parameters.
- submit all jobs using `$ ./run.sh` when logged into the login node on bluecrystal.
