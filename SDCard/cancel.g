; cancel.g
; called when a print is cancelled after a pause.

M104 S0     ; turn off temperature
M140 S0     ; turn off heatbed
M107        ; turn off fan