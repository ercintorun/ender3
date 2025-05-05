The Ender 3's stepper motors have a max current of 840mA (594mA RMS), and running them at 580mA RMS (near max) can cause overheating and skipped steps. The 580mA value likely comes from stock settings, but for Klipper, this should be converted to RMS—about 410mA. It's recommended to set run_current to 0.410A for the X, Y, and Z motors and remove hold_current. The extruder motor can safely stay at 0.500A due to its higher 1A max rating.

source:
- https://www.reddit.com/r/klippers/comments/s3aqnv/ender3pro_skr_e3_mini_rpi3a_with_klipper_on/
