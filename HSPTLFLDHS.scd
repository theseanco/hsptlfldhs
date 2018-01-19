//set the tempo
p.clock.tempo = 2;

//Evaluate the entire block with Cmd/Ctrl+Enter, if the post window shows 'FAILURE IN SERVER /s_new too many nodes', wait a couple of seconds and evaluate again.
(
//The L-System used to generate rhythm. For more information see the Prewrite class
(
l = Prewrite(0.25,
	(
		0.25: #[0.25,0.25,0.25,0.5],
		0.5: #[0.25,0.5,0.125,0.125,0.125,0.125],
		0.125: #[0.375,0.125],
		0.375: #[0.375,0.375,1],
		1: #[0.75,0.25],
		0.75: #[16]
),60)
);

//Offsets for each L-system, used to create 'repeating' effects.
//These will sound when both the offset AND the sample instruments are evaluated, the offset will _not_ be inserted on the fly.
//For example, change d[\offstab2] to 0.125 and d[\offstab3] to 0.25, and re-evaluate the entire
d[\offk] = Pseq([0],1);
d[\offh] = Pseq([0],1);
d[\offsn] = Pseq([0],1);

d[\offstab] = Pseq([0],1);
d[\offstab2] = Pseq([0],1);
d[\offstab3] = Pseq([0],1);

d[\offtom] = Pseq([0],1);
d[\offtom2] = Pseq([0],1);
d[\offtom3] = Pseq([0],1);

//Multipliers for durations - A multiplier of 2 will double the duration, 0.5 will half the duration, etc.
//These will sound when they are evaluated and can be changed on the fly
//Once the multipliers have been changed it will be very difficult to make individual sampes sound in unison
//The EP starts with all of these in unison and gradually diverges
//NOTE: Very low multipliers or a zero multiplier will crash the server. Exercise caution.
~multk = {1};
~multh = {1};
~multsn = {1};

~multstab = {1};
~multstab2 = {1};
~multstab3 = {1};

~multtom = {1};
~multtom2 = {1};
~multtom3 = {1};


//rate controls for stabs & toms
//These will sound when they are evaluated and can be changed on the fly
~stab1rate = 1;
~stab2rate = 1;
~stab3rate = 1;

~tom1rate = 1;
~tom2rate = 1;
~tom3rate = 1;

//kicks
~k = Pbind(\instrument,\bplaym,\buf,d["k"][0],\dur,Pseq([d[\offk],(l * Pkr(~multk))],inf),\amp,1);
~h = Pbind(\instrument,\bplaym,\buf,d["ch"][0],\dur,Pseq([d[\offh],(l * Pkr(~multh))],inf),\amp,0.8,\rate,0.8,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~sn = Pbind(\instrument,\bplaym,\buf,d["s"][0],\dur,Pseq([d[\offsn],(l * Pkr(~multsn))],inf),\amp,0.8,\rel,1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream),\rate,1);

//stabs
~stab = Pbind(\instrument,\bplay,\buf,d["stabs"][1],\dur,Pseq([d[\offstab],(l * Pkr(~multstab))],inf),\amp,0.7,\rate,Pkr(~stab1rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~stab2 = Pbind(\instrument,\bplay,\buf,d["stabs"][1],\dur,Pseq([d[\offstab2],(l * Pkr(~multstab2))],inf),\amp,0.7,\rate,Pkr(~stab2rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~stab3 = Pbind(\instrument,\bplay,\buf,d["stabs"][1],\dur,Pseq([d[\offstab3],(l * Pkr(~multstab3))],inf),\amp,0.7,\rate,Pkr(~stab3rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));

//toms
~tom = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pseq([d[\offtom],(l * Pkr(~multtom))],inf),\amp,0.7,\rate,Pkr(~tom1rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~tom2 = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pseq([d[\offtom2],(l * Pkr(~multtom2))],inf),\amp,0.7,\rate,Pkr(~tom2rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~tom3 = Pbind(\instrument,\bplaym,\buf,d["t"][0],\dur,Pseq([d[\offtom3],(l * Pkr(~multtom3))],inf),\amp,0.7,\rate,Pkr(~tom3rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
)

//play these to bring in the various samples
~k.play;
~sn.play;
~h.play;

~stab.play;
~stab2.play;
~stab3.play;

~tom.play;
~tom2.play;
~tom3.play;