#!/bin/bash
Source = "/location"
day = 30
logfile = "/logs/logfile.txt"

mkdir -p "$logfile"

find "$source" -type f -mtime +$day -print -delete >> "$logfile" 2>&1
