OPENQASM 2.0;
include "qelib1.inc";
qreg node[10];
creg c[10];
rz(pi) node[0];
rz(-pi/2) node[0];
ry(pi/2) node[0];
rx(pi) node[0];
rz(-pi/2) node[0];
rz(3*pi/2) node[0];
rz(-pi/2) node[0];
ry(pi/2) node[0];
rx(pi) node[0];
rz(-pi/2) node[0];
rz(3*pi) node[0];
rz(pi) node[1];
rz(-pi/2) node[1];
ry(pi/2) node[1];
rx(pi) node[1];
rz(-pi/2) node[1];
rz(3*pi/2) node[1];
rz(-pi/2) node[1];
ry(pi/2) node[1];
rx(pi) node[1];
rz(-pi/2) node[1];
rz(3*pi) node[1];
rz(pi) node[2];
rz(-pi/2) node[2];
ry(pi/2) node[2];
rx(pi) node[2];
rz(-pi/2) node[2];
rz(3*pi/2) node[2];
rz(-pi/2) node[2];
ry(pi/2) node[2];
rx(pi) node[2];
rz(-pi/2) node[2];
rz(3*pi) node[2];
ry(pi/2) node[2];
rz(pi) node[3];
rz(-pi/2) node[3];
ry(pi/2) node[3];
rx(pi) node[3];
rz(-pi/2) node[3];
rz(3*pi/2) node[3];
rz(-pi/2) node[3];
ry(pi/2) node[3];
rx(pi) node[3];
rz(-pi/2) node[3];
rz(3*pi) node[3];
rz(pi) node[4];
rz(-pi/2) node[4];
ry(pi/2) node[4];
rx(pi) node[4];
rz(-pi/2) node[4];
rz(3*pi/2) node[4];
rz(-pi/2) node[4];
ry(pi/2) node[4];
rx(pi) node[4];
rz(-pi/2) node[4];
rz(3*pi) node[4];
ry(pi/2) node[4];
rz(pi) node[5];
rz(-pi/2) node[5];
ry(pi/2) node[5];
rx(pi) node[5];
rz(-pi/2) node[5];
rz(3*pi/2) node[5];
rz(-pi/2) node[5];
ry(pi/2) node[5];
rx(pi) node[5];
rz(-pi/2) node[5];
rz(3*pi) node[5];
rz(pi) node[6];
rz(-pi/2) node[6];
ry(pi/2) node[6];
rx(pi) node[6];
rz(-pi/2) node[6];
rz(3*pi/2) node[6];
rz(-pi/2) node[6];
ry(pi/2) node[6];
rx(pi) node[6];
rz(-pi/2) node[6];
rz(3*pi) node[6];
rz(pi) node[7];
rz(-pi/2) node[7];
ry(pi/2) node[7];
rx(pi) node[7];
rz(-pi/2) node[7];
rz(3*pi/2) node[7];
rz(-pi/2) node[7];
ry(pi/2) node[7];
rx(pi) node[7];
rz(-pi/2) node[7];
rz(3*pi) node[7];
rxx(pi/2) node[2],node[7];
rx(-pi/2) node[2];
ry(-pi/2) node[2];
ry(pi/2) node[2];
rx(-pi/2) node[7];
rz(0.68724046) node[7];
rxx(pi/2) node[2],node[7];
rx(-pi/2) node[2];
ry(-pi/2) node[2];
ry(pi/2) node[2];
rxx(pi/2) node[2],node[1];
rx(-pi/2) node[1];
rz(0.68724046) node[1];
rx(-pi/2) node[2];
ry(-pi/2) node[2];
ry(pi/2) node[2];
rxx(pi/2) node[2],node[1];
rx(-pi/2) node[1];
ry(pi/2) node[1];
rx(-pi/2) node[2];
ry(-pi/2) node[2];
ry(pi/2) node[2];
rxx(pi/2) node[2],node[3];
rx(-pi/2) node[2];
ry(-pi/2) node[2];
ry(pi/2) node[2];
rx(-pi/2) node[3];
rz(0.68724046) node[3];
rxx(pi/2) node[2],node[3];
rx(-pi/2) node[2];
ry(-pi/2) node[2];
rxx(pi/2) node[1],node[2];
rx(-pi/2) node[1];
ry(-pi/2) node[1];
rx(-pi/2) node[2];
ry(pi/2) node[2];
rxx(pi/2) node[2],node[1];
rx(-pi/2) node[1];
ry(pi/2) node[1];
rx(-pi/2) node[2];
ry(-pi/2) node[2];
rxx(pi/2) node[1],node[2];
rx(-pi/2) node[1];
ry(-pi/2) node[1];
ry(pi/2) node[1];
rxx(pi/2) node[1],node[0];
rx(-pi/2) node[0];
rz(0.68724046) node[0];
rx(-pi/2) node[1];
ry(-pi/2) node[1];
ry(pi/2) node[1];
rxx(pi/2) node[1],node[0];
rx(-pi/2) node[0];
ry(pi/2) node[0];
rx(-pi/2) node[1];
ry(-pi/2) node[1];
rz(pi/2) node[1];
rz(-pi/2) node[1];
ry(pi/2) node[1];
rx(pi) node[1];
rz(-pi/2) node[1];
rz(4.188561653589793) node[1];
rz(-pi/2) node[1];
ry(pi/2) node[1];
rx(pi) node[1];
rz(-pi/2) node[1];
rz(9*pi/2) node[1];
rxx(pi/2) node[0],node[1];
rx(-pi/2) node[0];
ry(-pi/2) node[0];
ry(pi/2) node[0];
rx(-pi/2) node[1];
ry(pi/2) node[1];
rx(-pi/2) node[2];
rx(-pi/2) node[3];
rx(-pi/2) node[7];
ry(pi/2) node[7];
rxx(pi/2) node[7],node[6];
rx(-pi/2) node[6];
rz(0.68724046) node[6];
rx(-pi/2) node[7];
ry(-pi/2) node[7];
ry(pi/2) node[7];
rxx(pi/2) node[7],node[6];
rx(-pi/2) node[6];
rxx(pi/2) node[1],node[6];
rx(-pi/2) node[1];
ry(-pi/2) node[1];
rxx(pi/2) node[0],node[1];
rx(-pi/2) node[0];
ry(-pi/2) node[0];
rz(0.68724046) node[0];
ry(pi/2) node[0];
rx(-pi/2) node[1];
ry(pi/2) node[1];
rx(-pi/2) node[6];
rxx(pi/2) node[1],node[6];
rx(-pi/2) node[1];
ry(-pi/2) node[1];
rxx(pi/2) node[0],node[1];
rx(-pi/2) node[0];
ry(-pi/2) node[0];
ry(pi/2) node[0];
rx(-pi/2) node[1];
ry(pi/2) node[1];
rx(-pi/2) node[6];
rxx(pi/2) node[1],node[6];
rx(-pi/2) node[1];
ry(-pi/2) node[1];
rxx(pi/2) node[0],node[1];
rx(-pi/2) node[0];
ry(-pi/2) node[0];
ry(pi/2) node[0];
rx(-pi/2) node[1];
ry(pi/2) node[1];
rx(-pi/2) node[6];
rxx(pi/2) node[1],node[6];
rx(-pi/2) node[1];
ry(-pi/2) node[1];
rxx(pi/2) node[0],node[1];
rx(-pi/2) node[0];
ry(-pi/2) node[0];
rx(-pi/2) node[1];
ry(pi/2) node[1];
rxx(pi/2) node[1],node[0];
rx(-pi/2) node[0];
ry(pi/2) node[0];
rx(-pi/2) node[1];
ry(-pi/2) node[1];
rxx(pi/2) node[0],node[1];
rx(-pi/2) node[0];
ry(-pi/2) node[0];
rx(-pi/2) node[1];
ry(pi/2) node[1];
rx(-pi/2) node[6];
ry(pi/2) node[6];
rx(-pi/2) node[7];
ry(-pi/2) node[7];
ry(pi/2) node[7];
rz(pi) node[8];
rz(-pi/2) node[8];
ry(pi/2) node[8];
rx(pi) node[8];
rz(-pi/2) node[8];
rz(3*pi/2) node[8];
rz(-pi/2) node[8];
ry(pi/2) node[8];
rx(pi) node[8];
rz(-pi/2) node[8];
rz(3*pi) node[8];
rxx(pi/2) node[7],node[8];
rx(-pi/2) node[7];
ry(-pi/2) node[7];
ry(pi/2) node[7];
rx(-pi/2) node[8];
rz(0.68724046) node[8];
rxx(pi/2) node[7],node[8];
rx(-pi/2) node[7];
ry(-pi/2) node[7];
rxx(pi/2) node[6],node[7];
rx(-pi/2) node[6];
ry(-pi/2) node[6];
rx(-pi/2) node[7];
ry(pi/2) node[7];
rxx(pi/2) node[7],node[6];
rx(-pi/2) node[6];
ry(pi/2) node[6];
rx(-pi/2) node[7];
ry(-pi/2) node[7];
rxx(pi/2) node[6],node[7];
rx(-pi/2) node[6];
ry(-pi/2) node[6];
ry(pi/2) node[6];
rxx(pi/2) node[6],node[5];
rx(-pi/2) node[5];
rz(0.68724046) node[5];
rx(-pi/2) node[6];
ry(-pi/2) node[6];
ry(pi/2) node[6];
rxx(pi/2) node[6],node[5];
rx(-pi/2) node[5];
ry(pi/2) node[5];
rx(-pi/2) node[6];
ry(-pi/2) node[6];
rz(pi/2) node[6];
rz(-pi/2) node[6];
ry(pi/2) node[6];
rx(pi) node[6];
rz(-pi/2) node[6];
rz(4.188561653589793) node[6];
rz(-pi/2) node[6];
ry(pi/2) node[6];
rx(pi) node[6];
rz(-pi/2) node[6];
rz(9*pi/2) node[6];
rxx(pi/2) node[5],node[6];
rx(-pi/2) node[5];
ry(-pi/2) node[5];
rx(-pi/2) node[6];
ry(pi/2) node[6];
rxx(pi/2) node[6],node[5];
rx(-pi/2) node[5];
ry(pi/2) node[5];
rx(-pi/2) node[6];
ry(-pi/2) node[6];
rxx(pi/2) node[5],node[6];
rx(-pi/2) node[5];
ry(-pi/2) node[5];
rx(-pi/2) node[6];
rx(-pi/2) node[7];
rx(-pi/2) node[8];
rz(pi) node[9];
rz(-pi/2) node[9];
ry(pi/2) node[9];
rx(pi) node[9];
rz(-pi/2) node[9];
rz(3*pi/2) node[9];
rz(-pi/2) node[9];
ry(pi/2) node[9];
rx(pi) node[9];
rz(-pi/2) node[9];
rz(3*pi) node[9];
ry(pi/2) node[9];
rxx(pi/2) node[9],node[8];
rx(-pi/2) node[8];
rz(0.68724046) node[8];
rx(-pi/2) node[9];
ry(-pi/2) node[9];
ry(pi/2) node[9];
rxx(pi/2) node[9],node[8];
rx(-pi/2) node[8];
ry(pi/2) node[8];
rxx(pi/2) node[8],node[3];
rx(-pi/2) node[3];
ry(pi/2) node[3];
rxx(pi/2) node[3],node[2];
rx(-pi/2) node[2];
rx(-pi/2) node[3];
ry(-pi/2) node[3];
rx(-pi/2) node[8];
ry(-pi/2) node[8];
ry(pi/2) node[8];
rxx(pi/2) node[8],node[3];
rx(-pi/2) node[3];
ry(pi/2) node[3];
rxx(pi/2) node[3],node[2];
rx(-pi/2) node[2];
rz(0.68724046) node[2];
ry(pi/2) node[2];
rxx(pi/2) node[2],node[7];
rx(-pi/2) node[2];
ry(-pi/2) node[2];
rx(-pi/2) node[3];
ry(-pi/2) node[3];
rxx(pi/2) node[4],node[3];
rx(-pi/2) node[3];
ry(pi/2) node[3];
rx(-pi/2) node[4];
ry(-pi/2) node[4];
ry(pi/2) node[4];
rx(-pi/2) node[7];
ry(pi/2) node[7];
rxx(pi/2) node[7],node[2];
rx(-pi/2) node[2];
ry(pi/2) node[2];
rx(-pi/2) node[7];
ry(-pi/2) node[7];
rxx(pi/2) node[2],node[7];
rx(-pi/2) node[2];
ry(-pi/2) node[2];
rxx(pi/2) node[3],node[2];
rx(-pi/2) node[2];
rx(-pi/2) node[3];
ry(-pi/2) node[3];
rxx(pi/2) node[4],node[3];
rx(-pi/2) node[3];
ry(pi/2) node[3];
rxx(pi/2) node[3],node[2];
rx(-pi/2) node[2];
rx(-pi/2) node[3];
ry(-pi/2) node[3];
rx(-pi/2) node[4];
ry(-pi/2) node[4];
rz(0.68724046) node[4];
ry(pi/2) node[4];
rxx(pi/2) node[4],node[3];
rx(-pi/2) node[3];
ry(pi/2) node[3];
rxx(pi/2) node[3],node[2];
rx(-pi/2) node[2];
rx(-pi/2) node[3];
ry(-pi/2) node[3];
rx(-pi/2) node[4];
ry(-pi/2) node[4];
ry(pi/2) node[4];
rxx(pi/2) node[4],node[3];
rx(-pi/2) node[3];
ry(pi/2) node[3];
rxx(pi/2) node[3],node[2];
rx(-pi/2) node[2];
ry(pi/2) node[2];
rx(-pi/2) node[3];
ry(-pi/2) node[3];
rxx(pi/2) node[2],node[3];
rx(-pi/2) node[2];
ry(-pi/2) node[2];
ry(pi/2) node[2];
rx(-pi/2) node[3];
rz(0.68724046) node[3];
rxx(pi/2) node[2],node[3];
rx(-pi/2) node[2];
ry(-pi/2) node[2];
rz(pi/2) node[2];
rz(-pi/2) node[2];
ry(pi/2) node[2];
rx(pi) node[2];
rz(-pi/2) node[2];
rz(4.188561653589793) node[2];
rz(-pi/2) node[2];
ry(pi/2) node[2];
rx(pi) node[2];
rz(-pi/2) node[2];
rz(9*pi/2) node[2];
rxx(pi/2) node[1],node[2];
rx(-pi/2) node[1];
ry(-pi/2) node[1];
rx(-pi/2) node[2];
ry(pi/2) node[2];
rxx(pi/2) node[2],node[1];
rx(-pi/2) node[1];
ry(pi/2) node[1];
rx(-pi/2) node[2];
ry(-pi/2) node[2];
rxx(pi/2) node[1],node[2];
rx(-pi/2) node[1];
ry(-pi/2) node[1];
rx(-pi/2) node[2];
ry(pi/2) node[2];
rx(-pi/2) node[3];
rx(-pi/2) node[4];
ry(-pi/2) node[4];
rx(-pi/2) node[7];
rx(-pi/2) node[8];
ry(-pi/2) node[8];
ry(pi/2) node[8];
rxx(pi/2) node[8],node[7];
rx(-pi/2) node[7];
ry(pi/2) node[7];
rx(-pi/2) node[8];
ry(-pi/2) node[8];
ry(pi/2) node[8];
rx(-pi/2) node[9];
ry(-pi/2) node[9];
ry(pi/2) node[9];
rxx(pi/2) node[9],node[4];
rx(-pi/2) node[4];
rz(0.68724046) node[4];
rx(-pi/2) node[9];
ry(-pi/2) node[9];
ry(pi/2) node[9];
rxx(pi/2) node[9],node[4];
rx(-pi/2) node[4];
ry(pi/2) node[4];
rx(-pi/2) node[9];
ry(-pi/2) node[9];
rxx(pi/2) node[4],node[9];
rx(-pi/2) node[4];
ry(-pi/2) node[4];
rx(-pi/2) node[9];
ry(pi/2) node[9];
rxx(pi/2) node[9],node[4];
rx(-pi/2) node[4];
ry(pi/2) node[4];
rx(-pi/2) node[9];
ry(-pi/2) node[9];
rxx(pi/2) node[4],node[9];
rx(-pi/2) node[4];
ry(-pi/2) node[4];
ry(pi/2) node[4];
rxx(pi/2) node[4],node[3];
rx(-pi/2) node[3];
rz(0.68724046) node[3];
rx(-pi/2) node[4];
ry(-pi/2) node[4];
ry(pi/2) node[4];
rxx(pi/2) node[4],node[3];
rx(-pi/2) node[3];
rxx(pi/2) node[2],node[3];
rx(-pi/2) node[2];
ry(-pi/2) node[2];
rx(-pi/2) node[3];
ry(pi/2) node[3];
rxx(pi/2) node[3],node[2];
rx(-pi/2) node[2];
ry(pi/2) node[2];
rx(-pi/2) node[3];
ry(-pi/2) node[3];
rxx(pi/2) node[2],node[3];
rx(-pi/2) node[2];
ry(-pi/2) node[2];
rx(-pi/2) node[3];
rx(-pi/2) node[4];
ry(-pi/2) node[4];
ry(pi/2) node[4];
rxx(pi/2) node[4],node[3];
rx(-pi/2) node[3];
rz(0.68724046) node[3];
rx(-pi/2) node[4];
ry(-pi/2) node[4];
ry(pi/2) node[4];
rxx(pi/2) node[4],node[3];
rx(-pi/2) node[3];
rx(-pi/2) node[4];
ry(-pi/2) node[4];
rz(pi/2) node[4];
rz(-pi/2) node[4];
ry(pi/2) node[4];
rx(pi) node[4];
rz(-pi/2) node[4];
rz(4.188561653589793) node[4];
rz(-pi/2) node[4];
ry(pi/2) node[4];
rx(pi) node[4];
rz(-pi/2) node[4];
rz(9*pi/2) node[4];
rxx(pi/2) node[7],node[2];
rx(-pi/2) node[2];
rz(0.68724046) node[2];
rx(-pi/2) node[7];
ry(-pi/2) node[7];
ry(pi/2) node[7];
rxx(pi/2) node[7],node[2];
rx(-pi/2) node[2];
rz(pi/2) node[2];
rz(-pi/2) node[2];
ry(pi/2) node[2];
rx(pi) node[2];
rz(-pi/2) node[2];
rz(4.188561653589793) node[2];
rz(-pi/2) node[2];
ry(pi/2) node[2];
rx(pi) node[2];
rz(-pi/2) node[2];
rz(9*pi/2) node[2];
rx(-pi/2) node[7];
ry(-pi/2) node[7];
ry(pi/2) node[7];
rxx(pi/2) node[7],node[6];
rx(-pi/2) node[6];
rz(0.68724046) node[6];
rx(-pi/2) node[7];
ry(-pi/2) node[7];
ry(pi/2) node[7];
rxx(pi/2) node[7],node[6];
rx(-pi/2) node[6];
ry(pi/2) node[6];
rx(-pi/2) node[7];
ry(-pi/2) node[7];
rz(pi/2) node[7];
rz(-pi/2) node[7];
ry(pi/2) node[7];
rx(pi) node[7];
rz(-pi/2) node[7];
rz(4.188561653589793) node[7];
rz(-pi/2) node[7];
ry(pi/2) node[7];
rx(pi) node[7];
rz(-pi/2) node[7];
rz(9*pi/2) node[7];
rxx(pi/2) node[6],node[7];
rx(-pi/2) node[6];
ry(-pi/2) node[6];
rx(-pi/2) node[7];
ry(pi/2) node[7];
rxx(pi/2) node[7],node[6];
rx(-pi/2) node[6];
ry(pi/2) node[6];
rx(-pi/2) node[7];
ry(-pi/2) node[7];
rxx(pi/2) node[6],node[7];
rx(-pi/2) node[6];
ry(-pi/2) node[6];
rx(-pi/2) node[7];
ry(pi/2) node[7];
rx(-pi/2) node[9];
rxx(pi/2) node[8],node[9];
rx(-pi/2) node[8];
ry(-pi/2) node[8];
ry(pi/2) node[8];
rx(-pi/2) node[9];
rz(0.68724046) node[9];
rxx(pi/2) node[8],node[9];
rx(-pi/2) node[8];
ry(-pi/2) node[8];
rz(pi/2) node[8];
rz(-pi/2) node[8];
ry(pi/2) node[8];
rx(pi) node[8];
rz(-pi/2) node[8];
rz(4.188561653589793) node[8];
rz(-pi/2) node[8];
ry(pi/2) node[8];
rx(pi) node[8];
rz(-pi/2) node[8];
rz(9*pi/2) node[8];
rxx(pi/2) node[7],node[8];
rx(-pi/2) node[7];
ry(-pi/2) node[7];
rx(-pi/2) node[8];
ry(pi/2) node[8];
rxx(pi/2) node[8],node[7];
rx(-pi/2) node[7];
ry(pi/2) node[7];
rx(-pi/2) node[8];
ry(-pi/2) node[8];
rxx(pi/2) node[7],node[8];
rx(-pi/2) node[7];
ry(-pi/2) node[7];
rx(-pi/2) node[8];
ry(pi/2) node[8];
rxx(pi/2) node[8],node[3];
rx(-pi/2) node[3];
rz(0.68724046) node[3];
rx(-pi/2) node[8];
ry(-pi/2) node[8];
ry(pi/2) node[8];
rxx(pi/2) node[8],node[3];
rx(-pi/2) node[3];
rz(pi/2) node[3];
rz(-pi/2) node[3];
ry(pi/2) node[3];
rx(pi) node[3];
rz(-pi/2) node[3];
rz(4.188561653589793) node[3];
rz(-pi/2) node[3];
ry(pi/2) node[3];
rx(pi) node[3];
rz(-pi/2) node[3];
rz(9*pi/2) node[3];
rx(-pi/2) node[8];
ry(-pi/2) node[8];
ry(pi/2) node[8];
rx(-pi/2) node[9];
rxx(pi/2) node[8],node[9];
rx(-pi/2) node[8];
ry(-pi/2) node[8];
ry(pi/2) node[8];
rx(-pi/2) node[9];
rz(0.68724046) node[9];
rxx(pi/2) node[8],node[9];
rx(-pi/2) node[8];
ry(-pi/2) node[8];
rz(pi/2) node[8];
rz(-pi/2) node[8];
ry(pi/2) node[8];
rx(pi) node[8];
rz(-pi/2) node[8];
rz(4.188561653589793) node[8];
rz(-pi/2) node[8];
ry(pi/2) node[8];
rx(pi) node[8];
rz(-pi/2) node[8];
rz(9*pi/2) node[8];
rx(-pi/2) node[9];
rz(pi/2) node[9];
rz(-pi/2) node[9];
ry(pi/2) node[9];
rx(pi) node[9];
rz(-pi/2) node[9];
rz(4.188561653589793) node[9];
rz(-pi/2) node[9];
ry(pi/2) node[9];
rx(pi) node[9];
rz(-pi/2) node[9];
rz(9*pi/2) node[9];
