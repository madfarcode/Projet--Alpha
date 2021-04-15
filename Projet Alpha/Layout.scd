(
Window.closeAll;
w = Window.new;
w.front;
w.alwaysOnTop = true;
w.background_(Color.black);

~slider = Slider(w.view, Rect.new(30, 200, 200, 30))
.background_(Color(0.2,0.75,0.95))
.action_({
	arg obj;
	var cf;
	cf = obj.value.linexp(0,1,100,4000).postln;
	if( x.isPlaying,
		{x.set(\freq, cf)}
	);
	~numberBox.value =(obj.value.linexp(0,1,100,4000));
});

~numberBox = NumberBox(w,  Rect(100,250,80,30));
~numberBox .value = 100;
~numberBox .clipLo = 100;
~numberBox .clipHi= 4000;
~numberBox .font = (Font("Monaco", 12));
~numberBox .decimals  = (2);
~numberBox .action =({
	arg obj;
	~slider.valueAction =(obj.value.explin(100,4000,0,1))
});


~button =  Button(w.view , Rect.new(50, 100, 60, 20))
.states_([
	["Off", Color.black, Color.gray(0.8)],
	["On", Color.black, Color.red]])
.font_(Font("Monaco", 18))
.action_({
	arg obj;
	if(obj.value == 1,{
		x = Synth.new(\test,
			[
				\freq, ~slider.value.linexp(0,1,100,4000),
				\rq, ~knob.value.linexp(0,1,1,100).reciprocal
			]
		).register;
	 },
	 {x.free}
	);
});

~knob = Knob(w.view, Rect.new(150,100,40,40))
.action_({
	arg obj;
	var qual;
	qual = obj.value.linexp(0,1,1,100).reciprocal;
	if( x.isPlaying,
		{x.set(\rq, qual)}
	);
});



)

~button.value = 0;



w.close;

/// SUPP Items

~obj.remove;
~obj= PopUpMenu(w, Rect(30, 350, 120, 30))
.items_(["", "One ", "two", "three"]).postln;





