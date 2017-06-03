-- ordenar esto 02/06/2017
d1 $ jux (# accelerate "-0.1") $ n "[-2 [-1 0]] [5*2 16]" # s "super808" # gain "0.9"
d2 $ sound "superhat:0*8" # sustain "0.125!6 1.2" # accelerate "[0.5 -0.5]/4" # gain "1.1"
d3 $ jux (# accelerate "-0.1") $ s "supergong*8" # n "[c4 c5!3 5 3]/8" # sustain "1 0.25 2 1" # gain "0.7"
d4 $ jux (# accelerate "-0.1") $ s "supermandolin*4" # n "[c4 c5!3 5 3]/8" # sustain "1.2 2 1"
d5 $ slow 2 $ n "e2 ~ ~ ~ ~ ~ g3 ~ ~ ~ f2 ~ ~ ~ ~ " # s "superchip" # sustain "0.7" # gain "1.2"