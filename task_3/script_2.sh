#!/bin/bash

# Load MySQL credentials from environment variables
USER=$MYSQL_USER
PASSWORD=$MYSQL_PASSWORD
HOST=$MYSQL_HOST
DB_NAME=$MYSQL_DB_NAME

# Backup directory
BACKUP_DIR= /home/user/backups
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DIR/$DB_NAME-$DATE.sql"

# Create MySQL backup
echo "Creating MySQL backup..."
mysqldump -u $USER -p$PASSWORD -h $HOST $DB_NAME > $BACKUP_FILE

if [ $? -eq 0 ]; then
  echo "Backup successful: $BACKUP_FILE"
else
  echo "Backup failed"
fi
