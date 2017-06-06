cps (60/120)
d1 $ n "<[a5,cs5,e5,g5]*3 [d5,fs5,g5,c5]>" # s "supercomparator" # gain "0.7"

d1 $ stack [
  slow 4 $ n "g3 ~ ~ ~ ~ f3 ~ c3 ~" # s "supercomparator" # gain "0.7" # sustain "5 4",
  slow 4 $ every 4 (jux (rev)) $ n "b5 ~ ~ c5 a5 ~ ~"
    # s "supercomparator"
    # gain "0.6"
    # sustain "5 4 3 2"
]

d1 $ stack [
  slow 4 $ n "g3 ~ ~ ~ ~ f3 ~ c3 ~" # s "supercomparator" # gain "0.7" # sustain "5 4",
  slow 4 $ every 4 (jux (rev)) $ n "b5 ~ ~ c5 a5 ~ ~"
    # s "supercomparator"
    # gain "0.6"
    # sustain "5 4 3 2"
]

d1 $ stack [
  slow 4 $ n (off 0.25 (+7) $ "g3 ~ ~ ~ ~ f3 ~ c3 ~") # s "supercomparator" # gain "0.7" # sustain "5 4",
  slow 4 $ every 4 (jux (rev)) $ n "b5 ~ ~ c5 a5 ~ ~"
    # s "supercomparator"
    # gain "0.6"
    # sustain "5 4 3 2"
]

d1 $ stack [
  slow 4 $ n (off 0.25 (+7) $ "g3 ~ ~ ~ ~ f3 ~ c3 ~") # s "supercomparator" # gain "0.7" # sustain "5 4",
  slow 4 $ every 4 (jux (rev)) $ every 10 (striate 5) $ n (off 0.25 (+12) "b5 ~ ~ c5 a5 ~ ~")
    # s "supercomparator"
    # gain "0.56"
    # sustain "5 4 3 2"
    # cutoff (sine1  * 800)
    # hcutoff (sine1  * 1500)
    # resonance 0.15
] # room 0.45 # size 0.45 # delay 0.125 # delayfeedback 0.1 # delaytime 0.2


hush