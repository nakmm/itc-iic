v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -150 240 -90 {
lab=Y}
N 200 -180 200 -60 {
lab=A}
N 170 -120 200 -120 {
lab=A}
N 240 -120 290 -120 {
lab=Y}
N 240 -230 240 -210 {
lab=VDD}
N 240 -30 240 -10 {
lab=GND}
N 240 -180 250 -180 {
lab=VDD}
N 250 -210 250 -180 {
lab=VDD}
N 240 -210 250 -210 {
lab=VDD}
N 240 -60 250 -60 {
lab=GND}
N 250 -60 250 -30 {
lab=GND}
N 240 -30 250 -30 {
lab=GND}
C {devices/ipin.sym} 170 -120 0 0 {name=p1 lab=A}
C {devices/opin.sym} 290 -120 0 0 {name=p2 lab=Y}
C {sky130_fd_pr/nfet_01v8.sym} 220 -60 0 0 {name=M1
L=0.18
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
C {devices/iopin.sym} 240 -10 0 0 {name=p3 lab=GND}
C {devices/iopin.sym} 240 -230 0 0 {name=p4 lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 220 -180 0 0 {name=M11
L=0.18
W=2.5
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
