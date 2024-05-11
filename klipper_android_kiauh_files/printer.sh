!/bin/bash
rm -rf /home/pi/printer_data/logs/*
echo "logs cleaned"
rm -rf /var/log/
echo "/var/log cleaned"
rm -rf /tmp/*
echo "/tmp cleaned"
rm -rf /var/cache/*
echo "/var/cache cleaned"
rm -rf /root/.cache/*
echo "/root/.cache cleaned"
rm -rf ./.cache/*
echo "./.cache cleaned"
chown pi /dev/ttyACM0
echo "ttyttyACM0 chown pi"
chmod 777 /dev/ttyACM0
echo "ttyttyACM0 chmod configured"
sudo chmod a=rwX /tmp/printer
echo "klipper tmp-printer chmod changed"
service klipper restart
echo "klipper service restarted"
sleep 2
service telegrambot restart 
echo "telegrambot restarted"
service moonraker restart
echo "moonraker restarted"
