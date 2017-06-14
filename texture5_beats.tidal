-- 11/6/17
cps (133/120)

-- cycle 1
d1 $ juxBy 0.6 (|*| speed 2) $ loopAt "<4 6 2 3>" $ chop 12 $ sound "fm:14" # gain 0.75 # delay 0.25 # delayfeedback 0.15 # delaytime 0.2 # room 0.15 # size 0.1 # orbit 0

-- ver speed "1.5 2 1 1.7"
-- cycle 2
d2 $ someCycles (# crush 3) $ n "0 .. 7" # sound "feel" # speed "1.5 2" # gain 1 # hcutoff 300 # orbit 1
d2 $ someCycles (# crush 3) $ n "0 .. 7" # sound "feel" # speed "1.5 2 1.2" # gain 1 # hcutoff 300 # orbit 1

-- motive 2: degradeBy 0.4
d2 $ degradeBy 0.4 $ someCycles (# crush 3) $ n "0 .. 7" # sound "feel" # speed 2 # gain 1 # hcutoff 300 # orbit 1

d3 $ loopAt 2 $ sound "breaks125" # gain 1.1 # orbit 2
d4 $ s "bd:2*2" # hpf 60 # gain 1 # orbit 3

-- cycle 3
do
  d2 silence
  d3 $ loopAt 2 $ sound "breaks125" # gain 1.1 # orbit 2
  d1 $ juxBy 0.6 (|*| speed 3) $ loopAt "<3 6 4 6>" $ chop 12 $ sound "fm:14" # gain 0.75 # delay 0.25 # delayfeedback 0.15 # delaytime 0.2 # room 0.15 # size 0.1 # orbit 0

-- cycle 4 ¿?
d4 $ s "bd:2*2" # hpf 60 # gain 1 # orbit 3

-- cycle 4
do
  d4 silence
  d3 silence
  d2 $ degradeBy 0.25 $ someCycles (# crush 3) $ n "0 .. 7" # sound "feel" # speed "1.5 2 1" # gain 1 # hcutoff 300 # orbit 1
  d1 $ juxBy 0.6 (|*| speed 2) $ loopAt "<4 6 2 3>" $ chop 12 $ sound "fm:14" # gain 0.75 # delay 0.25 # delayfeedback 0.15 # delaytime 0.2 # room 0.15 # size 0.1 # orbit 0


-- cycle 5, ALL
do
  d3 silence
  d4 $ s "bd:2*2" # hpf 60 # gain 1 # orbit 3
  d3 $ loopAt 2 $ sound "breaks125" # gain 1.1 # orbit 2
  d2 $ degradeBy 0.1 $ someCycles (# crush 3) $ n "0 .. 7" # sound "feel" # speed 2 # gain 1 # hcutoff 300 # orbit 1
  d1 $ juxBy 0.6 (|*| speed 2) $ loopAt "<3 6 4 6>" $ chop 12 $ sound "fm:14" # gain 0.75 # delay 0.25 # delayfeedback 0.15 # delaytime 0.2 # room 0.15 # size 0.1 # orbit 0


do
  d3 silence
  d4 $ s "bd:2*2" # hpf 60 # gain 1 # orbit 3
  d3 $ loopAt 2 $ sound "breaks125" # gain 1.1 # orbit 2
  d2 $ degradeBy 0.35 $ someCycles (# crush 3) $ n "0 .. 7" # sound "feel" # speed 2 # gain 1 # hcutoff 300 # orbit 1
  d1 $ degradeBy 0.3 $ juxBy 0.6 (|*| speed 2) $ loopAt "<4 6 2 3>" $ chop 12 $ sound "fm:14" # gain 0.75 # delay 0.25 # delayfeedback 0.15 # delaytime 0.2 # room 0.15 # size 0.1 # orbit 0

do
  d3 silence
  d4 $ s "bd:2*2" # hpf 60 # gain 0.9 # orbit 3
  d2 $ degradeBy 0.5 $ someCycles (# crush 3) $ n "0 .. 7" # sound "feel" # speed "1.5 2 1 2.1" # gain 1 # hcutoff 300 # orbit 1
  d1 $ degradeBy 0.69 $ juxBy 0.6 (|*| speed 2) $ loopAt "<4 6 2 3>" $ chop 12 $ sound "fm:14" # gain 0.75 # delay 0.25 # delayfeedback 0.15 # delaytime 0.2 # room 0.15 # size 0.1 # orbit 0

d4 silence

-- ALL
do

hush