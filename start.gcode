; Printer start gcode
M117 [input_filename_base]
M190 S[first_layer_bed_temperature]
M104 S[first_layer_temperature] ; set extruder temp, but don't wait
G28 ; home all axes
G1 Z5 F5000 ; lift nozzle

M107 ; turn off fan
M221 S100 ; set flow to 100
M109 S[first_layer_temperature] ; wait for hotend temperature
G21 ; set units to millimeters
G90 ; use absolute coordinates
; M82 ; use absolute distances for extrusion
M83 ; use relative distances for extrusion
G0 X0 Y0 F9000 ; go to front
; G0 Z[layer_height] ; drop to bed
G0 Z[first_layer_height] ; drop to bed

; START ver1
; G92 E0 ; zero the extruded length
; G1 E8 ; purge bubble
; G92 E0 ; zero the extruded length
; G1 Y40 E20 F500 ; extrude 20mm of filament in a 40mm line
; G92 E0 ; zero the extruded length
; G1 E-1 F500 ; retract a little
; G1 Y80 F4000 ; Quickly wipe away from the filament line
; XXX
; G1 Z0.32 ; raise and begin printing
; G92 E0 ; zero the extruded length
; END ver1

; START based on prusa
G92 E0 ; zero the extruded length
G1 E8 ; purge bubble
G1 Y60.0 E9.0 F1000.0 ; intro line
G1 Y100.0 E12.5 F1000.0 ; intro line
G92 E0 ; zero the extruded length
; END based on prusa
