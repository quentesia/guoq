OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
rz(0.020884717193252) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(3*pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
rz(0.010074541315194) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(3*pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
cx q[0],q[1];
rz(pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(3.173164063975027) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
rz(2.019745796e-06) q[1];
cx q[0],q[1];
rz(pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
rz(6.162139882576541) q[0];
rz(-2.979932112119966) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(3*pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(0.09008616609457) q[1];
rz(-3.206422989998306) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(3*pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(0.010074541309219) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(3*pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rz(0.020884717187619) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(3*pi/2) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
cx q[2],q[3];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(3.173164063965829) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rz(2.019745784e-06) q[3];
cx q[2],q[3];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rz(0.097327905517662) q[2];
rz(-0.072072075826326) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(3*pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
cx q[1],q[2];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(6.212187613151234) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(-2.4772210425e-05) q[2];
cx q[1],q[2];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(1.49872425096857) q[1];
rz(-1.530312264327546) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(3*pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
cx q[0],q[1];
rz(pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(3.204713603506943) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
rz(-2.0225613126e-05) q[1];
cx q[0],q[1];
rz(pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
h q[0];
rz(-pi/2) q[0];
rz(5*pi/2) q[0];
rz(3.174834976640822) q[0];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(1.725269665553981) q[1];
rz(-1.744215508636024) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(3*pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rz(-1.63562666320341) q[2];
rz(1.604038649849029) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(3*pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rz(pi/2) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
rz(-0.125914424105119) q[3];
rz(0.166529540974433) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(3*pi/2) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
cx q[2],q[3];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(3.2047136035161343) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rz(-2.0225613129e-05) q[3];
cx q[2],q[3];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rz(-1.404266785820464) q[2];
rz(1.385320942731046) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(3*pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
cx q[1],q[2];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(6.259496640310975) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(-7.06892621e-07) q[2];
cx q[1],q[2];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
h q[1];
rz(-pi/2) q[1];
rz(5*pi/2) q[1];
rz(3.150482710380996) q[1];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
h q[2];
rz(-pi/2) q[2];
rz(5*pi/2) q[2];
rz(0.008890056789124) q[2];
rz(pi/2) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
h q[3];
rz(-pi/2) q[3];
rz(5*pi/2) q[3];
rz(0.033242323054133) q[3];
