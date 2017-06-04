-- 3/6/17
cps(120/120)

d1 $ slow 2 $ n ("d7 a7 [c6 e7] e7") # sound "rash"
d1 $ n (off 0.25 (+7) $ slow 2 $ "d7 a7 [c6 e7] e6") # sound "rash" # gain "0.99"

-- prog
d1 $ n (off 0.25 (+7) $ slow 2 $ "d7(3,8) a7 [c6 e7] e6") # sound "rash" # gain "0.98"
d1 $ n (off 0.25 (+7) $ slow 2 $ "d7(3,8) a7 [c6 e7*2] e6(3,8)") # sound "rash" # gain "0.98"
d1 $ n (off 0.25 (+7) $ slow 2 $ "d7(3,8) a7 [c6(3,8,2) e7*2] e6(3,8)") # sound "rash" # gain "0.97"
d1 $ n (slow 2 $ off 0.125 (+12) $ off 0.25 (+7) $ slow 2 $ "d7(3,8) a7 [c6(3,8,2) e7*2] e6(3,8)") # sound "rash" # gain "0.96"
d1 $ off (0.25) (# s "pulse") $ n (slow 2 $ off 0.125 (+12) $ off 0.25 (+7) $ slow 2 $ "d7(3,8) a7 [c6(3,8,2) e7*2] e6(3,8)") # sound "rash" # gain "0.93"
-- # play with cutoff 1000, # cutoff (sine1  * 2000) # resonance 0.2
d1 $ jux rev $ off (0.25) (# s "pulse") $ n (slow 2 $ off 0.125 (+12) $ off 0.25 (+7) $ slow 2 $ "d7(3,8) a7 [c6(3,8,2) e7*2] e6(3,8)") # sound "rash" # gain "0.9" # cutoff (sine1  * 2000) # resonance 0.2

-- end
d1 $ degradeBy 0.6 $ jux rev $ off (0.25) (# s "pulse") $ n (slow 2 $ off 0.125 (+12) $ off 0.25 (+7) $ slow 2 $ "d7(3,8) a7 [c6(3,8,2) e7*2] e6(3,8)") # sound "rash" # gain "0.9"


-- fs:7 -> reverb
d2 $ stack [
  slow 2 $ n "[~ [~ 0]]" # s "super808" # sustain "0.5" # gain "1.3",
  slow 6 $ s "fs:1 ~ fs:9 ~ fs:1 ~ fs:9 ~ fs:1 ~ [fs:1 fs:7] ~" # gain "1.2",
  sound "~ [fs:3 [fs:3]" # gain "1" # sustain "0.5"
]

d2 $ stack [
  slow 2 $ n "[~ [~ 0]]" # s "super808" # sustain "0.5" # gain "1.3",
  slow 6 $ s "fs:1 ~ fs:9 ~ fs:1 ~ fs:9 ~ fs:1 ~ [fs:1 fs:7] ~" # gain "1.2",
  sound "~ [fs:3 [fs:3 fs:3?]]" # gain "1" # sustain "0.5"
]

-- end
d2 $ slow 2 $ stack [
  slow 2 $ n "[~ [~ 0]]" # s "super808" # sustain "0.5" # gain "1.3",
  slow 6 $ s "fs:1 ~ fs:9 ~ fs:7 ~ fs:9 ~ fs:1 ~ fs:7 ~" # gain "1.3",
  sound "~ [fs:3 fs:3]" # gain "1" # sustain "0.5"
]
hush
