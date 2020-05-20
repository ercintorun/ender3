; Ender 3 Custom Start G-code
;*** Start Preheating ***

M140 S{material_bed_temperature_layer_0} ; Set Heat Bed temperature
M190 S{material_bed_temperature_layer_0} ; Wait for Heat Bed temperature
G28 ; Home all axes
G4 S120; Wait 2 minutes - put delay so that bed material have time to get hot, e.g. ikea mirror
M104 S{material_print_temperature_layer_0} ; Set Extruder temperature
M109 S{material_print_temperature_layer_0} ; Wait for Extruder temperature
;*** End Preheating ***
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish
;*** Single Start Tone
M300 S1000 P500 ; chirp to indicate starting to print
;*** End Single Start Tone
; End of custom start GCode
