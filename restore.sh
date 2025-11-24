#!/bin/bash

# Configuration (REPLACE THESE WITH YOUR ACTUAL VALUES)
VOLUME_NAME="passbolt_database_volume"
BACKUP_NAME="backup_20250217110253.tar.gz"  # Example: Replace with the actual backup file name you want to restore
BACKUP_PATH="./$BACKUP_NAME" # Local path where the backup will be downloaded
SERVER_PATH="passbolt@192.168.0.209"
SERVER_FOLDER="/volume1/PassboltBackups"

# 1. Download the backup from the SFTP server
scp -O -i ./passbolt-ssh-key $SERVER_PATH:$SERVER_FOLDER/$BACKUP_NAME $BACKUP_PATH

# 2. Check if the download was successful
if [ $? -ne 0 ]; then
    echo "Error: SCP download failed. Check if the file exists on the server."
    exit 1
fi

# 4. Remove the existing volume (if it exists and you want a clean restore)
# CAUTION: This will ERASE all data in the current volume!
docker volume rm $VOLUME_NAME  # Uncomment this line ONLY if you want a clean restore

# 5. Create the volume (if you removed it in the previous step)
docker volume create $VOLUME_NAME # Uncomment this line ONLY if you removed the volume

# 6. Create a temporary container for restoration
docker run --rm -v $VOLUME_NAME:/restore -v $(pwd):/backup busybox tar -xzf /backup/$BACKUP_NAME -C /restore

# 7. Check if the restore was successful (optional)
docker run --rm -v $VOLUME_NAME:/restore busybox ls -l /restore

# 9. Cleanup the downloaded backup file (optional)
rm -f $BACKUP_PATH

echo "Restore completed successfully."
