# tiktok-backup
Backs up tiktok accounts in case of disasters.


Put this script in an empty directory and set it as a daily cron job. Make sure to change the working directory to the backup directory before running the script. (ie "cd /var/backups/tiktok && ./update.sh")

Create directories of tiktok screen names. It will automatically back up all the content on that account in the folder.

Needs yt-dlp to be installed first. Use apt install yt-dlp.
