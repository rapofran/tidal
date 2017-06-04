-- ordenar esto 02/06/2017
cps(109/120)

-- d1 jugar con # cutoff 300
d1 $ jux (# accelerate "-0.1") $ n "[-2 [-1 0]] [5*2 16]" # s "super808" # gain "0.9"
d2 $ sound "superhat:0*8" # sustain "0.125!6 1.2" # accelerate "[0.5 -0.5]/4" # gain "1"
d3 $ s "supergong*8" # n "[c4 c5!3 5 3]/8" # sustain "1 0.25 2 1" # gain "0.7"
d3 $ jux (# accelerate "-0.1") $ s "supergong*8" # n "[c4 c5!3 5 3]/8" # sustain "1 0.25 2 1" # gain "0.7"
d4 $ s "supermandolin*4" # n "[c4 c5!3 5 3]/8" # sustain "1.2 2 1" # gain "0.95"
d5 $ slow 2 $ n "e2 ~ ~ ~ ~ ~ ~ g3 ~ ~ ~ f2 ~ ~ ~ ~" # s "jx" # speed 0.25 # sustain "0.4 0.4 0.4" # gain "0.9"

d6 $ slow 2 $ n "e2(3,8) ~ g3*3 f2" # s "jx" # sustain "0.4 0.4 0.4" # gain "0.85"
--after
d6 $ jux rev $ slow 2 $ n "e2(3,11) ~ g3(3,4) f2" # s "jx" # sustain "1" # gain "0.85"

d5 $ slow 2 $ degradeBy 0.2 $ n "e2 ~ ~ ~ ~ ~ ~ g3 ~ ~ ~ f2 ~ ~ ~ ~" # s "jx" # speed 0.25 # sustain "0.4 0.4 0.4" # gain "0.9"

d6 silence
hush