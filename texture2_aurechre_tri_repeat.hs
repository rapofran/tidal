cps (110/120)

-- drum 1
d2 $ stack [
  --every 4 (jux (# accelerate "0.045")) $ slow 2 $ n "g1 ~ ~" # s "supersaw" # sustain 2 # gain 0.65,
  slow 2 $ n "0" # s "super808" # sustain "0.6" # gain "1",
  slow 2 $ n "~ 5 ~ ~" # s "super808" # gain "0.9" # sustain "0.3",
  slow 2 $ s "~ cp ~ ~" # gain "0.9",
  s "superhat*2" # gain "0.75" # sustain "0.2",
  slow 2 $ sound "~ [[~ fs:6] ~] ~ ~" # gain "0.8" # sustain "0.8",
  slow 2 $ n "~ ~ f5 ~" # s "supergong" # gain "0.6" # sustain "1"
]

-- drum 2
d3 $ stack [
  slow 2 $ n "[0 0] ~ [0 0] ~" # s "superkick" # gain "1" # sustain "2",
  slow 2 $ n "~ c5 ~ c5" # s "superhat" # gain "1" # sustain "0.8",
  slow 4 $ sound "~ [~ [fs:3 fs:6]] ~ [~ [fs:4  fs:3]] ~ [~ [fs:3 fs:6]] ~ [~ [fs:4  fs:3*3]]" # gain "0.9"
]

d3 silence

-- bass 1: af1 c2 f2 d2 f1, af1 c2 f2 f1 g1 

d4 $ slow 4 $ every 4 (jux (# accelerate "0.045")) $ n "[af1] ~ [c2] ~ [f2] ~ [d2] ~ [f1*2] ~ ~"
  # s "jx"
  # gain 0.7
  # cutoff (sine1 * 1600 + 500)
  # delay "0.5"
  # delayfeedback "0.2"
  # delaytime "0.5"
  # orbit "1"

d4 $ slow 4 $ brak $ every 4 (jux (# accelerate "0.045")) $ n "[af1] ~ [c2] ~ [f2] ~ [d2] ~ [f1*2] ~ ~"
  # s "jx"
  # gain "0.70"
  # cutoff (sine1 * 1600 + 500)
  # delay "0.5"
  # delayfeedback "0.2"
  # delaytime "0.5"
  # orbit "1"

hush