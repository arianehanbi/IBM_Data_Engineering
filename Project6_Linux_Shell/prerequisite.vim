# Download the template file 
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-LX0117EN-SkillsNetwork/labs/Final%20Project/backup.sh

# Download the zip file
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-LX0117EN-SkillsNetwork/labs/Final%20Project/important-documents.zip

# Unzip the archieve file
# `-DDo` to overwrite and not restore original modified date
unzip -DDo important-documents.zip

# Verify the file is executable using the ls command with the -l option
ls -l backup.sh

# Give executable permission only to user
chmod u+x backup.sh

# Update the file’s last modified date to now
touch important-documents/*

# Test your script using the following command
./backup.sh important-documents .

# Copy `backup.sh` to /usr/local/bin/
sudo cp backup.sh /usr/local/bin/

# Set schedule using Cron
crontab -e
*/1 * * * * /usr/local/bin/backup.sh /home/project/important-documents /home/project

sudo service cron start
sudo service cron stop
