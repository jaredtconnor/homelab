#!/bin/bash

# Function to set permissions if a directory exists
set_permissions() {
  local dir=$1
  local uid=${2:-911} # Default to 911 if no UID specified
  local gid=${3:-911} # Default to 911 if no GID specified

  if [ -d "$dir" ]; then
    echo "Setting ownership and permissions for $dir with UID:GID = $uid:$gid..."
    chown -R $uid:$gid "$dir"
    chmod -R 775 "$dir" # Give group write permissions
  else
    echo "Directory $dir does not exist. Skipping..."
  fi
}

# Check and apply permissions for common directories
# Use the environment variables if set, otherwise fall back to defaults
USER_ID=${PUID:-911}
GROUP_ID=${PGID:-911}

for dir in "/data" "/downloads" "/config"; do
  set_permissions "$dir" "$USER_ID" "$GROUP_ID"
done

# Exit successfully
exit 0
