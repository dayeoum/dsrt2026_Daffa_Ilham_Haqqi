v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -540 -200 -540 -130 {lab=#net1}
N -540 -200 -130 -200 {lab=#net1}
N -130 -200 -130 -170 {lab=#net1}
N -220 -140 -170 -140 {lab=in}
N -220 -140 -220 -30 {lab=in}
N -220 -30 -170 -30 {lab=in}
N -130 -110 -130 -60 {lab=out}
N -380 -120 -220 -120 {lab=in}
N -380 -120 -380 -90 {lab=in}
N -130 -140 -70 -140 {lab=#net1}
N -70 -200 -70 -140 {lab=#net1}
N -130 -200 -70 -200 {lab=#net1}
N -540 -70 -540 40 {lab=0}
N -540 40 -130 40 {lab=0}
N -130 0 -130 40 {lab=0}
N -380 -30 -380 40 {lab=0}
N -130 -30 -70 -30 {lab=0}
N -70 -30 -70 40 {lab=0}
N -130 40 -70 40 {lab=0}
N -130 -80 -20 -80 {lab=out}
N -460 40 -460 70 {lab=0}
C {sky130_fd_pr/nfet_01v8.sym} -150 -30 0 0 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -150 -140 0 0 {name=M3
W=3
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} -380 -60 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} -540 -100 0 0 {name=V2 value=1.8 savecurrent=false}
C {lab_pin.sym} -380 -120 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} -20 -80 2 0 {name=p2 sig_type=std_logic lab=out
}
C {code.sym} -680 -200 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib /foss/pdks/ciel/sky130/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/sky130A/libs.tech/ngspice/sky130.lib.spice tt"

.param mc_mm_switch=0
.param mc_pr_switch=1
"}
C {code_shown.sym} 90 -140 0 0 {name=spice only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
dc v1 0 1.8 0.01
plot in out
op
.endc
"}
C {gnd.sym} -460 70 0 0 {name=l1 lab=0}
