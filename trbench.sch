v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -120 240 -100 {
lab=ND}
N 240 -260 240 -240 {
lab=PS}
N 180 -210 200 -210 {
lab=G}
N 240 -70 260 -70 {
lab=GND}
N 240 -210 260 -210 {
lab=PS}
N 260 -250 260 -210 {
lab=PS}
N 240 -250 260 -250 {
lab=PS}
N 180 -70 200 -70 {
lab=G}
N 240 -180 240 -160 {
lab=GND}
N 240 -40 240 -20 {
lab=GND}
N 260 -70 260 -30 {
lab=GND}
N 240 -30 260 -30 {
lab=GND}
C {devices/code_shown.sym} 330 -190 0 0 {name=ngspice
only_toplevel=false
value="VG G 0 dc 0
VP PS 0 dc 1.8
VN ND 0 dc 1.8
.control
dc VG 0 1.8 0.1
wrdata ~/vp.txt vp#branch
wrdata ~/vn.txt vn#branch
write "trbench.raw"
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
W=1
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
W=1
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
C {devices/ipin.sym} 240 -120 0 0 {name=p3 lab=ND
}
C {devices/ipin.sym} 240 -260 0 0 {name=p4 lab=PS
}
C {devices/ipin.sym} 180 -210 0 0 {name=p1 lab=G}
C {devices/ipin.sym} 180 -70 0 0 {name=p2 lab=G}
