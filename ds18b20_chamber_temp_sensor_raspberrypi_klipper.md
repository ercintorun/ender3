[mcu host]
serial: /tmp/klipper_host_mcu
[temperature_sensor Chamber]
sensor_type: DS18B20
serial_no: 10-00080291bf97
ds18_report_time = 3.0
sensor_mcu: host

a DS18B20 to GPIO4 (you have to enable 1wire via sudo raspi-config).

Call sudo raspi-config
Activate the 1-wire interface
Reboot
Call lsmod | grep -i w1_ to verify that the needed Kernel modules are actually loaded 


https://klipper.discourse.group/t/ds18b20-temperature-sensor-configuration/8429/4
