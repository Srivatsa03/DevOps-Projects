# Create archive directory if it doesn't exist
ARCHIVE_DIR="./logs_archive"
mkdir -p "$ARCHIVE_DIR"

# Create filename with current date and time
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"

# Compress the logs
tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" "$LOG_DIR"

# Log the date and time of the archive
echo "[$TIMESTAMP] Archived '$LOG_DIR' -> '$ARCHIVE_DIR/$ARCHIVE_NAME'" >> "$ARCHIVE_DIR/archive_log.txt"

echo "Done! Archive created: $ARCHIVE_DIR/$ARCHIVE_NAME"