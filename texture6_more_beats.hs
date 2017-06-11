cps (130/120)

-- polirritmia
d2 $ sound (samples "click*7" (run 12)) # gain 1 # crush 2

d2 silence


d2 $ stut 4 0.5 0.3 $ sound "bd sn" # gain 1
d2 $ n (toScale [0, 4, 7] "0 1 2 3 4") # sound "jvbass"

-- good drums
d1 $ someCycles (fast 2) $ sound "amencutup*8" # n (irand 16)
d1 $ every 2 (slow 2) $ n (run 8) # sound "amencutup"
d1 $ n (run "<4 8 4 6>") # sound "amencutup"
d1 $ iter 4 $ slow 2 $ n "0 .. 15" # sound "amencutup"
d2 $ sound "bd*8" # vowel "a e i" # crush 3