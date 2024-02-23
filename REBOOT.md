# Reboot via Cron

_Optional:_ Configure cron job for reboot.

Check reboot command location

    whereis reboot

Open crontab editor (for user `root`), select editor

    sudo crontab -e

Insert reboot command (command location from above)

    0 4 * * /usr/sbin/reboot >> /var/log/z-reboot.log 2>&1

(Optional:) Check crontab jobs

    sudo crontab -l
