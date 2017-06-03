cps (100/120)

-- Server.default.makeGui => record in sc
-- synths https://tidalcycles.org/patterns.html#synths
d1 $ n "0(1,16)" # s "supersaw" # sustain "0.5"
d1 $ n "cf5 d5*2" # s "superhex" -- divino!
d1 $ n "cf5 d5*2" # s "supermandolin" -- efectearlo
d1 $ n "cf5 d5*2" # s "supergong" -- percusivo
d1 $ n "0(3,8) 1 3 5*3" # s "super808" -- divina
d1 $ n "cf5 d5*2" # s "superchip" # sustain "0.1" -- cf5 = b4
d1 $ n "cf5 d5*2" # s "supernoise" # sustain "0.05" -- percusivo
d1 $ n "cf5 d5*2" # s "superpwm" # sustain "0.5"

d1 $ n "-24 ~" # s "supergong" # sustain "0.4"
d2 $ n "~ -24" # s "supersaw" # sustain "0.4"
d2 silence

d1 $ slow 8 $ n "0 0 3 ~ 0 0" # s "supercomparator" # sustain "3"
d2 $ slow 4 $ every 4 (rev) $ n "[g5 df5 e5 a5], [gf5 d5 c5 g5]*3" # s "supersaw"

d1 $ jux (# accelerate "-0.1") $ n "[-2 [-1 0]] [5*2 16]" # s "super808" # gain "0.9"
d2 $ sound "superhat:0*8" # sustain "0.125!6 1.2" # accelerate "[0.5 -0.5]/4" # gain "1.1" -- linda percu

d1 $ n "0(3,8) 1 3 5*3" # s "super808" -- divina
d3 $ jux (# accelerate "-0.1") $ s "supergong*8" # n "[c4 c5!3 5 3]/8" # sustain "1 0.25 2 1" # gain "0.7"
d4 $ jux (# accelerate "-0.1") $ s "supermandolin*4" # n "[c4 c5!3 5 3]/8" # sustain "1.2 2 1"
d5 $ slow 2 $ n "e2 ~ ~ ~ ~ ~ g3 ~ ~ ~ f2 ~ ~ ~ ~ " # s "superchip" # sustain "0.7" # gain "1.2"

hush

-- drums
d1 $ slow 1.5 $ sound "bd*5? cp sn*8" # speed (scale 1 3 $ tri) # gain "1" -- probar con otros samples


d2 $ sound "arpy*4" |+| up "0 5 8 -12"

-- custom samples mine
-- 0 bd
-- 1 cp
-- 2 bd reverse R
-- 3 hh
-- 4 hh reverse R
-- 5 hh reverb
-- 6 hh 3
-- 7 cp reverb
-- 8 cp reverse R
-- 9 cp
d1 $ slow 8 $ sound "fs fs:1 fs:2 fs:3 fs:4 fs:5 fs:6 fs:7 fs:8 fs:9"
hush

d1 $ stack [
  sound (samples "fs*9" "0 ~ ~ ~ ~ ~ ~ 2 ~ ~ 2 0 ~") # gain "1",
  sound (samples "fs*9" "3 ~ [3*12] 3 ~ ~ 4") |+| pan "[0 1]*2" # gain "0.9",
  sound (samples "fs*9" "~ 9 ~ ~ ~ 9? ~ ~ ~ 7") # cut "1"
] # nudge "0.3"

hush

d1 $ sound "fs? fs:9 fs:1*8? fs:6?" # speed (scale 1 3 $ tri)

-- cylce 1
d1 $ stack [
  slow 4 $ n "[c a f e*2]*2"
  # s "arpy"
  # release "0.3"
  # gain "1"
,
  sound (samples "click*8" (run 12))
  # release "0.3"
  # delay "0.5"
  # delayfeedback "0.1"
  # delaytime "0.5"
  # orbit "1"
]

d1 $ stack [
  slow 4 $ degradeBy 0.2 $ n "[c a f e*2]*2"
  # s "arpy"
  # release "0.3"
  # delay "0.5"
  # delayfeedback "0.1"
  # delaytime "0.5"
  # orbit "0"
,
  sound (samples "click*8" (run 12))
  # release "0.3"
  # delay "0.5"
  # delayfeedback "0.1"
  # delaytime "0.5"
  # orbit "1"
,
  s $ density 1 $ "bd"
,
  degradeBy 0.5 $ s "bass1*4"
  # up "8"
  # gain "1"
  # n "5"
  # end "0.5"
  |*| up "[0 12 0 5 0]/8"
,
  s "[hh*4 hh*2]?"
  # gain "1.2"
,
  s "bd*2?"
  # gain "1"
,
 s "cp?"
] # nudge "0.3"

hush