OPENQASM 2.0;
include "qelib1.inc";
qreg eval[7];
qreg q[1];
creg meas[8];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(9.400234268163183) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
rz(7*pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(0.14726215563701875) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(9.326603190344699) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(7.461282552275758) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
rz(pi) eval[5];
sx eval[5];
rz(2*pi) eval[5];
sx eval[5];
rz(3*pi) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
rz(pi) eval[6];
sx eval[6];
rz(2*pi) eval[6];
sx eval[6];
rz(3*pi) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
rz(pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
rz(2.5740044351731406) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
rz(pi) q[0];
sx q[0];
rz(2*pi) q[0];
sx q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
cx eval[0],q[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(0.9272952180016121) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
rz(pi) q[0];
sx q[0];
rz(2*pi) q[0];
sx q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
cx eval[0],q[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
rz(pi) q[0];
sx q[0];
rz(2*pi) q[0];
sx q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
cx eval[1],q[0];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(1.2870022175865716) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
rz(pi) q[0];
sx q[0];
rz(2*pi) q[0];
sx q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
cx eval[1],q[0];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
rz(pi) q[0];
sx q[0];
rz(2*pi) q[0];
sx q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
cx eval[2],q[0];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(0.5675882184166582) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
rz(pi) q[0];
sx q[0];
rz(2*pi) q[0];
sx q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
cx eval[2],q[0];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
rz(7*pi/2) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
rz(11.127542616019355) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
rz(pi) q[0];
sx q[0];
rz(2*pi) q[0];
sx q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
cx eval[3],q[0];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(1.1351764368333135) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
rz(pi) q[0];
sx q[0];
rz(2*pi) q[0];
sx q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
cx eval[3],q[0];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(3*pi) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
rz(pi) q[0];
sx q[0];
rz(2*pi) q[0];
sx q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
cx eval[4],q[0];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(0.8712397799231674) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
rz(pi) q[0];
sx q[0];
rz(2*pi) q[0];
sx q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
cx eval[4],q[0];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
rz(3*pi/2) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
rz(1.042923012974604) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
rz(pi) q[0];
sx q[0];
rz(2*pi) q[0];
sx q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
cx eval[5],q[0];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(1.399113093743464) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
rz(pi) q[0];
sx q[0];
rz(2*pi) q[0];
sx q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
cx eval[5],q[0];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
rz(pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
rz(pi) q[0];
sx q[0];
rz(2*pi) q[0];
sx q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
cx eval[6],q[0];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
rz(0.3433664661028708) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
rz(pi) q[0];
sx q[0];
rz(2*pi) q[0];
sx q[0];
rz(3*pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
cx eval[6],q[0];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
rz(pi) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
rz(9.473865345981723) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
rz(pi) eval[6];
sx eval[6];
rz(2*pi) eval[6];
sx eval[6];
rz(3*pi) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
cx eval[5],eval[6];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(pi/4) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
rz(pi) eval[6];
sx eval[6];
rz(2*pi) eval[6];
sx eval[6];
rz(3*pi) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
cx eval[5],eval[6];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(3.2111243218438377) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(11.064938481832641) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(5.500200586464531) eval[5];
rz(pi) eval[5];
sx eval[5];
rz(2*pi) eval[5];
sx eval[5];
rz(3*pi) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(pi) eval[6];
sx eval[6];
rz(2*pi) eval[6];
sx eval[6];
rz(3*pi) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
cx eval[4],eval[6];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi/8) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
rz(pi) eval[6];
sx eval[6];
rz(2*pi) eval[6];
sx eval[6];
rz(3*pi) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
cx eval[4],eval[6];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
cx eval[4],eval[5];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi/4) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
rz(pi) eval[5];
sx eval[5];
rz(2*pi) eval[5];
sx eval[5];
rz(3*pi) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
cx eval[4],eval[5];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(6.143449678240702) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(7.715590621376128) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(10.200475871891086) eval[4];
rz(pi) eval[4];
sx eval[4];
rz(2*pi) eval[4];
sx eval[4];
rz(3*pi) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi) eval[5];
sx eval[5];
rz(2*pi) eval[5];
sx eval[5];
rz(3*pi) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(pi) eval[6];
sx eval[6];
rz(2*pi) eval[6];
sx eval[6];
rz(3*pi) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
cx eval[3],eval[6];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/16) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
rz(pi) eval[6];
sx eval[6];
rz(2*pi) eval[6];
sx eval[6];
rz(3*pi) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
cx eval[3],eval[6];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(3*pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(10.013826583317467) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
cx eval[3],eval[5];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/8) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
rz(pi) eval[5];
sx eval[5];
rz(2*pi) eval[5];
sx eval[5];
rz(3*pi) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
cx eval[3],eval[5];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(3*pi) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
cx eval[3],eval[4];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/4) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
rz(pi) eval[4];
sx eval[4];
rz(2*pi) eval[4];
sx eval[4];
rz(3*pi) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
cx eval[3],eval[4];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(5.2422917701336145) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(7.142071065908791) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(9.790267716737569) eval[3];
rz(pi) eval[3];
sx eval[3];
rz(2*pi) eval[3];
sx eval[3];
rz(3*pi) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi) eval[4];
rz(pi) eval[4];
sx eval[4];
rz(2*pi) eval[4];
sx eval[4];
rz(3*pi) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(3*pi) eval[5];
rz(pi) eval[5];
sx eval[5];
rz(2*pi) eval[5];
sx eval[5];
rz(3*pi) eval[5];
rz(pi) eval[5];
sx eval[5];
rz(2*pi) eval[5];
sx eval[5];
rz(3*pi) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(pi) eval[6];
sx eval[6];
rz(2*pi) eval[6];
sx eval[6];
rz(3*pi) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
cx eval[2],eval[6];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/32) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
rz(pi) eval[6];
sx eval[6];
rz(2*pi) eval[6];
sx eval[6];
rz(3*pi) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
cx eval[2],eval[6];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
cx eval[2],eval[5];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/16) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
rz(pi) eval[5];
sx eval[5];
rz(2*pi) eval[5];
sx eval[5];
rz(3*pi) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
cx eval[2],eval[5];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(3*pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(3.730641276137879) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
cx eval[2],eval[4];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/8) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
rz(pi) eval[4];
sx eval[4];
rz(2*pi) eval[4];
sx eval[4];
rz(3*pi) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
cx eval[2],eval[4];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
cx eval[2],eval[3];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/4) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
rz(pi) eval[3];
sx eval[3];
rz(2*pi) eval[3];
sx eval[3];
rz(3*pi) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
cx eval[2],eval[3];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(6.898665015849973) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(11*pi/3) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(5.6677055985092) eval[2];
rz(pi) eval[2];
sx eval[2];
rz(2*pi) eval[2];
sx eval[2];
rz(3*pi) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi) eval[3];
sx eval[3];
rz(2*pi) eval[3];
sx eval[3];
rz(3*pi) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi) eval[4];
sx eval[4];
rz(2*pi) eval[4];
sx eval[4];
rz(3*pi) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi) eval[5];
sx eval[5];
rz(2*pi) eval[5];
sx eval[5];
rz(3*pi) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(3*pi) eval[6];
rz(pi) eval[6];
sx eval[6];
rz(2*pi) eval[6];
sx eval[6];
rz(3*pi) eval[6];
rz(pi) eval[6];
sx eval[6];
rz(2*pi) eval[6];
sx eval[6];
rz(3*pi) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
cx eval[1],eval[6];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(0.04908738521233912) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
rz(pi) eval[6];
sx eval[6];
rz(2*pi) eval[6];
sx eval[6];
rz(3*pi) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
cx eval[1],eval[6];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(3*pi) eval[1];
rz(pi) eval[1];
sx eval[1];
rz(2*pi) eval[1];
sx eval[1];
rz(3*pi) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
cx eval[1],eval[5];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/32) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
rz(pi) eval[5];
sx eval[5];
rz(2*pi) eval[5];
sx eval[5];
rz(3*pi) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
cx eval[1],eval[5];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(3*pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(3*pi/16) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
cx eval[1],eval[4];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/16) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
rz(pi) eval[4];
sx eval[4];
rz(2*pi) eval[4];
sx eval[4];
rz(3*pi) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
cx eval[1],eval[4];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
cx eval[1],eval[3];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/8) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
rz(pi) eval[3];
sx eval[3];
rz(2*pi) eval[3];
sx eval[3];
rz(3*pi) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
cx eval[1],eval[3];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
cx eval[1],eval[2];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/4) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
rz(pi) eval[2];
sx eval[2];
rz(2*pi) eval[2];
sx eval[2];
rz(3*pi) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
cx eval[1],eval[2];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/4) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi) eval[1];
rz(pi) eval[1];
sx eval[1];
rz(2*pi) eval[1];
sx eval[1];
rz(3*pi) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi) eval[2];
sx eval[2];
rz(2*pi) eval[2];
sx eval[2];
rz(3*pi) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi) eval[3];
sx eval[3];
rz(2*pi) eval[3];
sx eval[3];
rz(3*pi) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi) eval[4];
sx eval[4];
rz(2*pi) eval[4];
sx eval[4];
rz(3*pi) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi) eval[5];
sx eval[5];
rz(2*pi) eval[5];
sx eval[5];
rz(3*pi) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
rz(pi) eval[6];
rz(pi) eval[6];
sx eval[6];
rz(2*pi) eval[6];
sx eval[6];
rz(3*pi) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
cx eval[0],eval[6];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/128) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
rz(pi) eval[6];
sx eval[6];
rz(2*pi) eval[6];
sx eval[6];
rz(3*pi) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
cx eval[0],eval[6];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
cx eval[0],eval[5];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/64) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
rz(pi) eval[5];
sx eval[5];
rz(2*pi) eval[5];
sx eval[5];
rz(3*pi) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
cx eval[0],eval[5];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(3*pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(0.7363107781851064) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
cx eval[0],eval[4];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/32) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
rz(pi) eval[4];
sx eval[4];
rz(2*pi) eval[4];
sx eval[4];
rz(3*pi) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
cx eval[0],eval[4];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
cx eval[0],eval[3];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/16) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
rz(pi) eval[3];
sx eval[3];
rz(2*pi) eval[3];
sx eval[3];
rz(3*pi) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
cx eval[0],eval[3];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
cx eval[0],eval[2];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/8) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
rz(pi) eval[2];
sx eval[2];
rz(2*pi) eval[2];
sx eval[2];
rz(3*pi) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
cx eval[0],eval[2];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
cx eval[0],eval[1];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/4) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
rz(pi) eval[1];
sx eval[1];
rz(2*pi) eval[1];
sx eval[1];
rz(3*pi) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
cx eval[0],eval[1];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(3*pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(15*pi/4) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
sx eval[0];
rz(pi/2) eval[0];
rz(-pi/2) eval[0];
rz(pi/2) eval[0];
rz(7*pi/2) eval[1];
rz(-pi/2) eval[1];
rz(pi/2) eval[1];
sx eval[1];
rz(pi/2) eval[1];
rz(-pi/2) eval[1];
rz(7*pi/4) eval[1];
rz(7*pi/2) eval[2];
rz(-pi/2) eval[2];
rz(pi/2) eval[2];
sx eval[2];
rz(pi/2) eval[2];
rz(-pi/2) eval[2];
rz(7*pi/8) eval[2];
rz(7*pi/2) eval[3];
rz(-pi/2) eval[3];
rz(pi/2) eval[3];
sx eval[3];
rz(pi/2) eval[3];
rz(-pi/2) eval[3];
rz(7*pi/16) eval[3];
rz(7*pi/2) eval[4];
rz(-pi/2) eval[4];
rz(pi/2) eval[4];
sx eval[4];
rz(pi/2) eval[4];
rz(-pi/2) eval[4];
rz(3.0434178831651093) eval[4];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(pi/2) eval[5];
sx eval[5];
rz(pi/2) eval[5];
rz(-pi/2) eval[5];
rz(3.0925052683774568) eval[5];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
rz(pi/2) eval[6];
sx eval[6];
rz(pi/2) eval[6];
rz(-pi/2) eval[6];
rz(6.258641614573416) eval[6];
rz(pi/2) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
rz(12.223004148256297) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
sx q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
rz(pi) q[0];
