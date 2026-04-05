#!/bin/bash

# create-user.sh — creates a new Linux user with SSH access

USERNAME=$1

if [ -z "$USERNAME" ]; then
  echo "Usage: ./create-user.sh <username>"
  exit 1
fi

useradd -m -s /bin/bash "$USERNAME"
mkdir -p /home/$USERNAME/.ssh
chmod 700 /home/$USERNAME/.ssh
chown -R $USERNAME:$USERNAME /home/$USERNAME/.ssh

echo "✅ User '$USERNAME' created with SSH directory"
