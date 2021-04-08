; 0:/sys/homeall.g
; Home X, Y, and Z axis

G91                                                        ; Set relative positioning.
G1 Z3 F800 H2                                              ; Lift the Z axis 3mm.

; HOME X
G1 H2 X5 F1000                                             ; Move slowly away. 
G1 H1 X-255 F3000                                          ; Move quickly to the X endstop. 
G1 H2 X5 F1000                                             ; Move slowly away. 
G1 H1 X-255 F500                                          ; Move quickly to the X endstop, a second check. 
G1 H2 X5 F1000                                             ; Move slowly away. 

; HOME Y
G1 H2 Y5 F1000                                             ; Move slowly away. 
G1 H1 Y-215 F3000                                          ; Move quickly to the Y endstop. 
G1 H2 Y5 F1000                                             ; Move slowly away. 
G1 H1 Y-215 F500                                          ; Move quickly to the Y endstops, a second check.

; HOME Z
G1 H2 Z2 F2600                                             ; Raise the Z axis 2mm to ensure it is above the Z probe trigger height.
G90                                                        ; Set absolute positioning mode.
G1 X105 Y105 F6000                                         ; Go to the center of the bed for probe point.

M558 F1000 A1                                              ; Set the Z-probe to fast for the first pass.  
G30                                                        ; Perform Z probing.
G1 H0 Z2 F1000                                              ; Lift the Z axis to the 5mm position.

M558 F200 A3 S-1                                            ; Set the Z-probe to slow for the second pass, take 5 probes and yield the average.
G30                                                        ; Perform Z probing.
G1 H0 Z5 F400                                              ; Lift the Z axis to the 5mm position.

M558 F200 A1                                               ; Set the Z-probe to normal speed.  