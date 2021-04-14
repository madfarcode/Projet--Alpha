SynthDef.new(\bufplay, {
	arg buf=0, rate=1, amp=1, pan=0;
	var sig;
	sig = PlayBuf.ar(2, buf, BufRateScale.ir(buf) * rate, doneAction:2); /// (1(Outputnumber), 2(BufferSelect)));
	sig = Pan2.ar(sig, pan, amp);
	sig = FreeVerb.ar(sig, 0.2, 0.8, 0.2);
	sig = sig * amp;
	Out.ar(0, sig);
}).add;
