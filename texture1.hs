-- ordenar esto 02/06/2017
cps(112/120)

-- # cutoff (slow 6 sine1  * 2000 + 200) # resonance 0.3
d1 $ jux (# accelerate "-0.1") $ n "[-2 [-1 0]] [5*2 16]" # s "super808" # gain "0.9" # hpf 80 # orbit 0
d1 $ jux (# accelerate "-0.1") $ n "[-2 [-1 0]] [5*2 16]" # s "super808" # gain "0.9" # hpf 80 # cutoff (slow 6 $ sine1  * 2000 + 200) # resonance 0.3 # orbit 0

-- # cutoff (slow 3 sine1  * 5000) # resonance 0.1
d2 $ sound "superhat:0*8" # sustain "0.125!6 1.2" # accelerate "[0.6 -0.6]/4" # gain "1" # orbit 1
d2 $ sound "superhat:0*8" # sustain "0.125!6 1.2" # accelerate "[0.6 -0.6]/4" # gain "1" # cutoff (slow 3 sine1  * 4000) # resonance 0.1 # orbit 1
d1 silence


d3 $ s "supergong*8" # n "[c4 c5 5 3]/8" # sustain "1 0.25 2 1" # gain 0.6
d3 $ jux (# accelerate "-0.1") $ s "supergong*8" # n "[c4 c5!3 5 3]/8" # sustain "1 0.25 2 1" # gain 0.55 # orbit 2

d4 $ jux rev $ s "supermandolin*4"
  # n "[c4 c5!3 5 3]/8"
  # sustain "1.2 2 1"
  # gain "0.85 0.9 0.8"
  # delay "0.5"
  # delayfeedback "0.2"
  # delaytime "0.125"
  # orbit 2

d5 $ slow 2 $ n "e2 ~ ~ ~ ~ ~ ~ g3 ~ ~ ~ f2 ~ ~ ~ ~" # s "jx" # speed 0.25 # sustain "0.4 0.4 0.4" # gain 0.8 # orbit 3
-- play with whenmod 8 7, whenmod 8 5 OK, 5 4
d5 $ whenmod 8 5 (# speed 0.375) $ slow 2 $ n "e2 ~ ~ ~ ~ ~ ~ g3 ~ ~ ~ f2 ~ ~ ~ ~" # s "jx" # speed 0.25 # sustain "0.4 0.4 0.4" # gain "0.85" # orbit 3
d5 $ degradeBy 0.2 $ whenmod 8 5 (# speed 0.375) $ slow 2 $ n "e2 ~ ~ ~ ~ ~ ~ g3 ~ ~ ~ f2 ~ ~ ~ ~" # s "jx" # speed 0.25 # sustain "0.4 0.4 0.4" # gain "0.85" # orbit 3

d6 $ slow 2 $ n "e2(3,8) ~ g3*3 f2" # s "jx" # gain 0.8 # orbit 3
d6 $ degradeBy 0.5 $ jux rev $ slow 2 $ n "e2(3,8) ~ g3(3,4) f2" # s "jx" # gain 0.8 # orbit 3

d6 silence
hush