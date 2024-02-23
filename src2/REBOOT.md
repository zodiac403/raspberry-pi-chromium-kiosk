# Reboot via Cron

Check reboot command location

    whereis reboot

Open crontab editor (for user `root`), select editor

    sudo crontab -e

Insert reboot command (command location from above)

    x x x x /usr/sbin/reboot >> /var/log/z-reboot.log 2>&1

(Optional:) Check crontab jobs

    sudo crontab -l
