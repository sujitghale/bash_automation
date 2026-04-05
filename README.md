# Bash Automation Scripts for Linux SysAdmin

A collection of Bash scripts to automate routine 
Linux administration tasks.

## Scripts Included
| Script | Purpose |
|--------|---------|
| backup.sh | Compressed timestamped backups |
| log_cleanup.sh | Auto-delete logs older than N days |
| create_user.sh | Create Linux user with SSH access |
| health_check.sh | CPU, memory, disk usage report |

## How to Use
chmod +x backup.sh
./backup.sh

## Cron Setup
 you schedule with Cron
# open corn tab
`corntab -e `

# for demo to run backup everyday at 2 am
0 2 * * * /home/user/scripts/backup.sh >> /var/log/backup.log 2>&1
