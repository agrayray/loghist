#!/bin/bash

##
# The script will log the history to a personalized
# history log folder.
#
# NOTE: In order for this script to run correctly,
#	it must be run within the existing shell:
#		$ . loghist
#	If not run this way, the log file will be
#	empty
#
# date:	  2016-11-27
##

# Location to write the logs
LOCATION=~/Documents/History/

# mkdir -p will create $LOCATION if it doesnt exist and wont if it does
mkdir -p $LOCATION

# vars for stamping on filename of outputfile
HOST_NAME=$(hostname)		# short hostname
TIME_STAMP=$(date +%s)		# time in UTC seconds since 1970-01-01

# for now remove hostname from filename
# FILE_NAME=${LOCATION}${HOST_NAME}_${TIME_STAMP}.log
# just use history_<timestamp>.log
FILE_NAME=${LOCATION}history_${TIME_STAMP}.txt

history | cut -c 8- > $FILE_NAME

echo "history logged to '$FILE_NAME'"
