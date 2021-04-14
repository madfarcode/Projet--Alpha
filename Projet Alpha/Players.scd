Pdef (
	\rhythm,
	Pbind(
		\instrument,\bufplay,
		\dur, Pseq([0.155], inf),
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
            ],inf).trace,
		\rate, 1,
		\amp, Pseq([0.7,]++(0.2!7), inf),
	);
).play;
-