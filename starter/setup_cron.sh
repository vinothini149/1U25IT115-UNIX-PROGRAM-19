bin/bash

# Linux Crontab Assignment

# TODO 1: Determine the absolute path of cron_job.sh
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CRON_SCRIPT="$SCRIPT_DIR/cron_job.sh"

# TODO 2: Create a cron entry that runs cron_job.sh every minute
CRON_ENTRY="* * * * * $CRON_SCRIPT"

# TODO 3 & 4: Install the cron entry without duplicates
( crontab -l 2>/dev/null | grep -vF "$CRON_SCRIPT"; echo "$CRON_ENTRY" ) | crontab -

# TODO 5: Display the current user's crontab
crontab -l
