#!/bin/bash

#first of all : 07c6fa9eddca4608d98db5fca8a8eef0d you!

# ABOUT WGET___, https://www.gnu.org/software/wget/
# GNU Wget is a free software package for retrieving files using HTTP, HTTPS, FTP and FTPS,
# the most widely used Internet protocols. It is a non-interactive commandline tool, 
# so it may easily be called from scripts, cron jobs, terminals without X-Windows support, etc

        # more on wget__
        #    Wget can follow links in HTML, XHTML, and CSS pages,
        #   to create local versions of remote web sites,
        #   fully recreating the directory structure of the original site.
        #   This is sometimes referred to as “recursive downloading.”
        #   While doing that, Wget respects the Robot Exclusion Standard (/robots.txt). 
        #   Wget can be instructed to convert the links in downloaded files to point at the 
        #   local files, for offline viewing.

# COMMANDS USED__

# -np, --no-parent                 don't ascend to the parent directory
# -r,  --recursive                 specify recursive download
# -A,  --accept=LIST               comma-separated list of accepted extensions
# -e,  --execute=COMMAND           execute a `.wgetrc'-style command

mkdir ./crawl ; cd ./crawl
wget --recursive  -A "README*" -np -nd -l 0 -e robots=off http://192.168.8.6/.hidden/

# The grep_ filter searches a file for a particular pattern of characters,
# and displays all lines that contain that pattern

            #AND__

# wc__ stands for word count. 
# As the name implies, it is mainly used for counting purpose.
# ls__ list

    # grep and wc

COUNTLINES = `ls | grep README | wc -l`
README = "README."
COUNT = $(($COUNTLINES  - 1))

# Separate and index the README.COUNT files
while [ $COUNT != 0 ]
do
	CURRENTREADME =$README$COUNT
	RES =`cat $CURRENTREADME | grep 2`
	printf "%s" $RES
	COUNT=$(($COUNT-1))
done
# find file with the regex
printf "%s" `cat "README" | grep -E [0-9a-f]{64}`
