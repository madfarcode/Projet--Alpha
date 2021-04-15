Pdef (
	\rhythm,
	Pbind(
		\instrument,\bufplay,
		\dur, Pseq([1/16], inf),
		\stretch, 1.875,
		\buf, Pseq(
			[
				Pseq((~a!2)++(~c!1)++(~a!1), 2),
				Pseq((~a!3)++(~c!1)++(~a!0), 1),
				Pseq((~a!1)++(~c!2)++(~a!1), 2),
				Pseq((~a!1)++(~c!1)++(~a!1)++(~c!1), 1),
				Pseq((~a!2)++(~c!1)++(~a!1), 2),
				Pseq((~a!2)++(~c!0)++(~a!2), 1),
				Pseq((~a!1)++(~c!2)++(~a!1), 2),
				Pseq((~c!1)++(~a!1)++(~c!1)++(~c!1), 1),
				Pseq((~c!4),1)
            ], inf).trace,
		\rate, 1,
		\amp, Pseq([0.6,]++(0.2!7), inf),
	);
).stop;

Pdef(
	\sinepat,
	Pbind(
		\instrument, \sine,
		\dur, Pseq([1/16], inf),
		\stretch, 1.875,
		\note, Pxrand([0, 3, 5, 9, 10, 12], inf),
		\atk, 0.005,
		\rel, Pexprand(0.01, 0.5, inf),
		\amp, Pexprand(0.05, 0.5, inf),
		\pan, Pwhite(-0.8, 0.8, inf),
	);
).stop;

x = Synth.new(\test, [\freq, ~slider.value.linexp(0,1,100,4000)]);
x.free;
