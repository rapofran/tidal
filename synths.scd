(
// drum
SynthDef(\kick, {
  |out=0, amp=0.9, atk=0.01, sus=1, rel=0.5, accel=0.01, pan=0, freq=80|
  var sig, env, xl;
  amp = amp*0.9;
  xl = XLine.kr(start:freq, end:freq*accel, dur:atk+rel+0.1, mul: amp, doneAction:2);
	env = EnvGen.ar(Env.perc(attackTime: atk, releaseTime: rel, level: amp, curve: -4), timeScale: sus, doneAction: 2);
  sig = HPF.ar(SinOsc.ar(xl), 60);
  sig = sig * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "http://github.com/lvm/balc")).add;

SynthDef(\snare, {
  |out=0, amp=0.9, atk=0.01, sus=1, rel=0.5, pan=0, freq=1250|
  var sig, env;
  amp = amp*0.9;
  env = EnvGen.ar(Env.perc(attackTime:atk, releaseTime:rel, level: amp), timeScale: sus, doneAction:2);
  sig = HPF.ar(WhiteNoise.ar(1) * env, freq);
  sig = sig * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "http://github.com/lvm/balc")).add;

SynthDef(\clap, {
  |out=0, amp=0.9, atk=0.01, sus=1, rel=0.5, rq=1, pan=0, freq|
  var sig, env, sigs, envs, sigl, envl;
  amp = amp*0.9;
  env = EnvGen.ar(Env.perc(atk, rel), timeScale: sus, doneAction:2);
  envs = EnvGen.ar(Env.new(
    [0,         1, 0,   0.9, 0,  0.7, 0,  0.5, 0.1],
    [0.001, 0.009, 0, 0.008, 0, 0.01, 0, 0.03, 0.1],
    [0,        -3, 0,    -3, 0,   -3, 0,   -4,  -4]
  ),  doneAction:2);
  sigs = BPF.ar(LPF.ar(HPF.ar(WhiteNoise.ar(envs), 600), XLine.kr(8000,4000,0.5)), 1500, rq, 3);
  envl = EnvGen.ar(Env.new(
    [0,   1, 0],
    [0, 0.5, 0],
    [0,  -4, 0]
  ), doneAction:2);
  sigl = BPF.ar(LPF.ar(HPF.ar(WhiteNoise.ar(envl), 1250), 8000), 1250, 0.125, amp*2);

  sig = (sigl + sigs) * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "http://github.com/lvm/balc")).add;

SynthDef(\hat, {
  |out=0, amp=0.9, atk=0.01, sus=1, rel=0.05, rq=0.25, pan=0, freq=0|
  var sig, env;
	amp = amp*0.9;
  env = EnvGen.ar(Env.perc(attackTime: atk, releaseTime: rel, level: amp), timeScale: sus, doneAction: 2);
  sig = RHPF.ar(WhiteNoise.ar(1) * env, (freq+10000), rq);
  sig = sig * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "http://github.com/lvm/balc")).add;

// strings

SynthDef(\bassy, {
  |out=0, amp=0.9, atk=0.01, sus=0.5, rel=2, lctf=1200, hctf=200, rq = 0.5, detune=0.01, accel=0.01, pan=0, freq|
  var sig, env;
	amp = amp*0.9;
  env = EnvGen.ar(Env.perc(attackTime: atk, releaseTime: rel, level: amp), timeScale: sus, doneAction: 2);
  sig = BHPF.ar(RLPF.ar(SawDPW.ar(freq * Line.kr(1,1+accel, sus+rel),1), lctf*env, rq), freq:hctf);
  sig = sig * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "http://github.com/lvm/balc")).add;

SynthDef(\bassy3, {
  |out=0, amp=0.9, atk=0.01, sus=0.5, rel=2, ffreq=1200, rq = 0.5, dist=0, detune=0.01, accel=0.01, pan=0, freq|
  var sig, env;
	amp = amp*0.9;
  env = EnvGen.ar(Env.perc(attackTime: atk, releaseTime: rel, level: amp), timeScale: sus, doneAction: 2);
  sig = RLPFD.ar(SawDPW.ar(freq * Line.kr(1,1+accel, sus+rel),1), ffreq:ffreq, res:rq, dist:dist, mul:amp*2);
  sig = sig * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "http://github.com/lvm/balc")).add;

SynthDef(\piano, {
  |out=0, amp=0.9, atk=0.01, dec=0.5, sus=1, rel=0.25, gate=0.5, stretch=0.1, tune=0.5, feed=0.5, pan=0, freq|
  var sig, env;
  amp = amp * 0.9;
  env = EnvGen.ar(Env.perc(atk, rel), timeScale: sus, doneAction:2);
  sig = MdaPiano.ar(freq, gate:gate, stretch:stretch, tune:tune, decay:dec, sustain: sus, release:rel, stereo:pan, mul:amp);
  sig = sig * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "http://github.com/lvm/balc")).add;


// other

SynthDef(\23, {
  |out, amp=0.9, atk=0.01, sus=0.5, rel=0.25, fb=0, detune=1.01, pan=0, freq|
  var par, tri, sig, env;
	env = EnvGen.ar(Env.linen(attackTime:atk, sustainTime:sus, releaseTime:rel), timeScale:sus/2, doneAction:2);
  par = LFPar.ar(XLine.kr(freq/2,freq, sus*10, doneAction:2), mul:amp); // 2
  tri = LFTri.ar(freq:freq*((detune/100)+1), mul:amp); // 3
  sig = SinOscFB.ar(freq+tri, feedback:par, mul: amp);
	sig = sig * env;
  Out.ar(out, Pan2.ar(LeakDC.ar(sig), pan, amp));
}, metadata: (credit: "http://github.com/lvm/balc")).add;

SynthDef(\pium, {
  |out=0, amp=0.9, atk=0.01, dec=0.5, sus=1, rel=0.5, accel=0.01, pan=0, freq=80|
  var sig, env, xl;
  amp = amp*0.9;
  xl = XLine.kr(start:freq, end:freq*accel, dur:rel, mul: amp, doneAction:2);
       env = EnvGen.ar(Env.perc(attackTime: atk, releaseTime: rel, level: amp, curve: -8), timeScale: sus, doneAction: 2);
  sig = LPF.ar(Ringz.ar(Impulse.ar(1), freq, dec, amp), 800) * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "http://github.com/lvm/balc")).add;


SynthDef.new(\kell,{
  |out, amp=0.9, atk=0.01, dec=0.05, sus=1, rel=0.25, gate=1, pan=0, freq|
  var sig, env;
  amp = amp * 0.9;
  env = EnvGen.ar(Env.adsr(atk, dec, sus, rel), gate:gate, doneAction: 2);
  sig = Klang.ar(`[
    freq*[0.5,0.5],
    0.25!2,
    pi.rand!2], 1, 0)*0.25;
  sig = sig * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "http://github.com/lvm/balc")).add;

SynthDef(\dust, {
  |out=0, amp=0.9, atk=0.01, sus=1, rel=0.25, rq=0.25, detune=1, pan=0, freq|
  var sig, env;
  amp = amp*0.9;
  env = EnvGen.ar(Env.perc(atk, rel), timeScale: sus, doneAction:2);
  sig = LPF.ar(Ringz.ar(Dust.ar(freq), freq*2.rand.max(9000)), 8000)*0.5;
  sig = sig * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "http://github.com/lvm/balc")).add;

SynthDef(\pulse, {
  |out, amp=0.9, atk=0.001, sus=1, rel=0.5, accel=0.01, detune=0.1, ffreq=1250, pan=0, freq|
  var sig, env;
  amp = amp*0.9;
	env = EnvGen.ar(Env.perc(atk, rel), timeScale: sus/ 2, doneAction:2);
	sig = RLPF.ar(LFPulse.ar([freq, freq],0.5), freq:ffreq, rq:1, mul:amp);
  sig = sig * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "http://github.com/lvm/balc")).add;

SynthDef(\can, {
  |out=0, amp=0.9, atk=0.01, sus=1, rel=0.25, vib=10, phase=0.5, pan=0, freq|
  var sig, env;
	amp = amp*0.9;
  env = EnvGen.ar(Env.perc(attackTime: atk, releaseTime: rel, level: amp), timeScale: sus, doneAction: 2);
  sig = Vibrato.ar(FreqShift.ar(LFTri.ar(freq, phase), freq/2), rate:vib);
  sig = sig * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "http://github.com/lvm/balc")).add;


SynthDef(\fm, {
  |out, amp=0.9, atk=0.001, sus=1, accel, carPartial=1, modPartial=1, index=3, mul=0.25, detune=0.1, pan=0, freq|
  var env, mod, car, sig;
  amp = amp * 0.9;
  env = EnvGen.ar(Env.perc(atk, 0.999, 1, -3), timeScale: sus / 2, doneAction:2);
  mod = SinOsc.ar(freq * modPartial * Line.kr(1,1+accel, sus), 0, freq * index * LFNoise1.kr(5.reciprocal).abs);
  car = SinOsc.ar(([freq, freq+detune] * carPartial) + mod,	0, mul);
  sig = car * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "@munshkr")).add;

SynthDef(\sin, {
  |out, amp=0.9, atk=0.001, sus=1, rel=1, accel=0, detune=0.1, pan=0, freq|
  var sig, env;
  amp = amp*0.9;
	env = EnvGen.ar(Env.perc(atk, rel), timeScale: sus / 2, doneAction: 2);
	sig = SinOsc.ar([freq, freq+detune] * Line.kr(1,1+accel, sus));
  sig = sig * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "@munshkr")).add;

SynthDef(\saw, {
  |out, amp=0.9, atk=0.001, sus=1, rel=0.5, accel=0.01, detune=0.1, pan=0, freq|
  var sig, env;
  amp = amp*0.9;
	env = EnvGen.ar(Env.perc(atk, rel), timeScale: sus/ 2, doneAction:2);
	sig = SawDPW.ar([freq, freq+detune] * Line.kr(1,1+accel, sus)) * env;
  OffsetOut.ar(out, Pan2.ar(sig, pan, amp));
}, metadata: (credit: "@munshkr")).add;

// foxdot

SynthDef.new(\soprano,
  {|out=0, amp=0.9, atk=0.01, sus=1, rel=0.5, vib=5, slide=0, rate=1, verb=0.5, slidefrom=1, fmod=0, pan=0, freq|
  var osc, env;
  amp = amp * 0.9;
  freq = freq + fmod;
  freq = Line.ar(freq * slidefrom, freq * (1 + slide), sus);
  freq = Vibrato.kr(freq, rate: vib);
  env = EnvGen.ar(Env.perc(attackTime: atk, releaseTime: rel, level: amp), timeScale: sus, doneAction: 2);
  osc = (SinOsc.ar((freq * 3), mul: amp) + SinOscFB.ar((freq * 3), mul: (amp / 2)));
  osc = osc * env;
  OffsetOut.ar(out, Pan2.ar(osc, pan, amp));
}, metadata: (credit: "https://github.com/Qirky/FoxDot")).add;


SynthDef.new(\varsaw,
  {|out=0, amp=0.9, vib=0, slide=0, rate=1, atk=0.01, sus=1, slidefrom=1, fmod=0, pan=0, freq|
  var osc, env;
  amp = amp * 0.9;
  freq = freq + fmod;
  freq = Line.ar(freq * slidefrom, freq * (1 + slide), sus);
  freq = Vibrato.kr(freq, rate: vib);
  osc=VarSaw.ar([freq, (freq * 1.005)], mul: (amp), width: rate);
  env=EnvGen.ar(Env(levels: [amp, amp, amp], curve: 'lin', times: (sus / 2)), doneAction: 2);
  osc = osc * env * EnvGen.ar(Env.perc(atk,sus), doneAction:2);
  OffsetOut.ar(out, Pan2.ar(osc, pan, amp));
}, metadata: (credit: "https://github.com/Qirky/FoxDot")).add;

SynthDef.new(\pluck, {
  |out=0, amp=0.9, vib=0, slide=0, atk=0.01, sus=1, slidefrom=1, fmod=0, rate=1, bits=0, pan=0, freq|
  var osc, env;
  amp = amp * 0.9;
  freq = freq + fmod;
  freq = Line.ar(freq * slidefrom, freq * (1 + slide), sus);
  freq = Vibrato.kr(freq, rate: vib);
  freq=[freq, (freq + LFNoise2.ar(50).range(-2, 2))];
  osc=(SinOsc.ar((freq * 1.002), phase: VarSaw.ar(freq, width: Line.ar(1, 0.2, 2))) + (SinOsc.ar(freq*rate, phase: VarSaw.ar(freq, width: Line.ar(1, 0.2, 2))) ));
  osc=osc * XLine.ar(amp, (amp / 10000), (sus * 4), doneAction: 2)*0.25;
  osc = osc * EnvGen.ar(Env.perc(atk,sus), doneAction:2);
  OffsetOut.ar(out, Pan2.ar(osc, pan, amp));
}, metadata: (credit: "https://github.com/Qirky/FoxDot")).add;

// noise

SynthDef.new(\crunch,
  {|out=0, amp=0.9, vib=0, slide=0, rate=1, sus=1, slidefrom=1, fmod=0, pan=0, freq|
  var osc, env;
  freq = freq + fmod;
  freq = Line.ar(freq * slidefrom, freq * (1 + slide), sus);
  freq = Vibrato.kr(freq, rate: vib);
  env = EnvGen.ar(Env.perc(level: (amp),curve: 0,attackTime: 0.01,releaseTime: 0.1+sus), doneAction: 2);
  osc = LFNoise0.ar(((Crackle.kr(1.75) * freq) * 30), mul: amp);
  osc = osc * env;
  OffsetOut.ar(out, Pan2.ar(osc, pan, amp));
}, metadata: (credit: "https://github.com/Qirky/FoxDot")).add;

SynthDef.new(\noise,
  {|out=0, amp=0.9, atk=0.01, dec=0.5, sus=1, rel=0.5, vib=0, slide=0, rate=1,  slidefrom=1, fmod=0, rq=1, lctf=800, pan=0, freq|
    var osc, env;
    freq = freq + fmod;
    freq = Line.ar(freq * slidefrom, freq * (1 + slide), sus);
    freq = Vibrato.kr(freq, rate: vib);
    osc = RLPF.ar(LFNoise0.ar(freq, amp), lctf, rq, amp);
    env=EnvGen.ar(Env.adsr(attackTime: atk, decayTime:dec, sustainLevel:sus, releaseTime:rel), doneAction:2);
  osc = osc * env;
  OffsetOut.ar(out, Pan2.ar(osc, pan, amp));
}, metadata: (credit: "https://github.com/Qirky/FoxDot")).add;
)
