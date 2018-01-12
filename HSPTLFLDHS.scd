p.clock.tempo = 1


//awaiting the others from a smoke break

//2 secs lol xox

//  coï¿¥ï¾¡ptcoï¿¥ï¾¡ptcoï¿¥ï¾¡ptcoï¿¥ï¾¡ptcoï¿¥ï¾¡pt


/*

Ples, co34pt, live Coding, Roomsound, Lind

*/


(
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

d[\offk] = Pseq([0],1);
d[\offh] = Pseq([0],1);
d[\offsn] = Pseq([0],1);

d[\offstab] = Pseq([0],1);
d[\offstab2] = Pseq([0],1);
d[\offstab3] = Pseq([0],1);

d[\offtom] = Pseq([0],1);
d[\offtom2] = Pseq([0],1);
d[\offtom3] = Pseq([0],1);


~multk = {1};
~multh = {1};
~multsn = {1};

~multstab = {1};
~multstab2 = {1};
~multstab3 = {1};

~multtom = {1};
~multtom2 = {1};
~multtom3 = {1};

~stab1rate = 1.5;
~stab2rate = 1;
~stab3rate = 2;

~tom1rate = 2;
~tom2rate = 4;
~tom3rate = 3;

//kicks
~k = Pbind(\instrument,\bplaym,\buf,d["k"][2],\dur,Pseq([d[\offk],(l * Pkr(~multk))],inf),\amp,1);
~h = Pbind(\instrument,\bplay,\buf,d["ch"][2],\dur,Pseq([d[\offh],(l * Pkr(~multh))],inf),\amp,0.8,\rate,2,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~sn = Pbind(\instrument,\bplaym,\buf,d["s"][5],\dur,Pseq([d[\offsn],(l * Pkr(~multsn))],inf),\amp,0.8,\rel,1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));

//stabs
~stab = Pbind(\instrument,\bplay,\buf,d["stabs"][5],\dur,Pseq([d[\offstab],(l * Pkr(~multstab))],inf),\amp,0.7,\rate,Pkr(~stab1rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~stab2 = Pbind(\instrument,\bplay,\buf,d["stabs"][5],\dur,Pseq([d[\offstab2],(l * Pkr(~multstab2))],inf),\amp,0.7,\rate,Pkr(~stab2rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~stab3 = Pbind(\instrument,\bplay,\buf,d["stabs"][5],\dur,Pseq([d[\offstab3],(l * Pkr(~multstab3))],inf),\amp,0.7,\rate,Pkr(~stab3rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));

//toms
~tom = Pbind(\instrument,\bplaym,\buf,d["t"][13],\dur,Pseq([d[\offtom],(l * Pkr(~multtom))],inf),\amp,0.7,\rate,Pkr(~tom1rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~tom2 = Pbind(\instrument,\bplaym,\buf,d["t"][13],\dur,Pseq([d[\offtom2],(l * Pkr(~multtom2))],inf),\amp,0.7,\rate,Pkr(~tom2rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~tom3 = Pbind(\instrument,\bplaym,\buf,d["t"][13],\dur,Pseq([d[\offtom3],(l * Pkr(~multtom3))],inf),\amp,0.7,\rate,Pkr(~tom3rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
)




/////////////////////////////////////////////////////////////////////////
/*


BREAK IN CASE OF EMERGENCY



*/

(
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

d[\offk] = Pseq([0],1);
d[\offh] = Pseq([0],1);
d[\offsn] = Pseq([0],1);

d[\offstab] = Pseq([0],1);
d[\offstab2] = Pseq([0.75],1);
d[\offstab3] = Pseq([0.5],1);

d[\offtom] = Pseq([0.25],1);
d[\offtom2] = Pseq([0.5],1);
d[\offtom3] = Pseq([0],1);


~multk = {1};
~multh = {1};
~multsn = {1};

~multstab = {1};
~multstab2 = {1};
~multstab3 = {1};

~multtom = {1};
~multtom2 = {1};
~multtom3 = {1};

~stab1rate = 1;
~stab2rate = 1;
~stab3rate = 1;

~tom1rate = 1;
~tom2rate = 2;
~tom3rate = 4;

//kicks
~k = Pbind(\instrument,\bplaym,\buf,d["k"][2],\dur,Pseq([d[\offk],(l * Pkr(~multk))],inf),\amp,1);
~h = Pbind(\instrument,\bplay,\buf,d["ch"][2],\dur,Pseq([d[\offh],(l * Pkr(~multh))],inf),\amp,0.8,\rate,2,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~sn = Pbind(\instrument,\bplaym,\buf,d["s"][5],\dur,Pseq([d[\offsn],(l * Pkr(~multsn))],inf),\amp,0.8,\rel,1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));

//stabs
~stab = Pbind(\instrument,\bplay,\buf,d["stabs"][5],\dur,Pseq([d[\offstab],(l * Pkr(~multstab))],inf),\amp,0.7,\rate,Pkr(~stab1rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~stab2 = Pbind(\instrument,\bplay,\buf,d["stabs"][5],\dur,Pseq([d[\offstab2],(l * Pkr(~multstab2))],inf),\amp,0.7,\rate,Pkr(~stab2rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~stab3 = Pbind(\instrument,\bplay,\buf,d["stabs"][5],\dur,Pseq([d[\offstab3],(l * Pkr(~multstab3))],inf),\amp,0.7,\rate,Pkr(~stab3rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));

//toms
~tom = Pbind(\instrument,\bplaym,\buf,d["t"][13],\dur,Pseq([d[\offtom],(l * Pkr(~multtom))],inf),\amp,0.7,\rate,Pkr(~tom1rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~tom2 = Pbind(\instrument,\bplaym,\buf,d["t"][13],\dur,Pseq([d[\offtom2],(l * Pkr(~multtom2))],inf),\amp,0.7,\rate,Pkr(~tom2rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
~tom3 = Pbind(\instrument,\bplaym,\buf,d["t"][13],\dur,Pseq([d[\offtom3],(l * Pkr(~multtom3))],inf),\amp,0.7,\rate,Pkr(~tom3rate),\rel,0.1,\pan,Pwhite(-0.8,0.8).stutter(Pwhite(40,100).asStream));
)