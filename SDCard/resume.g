; resume.g
; called before a print from SD card is resumed
;
; generated by RepRapFirmware Configuration Tool v3.2.3 on Mon Mar 15 2021 19:09:37 GMT+0100 (Mitteleuropäische Normalzeit)
G1 R1 X0 Y0 Z5 F6000                 ; go to 5mm above position of the last print move
G1 R1 X0 Y0                          ; go back to the last print move
M83                                  ; relative extruder moves
M121                                 ; Recover the last state pushed onto the stack

