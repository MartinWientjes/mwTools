echo " Cleanup started"
cd ~
sudo find . -name "Thumbs.db" -type f -exec rm {} \;
sudo find . -name ".DS_Store" -depth  -type f -exec rm {} \;
sudo find . -name ".BridgeCacheT" -depth  -type f -exec rm {} \;
echo "Part 1 finished"

sudo rm -rfv /Volumes/*/.Trashes; 
sudo rm -rfv ~/.Trash; 
sudo rm -rfv /private/var/log/asl/*.asl; 
sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
