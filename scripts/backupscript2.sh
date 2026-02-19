#!/bin/bash

Source = "/sourcelocatio"
Backup = "/destination/data"
logfile = "/logs/logfile.txt"

Date = $(date +F)
backupdir  =  "$backup/$Date"

mkdir -p "$backupdir"

cp -r "$Source"/* "$backupdir"/

if [$? -eq 0]; then
rm -rf "$Source"/*
echo "backup completed, Source cleaned on $(date)" >> "$logfile"
else
echo " backup not completed on $(date)" >> "$logfile"
fi