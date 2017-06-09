cps (130/120)

d1 $ sound (samples "click*7" (run 12)) # gain 0.8

d2 $ stut 4 0.5 0.2 $ sound "bd sn" # gain 0.8

d3 $ s "bd:3*2" # gain 0.9
d3 silence

d1 $ n (toScale [0, 4, 7] "0 1 2 3 4") # sound "supermandolin"

hush

