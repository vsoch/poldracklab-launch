# PoldrackLab Launch

This is a launch script to run a list of commands on the TACC grid from Wrangler.

### to load the module

      module use /home/02092/vsochat/SCRIPT/modules/launch
      module load poldracklablaunch

### to use
The file "myscript.sh" would be a list (single column) of bash commands (usually script calls) to run.

      launch -s myscript.sh

### commands that can be set

###### -s or --script
The name of the parallel script to run. (REQUIRED)

###### -r or --runtime
The maximum runtime for job. (DEFAULT 01:00:00)

###### -n or --jobname
The name of the job (DEFAULT launch)

###### -d or --cwd
Name of working directory (DEFAULT is $PWD)

###### -N or --nodes
Minimum number of nodes be allocated to this job (DEFAULT 1)

###### -t or --test
only run as a test job (DEFAULT False)

###### -q or --queue
Name of queue (DEFAULT normal)

###### -f or --qsubfile
Name of qsub file (DEFAULT will go to jobname)

###### -k or --keepqsubfile
keep qsub file (DEFAULT False (not specified) will delete file after submission)

The SLURM submission can take more commands, and there are more details that can be specified to run a job. Please add them and submit a PR, or talk to @vsoch if you would like to add commands.


### How does it work?
The launch script fills in a template script, `launch/template.slurm` with the user specified values, write the file, and submits it. This strategy was chosen because the template script is human readable. Thus, to change the script, simply change the template, and add in the new variables in `launch/launch` to be substituted in the template.
