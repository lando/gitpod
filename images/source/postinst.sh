#!/bin/bash

# Scripts to run after we install Lando

set -e -x

LANDO_ROOT=/usr/share/lando
PATH=$PATH:/usr/local/bin
TERM=xterm

# Set some permissions
chmod 755 -R "$LANDO_ROOT"

# Symlink all our binaries
mkdir -p /usr/local/bin
ln -sf "$LANDO_ROOT/bin/lando" /usr/local/bin/lando

# Strictly grab all sudoers
SUDOERS=$(awk -F':' '$1 == "sudo" {print $4}' /etc/group)

# Transform sudoers into IFS default separation and loop
for u in ${SUDOERS//,/ }
do
  usermod -a -G docker $u
done
