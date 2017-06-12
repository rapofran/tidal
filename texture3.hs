-- 3/6/17
cps(120/120)

d1 $ slow 2 $ n ("d7 a7 [c6 e7] e7") # sound "rash" # gain "0.8" # orbit 1
d1 $ slow 2 $ n ("d7 a7 [c6 e7] e7") # sound "rash" # gain "0.8" # room 0.1 # size 0.1 # orbit 1
d1 $ n (off 0.25 (+7) $ slow 2 $ "d7 a7 [c6 e7] e6") # sound "rash" # gain "0.8" # room 0.1 # size 0.1 # orbit 1

-- prog
d1 $ n (off 0.25 (+7) $ slow 2 $ "d7(3,8) a7 [c6 e7] e6") # sound "rash" # gain "0.79" # room 0.1 # size 0.1 # orbit 1
d1 $ n (slow 2 $ off 0.125 (+12) $ off 0.25 (+7) $ slow 2 $ "d7(3,8) a7 [c6(3,8,2) e7*2] e6(3,8)") # sound "rash" # gain "0.78" # room 0.1 # size 0.1 # orbit 1
d1 $ off (0.25) (# s "pulse") $ n (slow 2 $ off 0.125 (+12) $ off 0.25 (+7) $ slow 2 $ "d7(3,8) a7 [c6(3,8,2) e7*2] e6(3,8)") # sound "rash" # gain "0.77" # room 0.1 # size 0.1 # orbit 1
d1 $ off (0.25) (# s "pulse") $ n (slow 2 $ off 0.125 (+12) $ off 0.25 (+7) $ slow 2 $ "d7(3,8) a7 [c6(3,8,2) e7*2] e6(3,8)") # sound "rash" # gain "0.75" # cutoff (sine1  * 6000 + 400) # resonance 0.1 # room 0.2 # size 0.2 # orbit 1

-- # play with cutoff 1000, # cutoff (sine1  * 2000) # resonance 0.2
d1 $ jux rev $ off (0.25) (# s "pulse") $ n (slow 2 $ off 0.125 (+12) $ off 0.25 (+7) $ slow 2 $ "d7(3,8) a7 [c6(3,8,2) e7*2] e6(3,8)") # sound "rash" # gain 0.72 # cutoff (sine1  * 6000 + 400) # resonance 0.2 # room 0.2 # size 0.2 # orbit 1

-- ending get bigger the room and size
-- possible ending, play with this
d1 $ degradeBy 0.55 $ jux rev $ off (0.25) (# s "pulse") $ n (slow 2 $ off 0.125 (+12) $ off 0.25 (+7) $ slow 2 $ "d7(3,8) a7 [c6(3,8,2) e7*2] e6(3,8)") # sound "rash" # gain 0.6 # cutoff (sine1  * 5000 + 200) # resonance 0.2 # room 1 # size 0.8 # orbit 1


-- fs:7 -> reverb
d2 $ slow 6 $ s "fs:7" # gain 1.1 # orbit 2

d2 $ stack [
  slow 2 $ n "[~ [~ 0]]" # s "super808" # hpf 70 # sustain 0.5 # gain 1.1,
  slow 6 $ s "fs:1 ~ fs:9 ~ fs:1 ~ fs:9 ~ fs:1 ~ [fs:1 fs:7] ~" # gain 1.1,
  sound "~ [fs:3 fs:3]" # gain 0.9 # sustain 0.5
] # orbit 2

-- play with fs:3*3?
d2 $ stack [
  slow 2 $ n "[~ [~ 0]]" # s "super808" # hpf 70 # sustain 0.5 # gain 1.1,
  slow 6 $ s "fs:1 ~ fs:9 ~ fs:1 ~ fs:9 ~ fs:1 ~ [fs:1 fs:7] ~" # gain 1.2,
  sound "~ [fs:3 [fs:3 fs:3]]" # gain 0.9 # sustain 0.5
] # orbit 2

-- end
-- degradeBy 0.25
d2 $ slow 2 $ stack [
  slow 2 $ n "[~ [~ 0]]" # s "super808" # hpf 70 # sustain 0.8 # gain 1.1,
  slow 6 $ s "fs:1 ~ fs:9 ~ fs:7 ~ fs:9 ~ fs:1 ~ fs:7 ~" # gain 1.3,
  sound "~ [fs:3 fs:3]" # gain 1 # sustain 0.6
] # orbit 2

hush