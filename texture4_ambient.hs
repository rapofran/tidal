cps (60/120)
d1 $ n "<[a5,cs5,e5,g5]*3 [d5,fs5,g5,c5]>" # s "supercomparator" # gain "0.7"

d1 $ stack [
  slow 4 $ n "g3 ~ ~ ~ ~ f3 ~ c3 ~" # s "supercomparator" # gain "0.7" # sustain "5 4",
  slow 4 $ every 4 (jux (rev)) $ n "b5 ~ ~ c5 a5 ~ ~"
    # s "supercomparator"
    # gain "0.6"
    # sustain "5 4 3 2"
] # room 0.45 # size 0.45 # delay 0.25 # delayfeedback 0.19 # delaytime 0.2

d1 $ stack [
  slow 4 $ n "g3 ~ ~ ~ ~ f3 ~ c3 ~" # s "supercomparator" # gain "0.7" # sustain "5 4",
  slow 4 $ every 4 (jux (rev)) $ n "b5 ~ ~ c5 a5 ~ ~"
    # s "supercomparator"
    # gain "0.6"
    # sustain "5 4 3 2"
] # room 0.45 # size 0.45 # delay 0.25 # delayfeedback 0.19 # delaytime 0.2

d1 $ stack [
  slow 4 $ n (off 0.25 (+7) $ "g3 ~ ~ ~ ~ f3 ~ c3 ~") # s "supercomparator" # gain "0.7" # sustain "5 4",
  slow 4 $ every 4 (jux (rev)) $ n "b5 ~ ~ c5 a5 ~ ~"
    # s "supercomparator"
    # gain "0.6"
    # sustain "5 4 3 2"
] # room 0.45 # size 0.45 # delay 0.25 # delayfeedback 0.19 # delaytime 0.2


-- play with +8 +12 +5
d1 $ stack [
  slow 4 $ n "g3 ~ ~ ~ ~ f3 ~ c3 ~" # s "supercomparator" # gain "0.7" # sustain "5 4",
  slow 4 $ every 4 (jux (rev)) $ n (off 0.25 (+5) "b5 ~ ~ c5 a5 ~ ~")
    # s "supercomparator"
    # gain "0.56"
    # sustain "5 4 3 2"
    # cutoff (sine1  * 800)
    # resonance 0.15
] # room 0.5 # size 0.5 # delay 0.5 # delayfeedback 0.5 # delaytime 0.9

-- sin c3 el grave
d1 $ stack [
  slow 4 $ n "g3 ~ ~ ~ ~ f3 ~ ~" # s "supercomparator" # gain "0.7" # sustain "5 4",
  slow 4 $ every 4 (jux (rev)) $ n (off 0.25 (+5) "b5 ~ ~ c5 a5 ~ ~")
    # s "supercomparator"
    # gain "0.56"
    # sustain "5 4 3 2"
    # cutoff (sine1  * 800)
    # resonance 0.15
] # room 0.7 # size 0.5 # delay 0.5 # delayfeedback 0.5 # delaytime 0.9

d1 $ stack [
  slow 10 $ n "e3 c3" # s "supercomparator" # gain "0.7" # sustain "10",
  slow 4 $ n "g5 ~ b5 ~ d5 ~ e5 ~ ~ ~ ~ ~" # s "supercomparator" # gain "0.7" # sustain "3*7 6*5"
    # s "supercomparator"
    # gain "0.56"
    # sustain "5 4 3 2"
    # cutoff (sine1  * 1000)
    # resonance 0.15
] # room 0.5 # size 0.5 # delay 0.5 # delayfeedback 0.5 # delaytime 0.9

hush