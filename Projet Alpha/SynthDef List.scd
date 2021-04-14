SynthDef.new(\bufplay, {
	arg buf=0, rate=1, amp=1, pan=0;
	var sig;
	sig = PlayBuf.ar(2, buf, BufRateScale.ir(buf) * rate, doneAction:2); /// (1(Outputnumber), 2(BufferSelect)));
	sig = Pan2.ar(sig, pan, amp);
	sig = FreeVerb.ar(sig, 0.2, 0.8, 0.2);
	sig = sig * amp;
	Out.ar(0, sig);
}).add;

SynthDef.new(\sine, {
	arg freq=440, atk=0.005, rel=0.3, amp=1, pan=0;
	var sig , env ;
	sig =SinOsc.ar(freq);
	env = EnvGen.kr(Env.new([0, 1, 0], [atk, rel], [1, -1]),doneAction:2);
	sig = Pan2.ar(sig, pan, amp);
	sig = sig * env;
	Out.ar(0, sig);
}).add;


