#!/bin/sh

# Loop through all directories in the current directory
for dir in */ ; do
    # Remove the trailing slash from the directory name
    folderName="${dir%/}"
    
    # Run yt-dlp for the current directory
    yt-dlp --yes-playlist -i --download-archive "$folderName/arx.txt" --playlist-reverse --progress -P "$folderName/videos" -o "%(upload_date)s--%(title)s--%(channel)s--[%(webpage_url_domain)s-%(id)s].%(ext)s" --restrict-filenames --trim-filenames 200 "https://www.tiktok.com/@$folderName"
done
