cps (130/120)

d7 $ juxBy 0.6 (|*| speed 2) $ loopAt "<4 6 2 3>" $ chop 12 $ sound "fm:14" # gain 0.7 # orbit 0
d4 $ someCycles (# crush 3) $ n "0 .. 7" # sound "feel" # speed 2 # gain 0.8 # hcutoff 300 # orbit 1
d2 $ loopAt 2 $ sound "breaks125" # gain 1 # orbit 2
d5 $ s "bd:2*2"

hush