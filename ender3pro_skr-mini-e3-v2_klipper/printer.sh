!/bin/bash
rm -rf /var/log/
echo "/var/log cleaned"
rm -rf /tmp/*
echo "/tmp cleaned"
rm -rf /home/pi/.octoprint/logs/*
echo "octoprint logs cleaned"
rm -rf /home/pi/.octoprint/generated/.webassets-cache/*
echo "octoprint webassests-cache cleaned"
rm -rf /var/cache/*
echo "/var/cache cleaned"
rm -rf /root/.cache/*
echo "/root/.cache cleaned"
rm -rf ./.cache/*
echo "./.cache cleaned"
chown pi /dev/ttyACM0
echo "ttyttyACM0 chown pi"
service klipper restart
echo "klipper service restarted"
sleep 2
chmod a=rwX /tmp/printer
echo "klipper tmp-printer chmod changed"
service octoprint stop
service octoprint start
echo "octoprint restarted"
