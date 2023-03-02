v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -120 240 -100 {
lab=ND1}
N 240 -260 240 -240 {
lab=PS1}
N 180 -210 200 -210 {
lab=G}
N 240 -70 260 -70 {
lab=GND}
N 240 -210 260 -210 {
lab=PS1}
N 260 -250 260 -210 {
lab=PS1}
N 240 -250 260 -250 {
lab=PS1}
N 180 -70 200 -70 {
lab=G}
N 240 -180 240 -160 {
lab=GND}
N 240 -40 240 -20 {
lab=GND}
N 260 -70 260 -30 {
lab=GND}
N 410 -120 410 -100 {
lab=ND2}
N 410 -70 430 -70 {
lab=NB}
N 350 -70 370 -70 {
lab=G}
N 410 -40 410 -20 {
lab=GND}
N 410 -260 410 -240 {
lab=PS2}
N 350 -210 370 -210 {
lab=G}
N 410 -210 430 -210 {
lab=PB}
N 410 -180 410 -160 {
lab=GND}
N 240 -30 260 -30 {
lab=GND}
N 430 -70 450 -70 {
lab=NB}
N 430 -210 450 -210 {
lab=PB}
N 600 -120 600 -100 {
lab=ND3}
N 600 -70 620 -70 {
lab=ND3}
N 540 -70 560 -70 {
lab=G}
N 600 -40 600 -20 {
lab=GND}
N 600 -260 600 -240 {
lab=PS3}
N 540 -210 560 -210 {
lab=G}
N 600 -210 620 -210 {
lab=GND}
N 600 -180 600 -160 {
lab=GND}
N 620 -210 620 -170 {
lab=GND}
N 600 -170 620 -170 {
lab=GND}
N 620 -110 620 -70 {
lab=ND3}
N 600 -110 620 -110 {
lab=ND3}
C {devices/code_shown.sym} 680 -260 0 0 {name=ngspice
only_toplevel=false
value="VG G 0 dc 0
VP1 PS1 0 dc 1.8
VP2 PS2 0 dc 1.8
VP3 PS3 0 dc 1.8
VPB PB 0 dc 1.8
VN1 ND1 0 dc 1.8
VN2 ND2 0 dc 1.8
VN3 ND3 0 dc 1.8
VNB NB 0 dc 1.8
.control
dc VG 0 1.8 0.1
plot vp1#branch vp2#branch vp3#branch
plot vn1#branch vn2#branch vn3#branch
.endc"}
C {devices/code.sym} 20 -180 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8.sym} 220 -210 0 0 {name=M1
L=0.15
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 220 -70 0 0 {name=M2
L=0.15
W=2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 240 -160 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 240 -20 0 0 {name=l4 lab=GND}
C {devices/ipin.sym} 240 -120 0 0 {name=p3 lab=ND1
}
C {devices/ipin.sym} 240 -260 0 0 {name=p4 lab=PS1
}
C {devices/ipin.sym} 180 -210 0 0 {name=p1 lab=G}
C {devices/ipin.sym} 180 -70 0 0 {name=p2 lab=G}
C {sky130_fd_pr/nfet_01v8.sym} 390 -70 0 0 {name=M3
L=0.15
W=2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 410 -20 0 0 {name=l1 lab=GND}
C {devices/ipin.sym} 410 -120 0 0 {name=p6 lab=ND2
}
C {devices/ipin.sym} 350 -70 0 0 {name=p7 lab=G}
C {devices/ipin.sym} 450 -70 2 0 {name=p8 lab=NB}
C {sky130_fd_pr/pfet_01v8.sym} 390 -210 0 0 {name=M4
L=0.15
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 410 -160 0 0 {name=l2 lab=GND}
C {devices/ipin.sym} 410 -260 0 0 {name=p9 lab=PS2
}
C {devices/ipin.sym} 350 -210 0 0 {name=p10 lab=G}
C {devices/ipin.sym} 450 -210 2 0 {name=p5 lab=PB}
C {sky130_fd_pr/nfet_01v8.sym} 580 -70 0 0 {name=M5
L=0.15
W=2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 600 -20 0 0 {name=l5 lab=GND}
C {devices/ipin.sym} 600 -120 0 0 {name=p11 lab=ND3
}
C {devices/ipin.sym} 540 -70 0 0 {name=p12 lab=G}
C {sky130_fd_pr/pfet_01v8.sym} 580 -210 0 0 {name=M6
L=0.15
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/gnd.sym} 600 -160 0 0 {name=l6 lab=GND}
C {devices/ipin.sym} 600 -260 0 0 {name=p14 lab=PS3
}
C {devices/ipin.sym} 540 -210 0 0 {name=p15 lab=G}
