OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
rz(-3.125786049075121) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(3*pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
ry(pi/2) q[0];
rz(-3.133884412667327) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(3*pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(3.165270949232725) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
rz(8.50548099e-07) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
rz(3.050684519822049) q[0];
rz(-3.020222496801784) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(3*pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(-3.074199365259114) q[1];
rz(-3.190055094722021) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(3*pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
ry(pi/2) q[1];
rz(0.007708240923181) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(3*pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
ry(pi/2) q[2];
rz(0.015806604514948) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(3*pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(3.165270949233037) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[3];
rz(8.50548089e-07) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rz(0.072815948435665) q[2];
rz(-0.05388510123816) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(3*pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(6.2299332552107) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
rz(-1.0446241145e-05) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(1.516911225556737) q[1];
rz(-1.540595629993836) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(3*pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(3.18894002209503) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
rz(-8.529648425e-06) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
rz(-3.116814616894755) q[0];
rx(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(1.686766854425255) q[1];
rz(-1.700971319527669) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(3*pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rz(-1.619258767927124) q[2];
rz(1.595574363489867) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(3*pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
rz(-0.093960913196664) q[3];
rz(0.124422936216721) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(3*pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(3.188940022094714) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[3];
rz(-8.529648421e-06) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rz(-1.446373390578176) q[2];
rz(1.432168925474994) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(3*pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(6.265414223009272) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
rz(-2.97619659e-07) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(-3.135068826282115) q[1];
rx(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rz(0.006523827306985) q[2];
rx(-pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
rz(0.024778036694971) q[3];
