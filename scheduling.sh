#!/bin/bash

logfile=job_results.log
echo "The script ran at: $(date)" > $logfile

at 21:55 -f ./scheduling.sh