# HSPTLFLDHS companion GitHub Repo

---------------------------

### About

This repo contains the code and samples used to create the EP [HSPTLFLDHS](https://co34pt.bandcamp.com/album/hsptlfldhs). It was recorded at Hospitalfield House ('[regarded as one of the finest country houses in Scotland](https://archive.is/z3t9t)'), during a Creative Practice symposium. It is a combination of an internal SuperCollider recording and a room recording taken with a DPA d:mension 5100 Microphone.

HSPTLFLDHS was created over the course of an afternoon as an experiment in using [L-Systems](https://en.wikipedia.org/wiki/L-system) as a way to create interesting, more spacious rhythms. It uses the [Prewrite](http://doc.sccode.org/Classes/Prewrite.html) class, which uses a L-system grammar within SuperCollider's Pattern class.

In this case, it is used within Pbinds in ProxySpace as a `dur` value to control rhythmic patterns, and throughout the EP one L-system is used to create multiple different rhythmic structures through offsetting, multiplication and modifying sample playback live. This method of live coding in SuperCollider is the one described in my [howto_co34pt_liveCode](https://github.com/theseanco/howto_co34pt_liveCode) repo and tutorials.

### How to use

HSPTLFLDHS uses nine `NodeProxies`:

- Kick
- Snare
- Closed hihat
- Three stabs
- Three toms

These `NodeProxies` all use the same L-System as a master `dur` value, defined in the code as `l`. When the main block of code is executed, and the individual `NodeProxies` are played, they will all play in unison, at a default pitch. 

The rhythm and pitch of the `NodeProxies` can be changed using modifiers held both as `NodeProxies` and `Dictionary` values:

- Offsets, held in `d[\off[...]]`, are used to add offsets to the L-system, shifting the entire rhythm back an arbitrary amount. This can be used to create 'stuttering' effects, as can be heard in the triple-toms at 2:17 in HSPTLFLDHS_2
- Multiplications, held in `~mult[...]`, are used to multiply the L-System, creating multiple variations based on one set of data. Listen to HSPTLFLDHS_1 from 0:00 to 0:35 for the stabs in unison, using no multiplier, and after 0:35, multipliers are added and the stabs diverge.
- Rate controls for stabs and toms, held in `~[...]rate`. These are used to control the pitch of the toms and stabs to effectively play them at different pitches, to add to the effect of them diverging rhythmically. An example of this can be found in the stabs sounding at three distinct pitches at 02:10 onwards in HSPTLFLDHS_1.

The setup code for HSPTLFLDHS can be found in `Setup.scd` and is a reduced version of the setup code found in `howto_co34pt_liveCode`. It loads `SynthDefs` for playing buffers, and a set of samples held in `Dictionary` `d`. It also starts ProxySpace.

To play HSPTLFLDHS, run the setup code, execute the code block, and play with the values.

Add more instruments, samples, patterns, anything. This is a nice springboard for building something fun.
