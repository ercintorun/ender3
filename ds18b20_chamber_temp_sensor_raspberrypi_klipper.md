Be aware that the Klipper heating code was designed around temperature sensors that provide an update every 300ms. The ds18b20 sensor can only provide updates once every second or so. You may not be able to use a heater with db18b20. If you want to use it than you need to change some part of the heater.py code (you can find the details on https://klipper.discourse.group/t/controlling-a-chamber-heater-through-a-relay-connected-to-rpi4-via-gpio-and-monitored-with-a-ds18b20/11131/18) 

Klipper Configuration

    [mcu host]
    serial: /tmp/klipper_host_mcu
    [temperature_sensor Chamber]
    sensor_type: DS18B20
    serial_no: 10-00080291bf97
    ds18_report_time = 3.0
    sensor_mcu: host

a DS18B20 to GPIO4 (you have to enable 1wire via sudo raspi-config). Use 3.3 and a gnd port also on the raspberry pi. 

    Call sudo raspi-config
    Activate the 1-wire interface
    Reboot
    Call lsmod | grep -i w1_ to verify that the needed Kernel modules are actually loaded 




Source:
https://klipper.discourse.group/t/ds18b20-temperature-sensor-configuration/8429/4
https://klipper.discourse.group/t/controlling-a-chamber-heater-through-a-relay-connected-to-rpi4-via-gpio-and-monitored-with-a-ds18b20/11131/6
