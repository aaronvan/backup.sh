#!/bin/bash

#delete leftover a.out files
find . -type f -name a.out -delete

echo Backing up ${HOME} to C:
# zip up the directory, excluding all hidden files
tar -czf "/mnt/c/Users/aaron/Pengwin/backups/pengwin_home.tgz" --exclude='.*' "${HOME}" 
# unzip tarball
gunzip -d "/mnt/c/Users/aaron/Pengwin/backups/pengwin_home.tgz"
# extract into directory
tar -xf "/mnt/c/Users/aaron/Pengwin/backups/pengwin_home.tar" -C "/mnt/c/Users/aaron/Pengwin/backups/"
# clean up 
echo Cleaning up
sleep 3
rm "/mnt/c/Users/aaron/Pengwin/backups/pengwin_home.tar"
echo Backup complete.
