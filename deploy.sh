#!/bin/bash
# Deploy script for theloftbar.uk
# Usage: SFTP_USER=xxx SFTP_PASS=xxx ./deploy.sh

set -e

# Check for required environment variables
if [ -z "$SFTP_USER" ] || [ -z "$SFTP_PASS" ]; then
    echo "Error: SFTP_USER and SFTP_PASS environment variables required"
    echo "Usage: SFTP_USER=xxx SFTP_PASS=xxx ./deploy.sh"
    exit 1
fi

SFTP_HOST="ssh.cn4oam3ha.service.one"
SFTP_PATH="webroots/807c142f"

echo "Building production site..."
npm run build

echo "Deploying to $SFTP_HOST..."
lftp -e "set sftp:auto-confirm yes; open -u $SFTP_USER,$SFTP_PASS sftp://$SFTP_HOST:22; mirror -R --verbose dist/ $SFTP_PATH/; quit"

echo "Deployment complete! Site live at https://www.theloftbar.uk"
