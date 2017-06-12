-- 11/6/17
cps (140/120)

d4 $ slow 1.5 $ degradeBy 0.15 $ jux rev $ n (off 0.125 (+12) $ off 0.25 (+7) $ slow 4 $ "d6(3,8) e7(3,8) f7(3,8) g7(3,8)" + "<0 7 12 2>")
  # sound "jvbass"
  # gain 0.8
  # room 0.4
  # orbit 0

d1 $ sound "amencutup*2" # n (irand 16) # orbit 1
d1 $ someCycles (fast 2) $ sound "amencutup*2" # n (irand 16) # orbit 1
d1 $ someCycles (slow 2) $ n (run "<4 8 4 6 10 1 8 9>") # sound "amencutup" # orbit 1
d1 $ iter 4 $ every 9 (density 2) $ slow 4 $ n "0 .. 15" # sound "amencutup" # orbit 1


 -- # crush 4

d2 $ s "fs:1*2" # gain 0.7 # orbit 1
d3 $ s "bd*2" # hpf 100 # gain 0.7 # orbit 1

d2 silence

-- step 2
d4 $ slow 1.5 $ degradeBy 0.5 $ jux rev $ n (off 0.125 (+12) $ off 0.25 (+7) $ slow 4 $ "d6(3,8) e7(3,8) f7(3,8) g7(3,8)" + "<0 7 12 2>")
  # sound "jvbass"
  # gain 0.7
  |+| n "-48"
  # hpf (slow 4 $ sine * 800 + 50)
  # hpq 0.3
  # room 0.5
  # orbit 0


hush