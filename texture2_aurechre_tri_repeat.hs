cps (102/120)

-- bass 1: af1 c2 f2 d2 f1, af1 c2 f2 f1 g1
d1 $ every 4 (jux (# accelerate "0.045")) $ slow 2 $ n "g1 ~ ~" # s "supersaw" # sustain "2.7" # gain "0.7"

d1 $ every 4 $ slow 2 $ n "[af1] [c2] [f2] [d2] [f1]" # s "supersaw" # sustain "2.7" # gain "0.7"
d1 $ every 4 (jux (# accelerate "0.045")) $ slow 2 $ n "[g1 ~ ~ g2 ~ ~ g2 ~ ~ g2 ~ ~ af2 ~ ~]/6" # s "supersaw" # sustain "2.7" # gain "0.7"
d1 $ every 4 (jux (# accelerate "0.045")) $ slow 2 $ n "af2 ~ ~" # s "supersaw" # sustain "2" # gain "0.75"
d1 silence

-- drum 1
d2 $ stack [
  slow 2 $ n "0" # s "super808" # sustain "0.5" # gain "0.9",
  slow 2 $ n "~ 5 ~ ~" # s "super808" # gain "0.8" # sustain "0.3",
  slow 2 $ s "~ cp ~ ~" # gain "0.8",
  s "superhat*2" # gain "0.65" # sustain "0.2",
  slow 2 $ sound "~ [[~ fs:6] ~] ~ ~" # gain "0.7" # sustain "0.8",
  slow 2 $ n "~ ~ f5 ~" # s "supergong" # gain "0.5" # sustain "1"
]

-- drum 2
d3 $ stack [
  slow 2 $ n "[0 0] ~ [0 0] ~" # s "superkick" # gain "0.95" # sustain "2",
  slow 2 $ n "~ c5 ~ c5" # s "superhat" # gain "0.95" # sustain "0.8",
  slow 2 $ sound "~ [~ [fs:3 fs:6]] ~ [~ [fs:4  fs:3]]" # gain "0.8"
]


hush  