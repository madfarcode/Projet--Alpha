(
w = Window.new;
w.front;
w.alwaysOnTop = true;


~slider = Slider(w.view, Rect.new(20, 20, 150, 30))

)

~slider.value;

(
~slider.action_({
	arg obj;
	obj.value.postln;
});
)
w.background_(Color.black);
~slider.background_(Color(0.2,0.75,0.95));




w.close;

