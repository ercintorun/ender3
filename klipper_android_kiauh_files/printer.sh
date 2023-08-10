!/bin/bash
rm -rf /home/pi/printer_data/logs/*
echo "logs cleaned"
chmod 777 /dev/ttyACM0
echo "ttyttyACM0 chmod configured"
service klipper restart
echo "klipper service restarted"
sleep 2
service telegrambot restart 
echo "telegrambot restarted"

