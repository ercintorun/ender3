## 🔧 ADXL345 Method 2 - 2 ADXL on Raspberry Pi

Follow the instructions on Klipper documentation how to install Raspberry pi as a second MCU and enabling the SPI. 
- https://www.klipper3d.org/RPi_microcontroller.html

You could use spi0 and share the mosi miso and sclk with both chips and use CE0 and CE1 as ADLX345s enable pin. SPI is not designed to use 2 devices at once on the bus but the input calibration doesn't use both at the same time so this is an acceptible setup.

Configuration

    [mcu rpi]
    serial: /tmp/klipper_host_mcu
    [adxl345 hotend]
    cs_pin: rpi:None
    spi_bus: spidev0.0
    [adxl345 bed]
    cs_pin: rpi:None
    spi_bus: spidev0.1
    [resonance_tester]
    accel_chip_x: adxl345 hotend
    accel_chip_y: adxl345 bed
    probe_points: 125, 110, 20

Both ADXL345's will share the same SDA, SDO and SCL, each will have their own CS pin. The config i posted above is accurate for what I'm about to list below for wiring. Remember the RPI MCU does the CS muxing so "cs_pin: rpi:None" is valid for both.

    Both
    SDA = RPI Pin 19 = GPIO10 (SPI0_MOSI)
    SDO = RPI Pin 21 = GPIO09 (SPI0_MISO)
    SCL = RPI Pin 23 = GPIO11 (SPI0_SCLK)
    3V3 (or VCC) = RPI Pin 01 = RPI Pin Name "3.3v DC power"
    GND = RPI Pin 06 = RPI Pin Name "Ground"

    ADXL345 hotend
    CS = RPI Pin 24 = GPIO08 (SPI0_CE0)

    ADXL345 bed
    CS = RPI Pin 26 = GPIO07 (SPI0_CE1)


Pins for spi reference as well as Klipper Doc [SPI Pinout](https://pinout.xyz/pinout/spi) 

  <img src="./adxl345/raspberry-pinout.JPG" alt="RaspberryPi Pinout"/>


Source for the information: 
- https://www.reddit.com/r/klippers/comments/qkk7un/two_adxl345s_on_one_raspberry_pi/
- https://www.reddit.com/r/klippers/comments/qkk7un/comment/hj0s9gj/ 
