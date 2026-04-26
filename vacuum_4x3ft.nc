; ============================================================
;  VACUUM RASTER PROGRAM — 4 ft (X) x 3 ft (Y)
; ============================================================
;  Units  : Inches (G20)
;  Origin : X0 Y0 = front-left corner of area
;  Z      : Set manually before running (Z is NOT commanded here)
;  Area   : X0–48  x  Y0–36
;  Step   : 6 inches (adjust STEPOVER variable in header)
;           → change Y increments below if you resize it
;  Feed   : 60 in/min (adjust F value to suit your vac speed)
; ============================================================

G20          ; Inch mode
G90          ; Absolute positioning
G17          ; XY plane
G94          ; Feed per minute mode

; ---- Home / safe position ----
G0 X0 Y0     ; Rapid to start corner (Z already set by operator)

; ---- Vacuuming passes ----
; Pass 1  (Y = 0)
G1 X48 F60

; Step over
G0 Y6

; Pass 2  (Y = 6)
G1 X0 F60

; Step over
G0 Y12

; Pass 3  (Y = 12)
G1 X48 F60

; Step over
G0 Y18

; Pass 4  (Y = 18)
G1 X0 F60

; Step over
G0 Y24

; Pass 5  (Y = 24)
G1 X48 F60

; Step over
G0 Y30

; Pass 6  (Y = 30)
G1 X0 F60

; Step over
G0 Y36

; Pass 7  (Y = 36) — final edge pass
G1 X48 F60

; ---- Return to home ----
G0 X0 Y0    ; Rapid back to origin

M2           ; End of program
