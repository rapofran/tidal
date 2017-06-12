cps (107/120)

-- drum 1
d2 $ stack [
  slow 2 $ n "0" # s "super808" # hpf 80 # sustain 0.6 # gain 0.9,
  slow 2 $ n "~ 5 ~ ~" # s "super808" # gain 0.9 # sustain 0.3,
  slow 2 $ s "~ cp ~ ~" # gain 0.9,
  s "superhat*2" # gain 0.85 # sustain 0.2,
  slow 2 $ sound "~ [[~ fs:6] ~] ~ ~" # gain 0.9 # sustain 0.8,
  slow 2 $ n "~ ~ f5 ~" # s "supergong" #  vowel "<a e i>" # gain 0.8 # sustain 1
] # orbit 1

d1 $ every 4 (jux (# accelerate "0.045")) $ slow 2 $ n "g1 ~ ~" # s "supersaw" # sustain 2 # gain 0.7 # orbit 0

-- drum 2
d3 $ stack [
  slow 2 $ n "[0 0] ~ [0 0] ~" # s "superkick" # gain 1.1 # sustain "2",
  slow 2 $ n "~ c5 ~ c5" # s "superhat" # gain 1.1 # sustain "0.8",
  slow 4 $ sound "~ [~ [fs:3 fs:6]] ~ [~ [fs:4  fs:3]] ~ [~ [fs:3 fs:6]] ~ [~ [fs:4  fs:3*3]]" # gain 1
] # orbit 2

d1 silence

d5 $ slow 4 $ n "[~ c3] ~ [~ gs2] ~ ~ [g2] ~ ~ ~ ~" # s "superpwm" # sustain "0.9 0.9 1" # gain 1 # orbit 4
d5 $ slow 4 $ n "[c2 c3] ~ [~ gs2] ~ ~ [g2] ~ ~ ~ ~" # s "superpwm" # sustain 0.7 # gain 1 # orbit 4
d5 $ slow 4 $ n "[c2 c3] ~ [~ gs2] ~ ~ [g2] ~ [g2 g3] ~ ~" # s "superpwm" # sustain 0.5 # gain 1 # orbit 4
d5 $ slow 4 $ n "[c2 c3] ~ [~ gs2] ~ ~ [gs2 g2] ~ g3 ~ ~" # s "superpwm" # sustain 0.5 # gain 1 # orbit 4

-- different sustain
-- add density 2 (or 4)
-- degradeBy 0.3 y 0.6
d4 $ density 2 $ degradeBy 0.3 $ density 2 $ every 4 (jux (rev)) $ n "<[f4 g4] [ds4 f4] [c4 ds4] [~]>"
  # s "superpwm"
  # sustain 0.5
  # gain 0.7
  # delay "0.5"
  # delayfeedback "0.2"
  # delaytime "0.2"
  # cutoff (slow 4 sine1  * 4000)
  # resonance 0.15
  # orbit 3

-- later
  # crush 3

d7 $ s "bd:3*2" # gain 1.1-- LOL
d7 silence
d6 $ stut 5 0.5 0.2 $ sound "bd sn" # gain 1.1

do
  d2 silence
  d3 silence
  d4 silence
  d7 silence
  d6 silence
  d2 $ density 2 $ sound "fs:3" # gain 1 # sustain 0.8


hush