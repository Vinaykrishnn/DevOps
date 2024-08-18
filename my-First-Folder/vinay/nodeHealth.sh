#!/bin/bash
#####################################
#Author: Vinay Krishna Tiwari
#Date: 17/08/24
#
##This script oytputs the node health
#
#Version v1
#
#####################################

#debug mode
set -x

#exit when the script  when there is an error
set -e

#pipe fail
set -o



echo "This is the disk details"
df -h
echo "This is the memory details"
free -g
echo "The number of CPUs are"
nproc

echo "Process running by amazon"
ps -ef | grep amazaon 

echo "2nd Column details of process running by amazon"
ps -ef | grep amazon | awk '{print $2}'

