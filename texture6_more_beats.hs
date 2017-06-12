cps (140/120)

-- polirritmia
d1 $ sound (samples "click*7" (run 12))

-- arpegiator
d2 $ slow 2 $ n (off 0.125 (+5) (toScale [0, 3, 7] "0 1 2 3 4")) # sound "jvbass"

-- good drums
d1 $ someCycles (fast 2) $ sound "amencutup*8" # n (irand 16)
d1 $ every 2 (slow 2) $ n (run 8) # sound "amencutup"
d1 $ n (run "<4 8 4 6>") # sound "amencutup"
d1 $ iter 4 $ slow 4 $ n "0 .. 15" # sound "amencutup" # gain 1
d2 $ sound "bd*4" # vowel "a e i" # orbit 1 
d2 $ sound "bd*2" # vowel "a e i"
d2 silence

-- nice
d1 $ iter 4 $ slow 3 $ n "0 .. 15" # sound "amencutup" # gain 1 # orbit 1

d3 $ slow 2 $ jux rev $ n (off 0.125 (+12) $ off 0.25 (+7) $ slow 4 $ "d6(3,8) e7(3,8) f7(3,8) g7(3,8)" + "<0 7 12 2>")
  # sound "jvbass"
  # gain 0.9
  |+| n "-48"
  # hpf (slow 4 $ sine * 1000 + 100)
  # hpq 0.3
  # room 0.5
  # orbit 0

d1 silence

d4 $ slow 2 $ jux rev $ n (off 0.125 (+12) $ off 0.25 (+7) $ slow 4 $ "d6(3,8) e7(3,8) f7(3,8) g7(3,8)" + "<0 7 12 2>")
  # sound "supercomparator"
  # gain 0.7
  |+| n "-48"
  # orbit 0



d4 $ slow 4 $ striate 16 $ sound "numbers:0 numbers:1 numbers:2"

d4 silence

hush