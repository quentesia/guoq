OPENQASM 2.0;
include "qelib1.inc";
qreg q[16];
creg c[16];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
rz(-0.7854) q[0];
ry(pi/2) q[0];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(0.7854) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
rxx(pi/2) q[0],q[1];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(-0.3927) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(pi/2) q[1];
rz(-0.7854) q[1];
ry(pi/2) q[1];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(0.3927) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[0],q[2];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(-0.19635) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(0.7854) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
rxx(pi/2) q[1],q[2];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(-0.3927) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(pi/2) q[2];
rz(-0.7854) q[2];
ry(pi/2) q[2];
rxx(pi/2) q[0],q[3];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(0.19635) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[3];
rxx(pi/2) q[0],q[3];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(-0.09815) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[3];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(0.3927) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[3];
rxx(pi/2) q[1],q[3];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(-0.19635) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(0.7854) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[3];
rxx(pi/2) q[2],q[3];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(-0.3927) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(pi/2) q[3];
rz(-0.7854) q[3];
ry(pi/2) q[3];
rxx(pi/2) q[0],q[4];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(0.09815) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[4];
rxx(pi/2) q[0],q[4];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(-0.0491) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[4];
rxx(pi/2) q[1],q[4];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(0.19635) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[4];
rxx(pi/2) q[1],q[4];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(-0.09815) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[4];
rxx(pi/2) q[2],q[4];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(0.3927) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[4];
rxx(pi/2) q[2],q[4];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(-0.19635) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[4];
rxx(pi/2) q[3],q[4];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(0.7854) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[4];
rxx(pi/2) q[3],q[4];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(-0.3927) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(pi/2) q[4];
rz(-0.7854) q[4];
ry(pi/2) q[4];
rxx(pi/2) q[0],q[5];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(0.0491) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[5];
rxx(pi/2) q[0],q[5];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(-0.02455) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[5];
rxx(pi/2) q[1],q[5];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(0.09815) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[5];
rxx(pi/2) q[1],q[5];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(-0.0491) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[5];
rxx(pi/2) q[2],q[5];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(0.19635) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[5];
rxx(pi/2) q[2],q[5];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(-0.09815) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[5];
rxx(pi/2) q[3],q[5];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(0.3927) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[5];
rxx(pi/2) q[3],q[5];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(-0.19635) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(0.7854) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
rxx(pi/2) q[4],q[5];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(-0.3927) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(pi/2) q[5];
rz(-0.7854) q[5];
ry(pi/2) q[5];
rxx(pi/2) q[0],q[6];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(0.02455) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[6];
rxx(pi/2) q[0],q[6];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(-0.01225) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[6];
rxx(pi/2) q[1],q[6];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(0.0491) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[6];
rxx(pi/2) q[1],q[6];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(-0.02455) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[6];
rxx(pi/2) q[2],q[6];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(0.09815) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[6];
rxx(pi/2) q[2],q[6];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(-0.0491) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[6];
rxx(pi/2) q[3],q[6];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(0.19635) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[6];
rxx(pi/2) q[3],q[6];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(-0.09815) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[6];
rxx(pi/2) q[4],q[6];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(0.3927) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[6];
rxx(pi/2) q[4],q[6];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(-0.19635) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[6];
rxx(pi/2) q[5],q[6];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(0.7854) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[6];
rxx(pi/2) q[5],q[6];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(-0.3927) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(pi/2) q[6];
rz(-0.7854) q[6];
ry(pi/2) q[6];
rxx(pi/2) q[0],q[7];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(0.01225) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[7];
rxx(pi/2) q[0],q[7];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(-0.00615) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[7];
rxx(pi/2) q[1],q[7];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(0.02455) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[7];
rxx(pi/2) q[1],q[7];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(-0.01225) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[7];
rxx(pi/2) q[2],q[7];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(0.0491) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[7];
rxx(pi/2) q[2],q[7];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(-0.02455) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[7];
rxx(pi/2) q[3],q[7];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(0.09815) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[7];
rxx(pi/2) q[3],q[7];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(-0.0491) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[7];
rxx(pi/2) q[4],q[7];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(0.19635) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[7];
rxx(pi/2) q[4],q[7];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(-0.09815) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[7];
rxx(pi/2) q[5],q[7];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(0.3927) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[7];
rxx(pi/2) q[5],q[7];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(-0.19635) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[7];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(0.7854) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[7];
rxx(pi/2) q[6],q[7];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(-0.3927) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[7];
rz(pi/2) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(pi/2) q[7];
rz(-0.7854) q[7];
ry(pi/2) q[7];
rxx(pi/2) q[0],q[8];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(0.00615) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[8];
rxx(pi/2) q[0],q[8];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(-0.00305) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[8];
rxx(pi/2) q[1],q[8];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(0.01225) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[8];
rxx(pi/2) q[1],q[8];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(-0.00615) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[8];
rxx(pi/2) q[2],q[8];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(0.02455) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[8];
rxx(pi/2) q[2],q[8];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(-0.01225) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[8];
rxx(pi/2) q[3],q[8];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(0.0491) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[8];
rxx(pi/2) q[3],q[8];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(-0.02455) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[8];
rxx(pi/2) q[4],q[8];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(0.09815) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[8];
rxx(pi/2) q[4],q[8];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(-0.0491) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[8];
rxx(pi/2) q[5],q[8];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(0.19635) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[8];
rxx(pi/2) q[5],q[8];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(-0.09815) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[8];
rxx(pi/2) q[6],q[8];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(0.3927) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[8];
rxx(pi/2) q[6],q[8];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(-0.19635) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[8];
rxx(pi/2) q[7],q[8];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(0.7854) q[7];
ry(pi/2) q[7];
rx(-pi/2) q[8];
rxx(pi/2) q[7],q[8];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(-0.3927) q[7];
ry(pi/2) q[7];
rx(-pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(pi/2) q[8];
rz(-0.7854) q[8];
ry(pi/2) q[8];
rxx(pi/2) q[0],q[9];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(0.00305) q[0];
ry(pi/2) q[0];
rx(-pi/2) q[9];
rxx(pi/2) q[0],q[9];
rx(-pi/2) q[0];
ry(-pi/2) q[0];
rz(pi/2) q[0];
rz(-pi/2) q[0];
ry(pi/2) q[0];
rx(pi) q[0];
rz(-pi/2) q[0];
rz(pi/2) q[0];
rx(-pi/2) q[9];
rxx(pi/2) q[1],q[9];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(0.00615) q[1];
ry(pi/2) q[1];
rx(-pi/2) q[9];
rxx(pi/2) q[1],q[9];
rx(-pi/2) q[1];
ry(-pi/2) q[1];
rz(pi/2) q[1];
rz(-pi/2) q[1];
ry(pi/2) q[1];
rx(pi) q[1];
rz(-pi/2) q[1];
rz(pi/2) q[1];
rx(-pi/2) q[9];
rxx(pi/2) q[2],q[9];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(0.01225) q[2];
ry(pi/2) q[2];
rx(-pi/2) q[9];
rxx(pi/2) q[2],q[9];
rx(-pi/2) q[2];
ry(-pi/2) q[2];
rz(pi/2) q[2];
rz(-pi/2) q[2];
ry(pi/2) q[2];
rx(pi) q[2];
rz(-pi/2) q[2];
rz(pi/2) q[2];
rx(-pi/2) q[9];
rxx(pi/2) q[3],q[9];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(0.02455) q[3];
ry(pi/2) q[3];
rx(-pi/2) q[9];
rxx(pi/2) q[3],q[9];
rx(-pi/2) q[3];
ry(-pi/2) q[3];
rz(pi/2) q[3];
rz(-pi/2) q[3];
ry(pi/2) q[3];
rx(pi) q[3];
rz(-pi/2) q[3];
rz(pi/2) q[3];
rx(-pi/2) q[9];
rxx(pi/2) q[4],q[9];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(0.0491) q[4];
ry(pi/2) q[4];
rx(-pi/2) q[9];
rxx(pi/2) q[4],q[9];
rx(-pi/2) q[4];
ry(-pi/2) q[4];
rz(pi/2) q[4];
rz(-pi/2) q[4];
ry(pi/2) q[4];
rx(pi) q[4];
rz(-pi/2) q[4];
rz(pi/2) q[4];
rx(-pi/2) q[9];
rxx(pi/2) q[5],q[9];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(0.09815) q[5];
ry(pi/2) q[5];
rx(-pi/2) q[9];
rxx(pi/2) q[5],q[9];
rx(-pi/2) q[5];
ry(-pi/2) q[5];
rz(pi/2) q[5];
rz(-pi/2) q[5];
ry(pi/2) q[5];
rx(pi) q[5];
rz(-pi/2) q[5];
rz(pi/2) q[5];
rx(-pi/2) q[9];
rxx(pi/2) q[6],q[9];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(0.19635) q[6];
ry(pi/2) q[6];
rx(-pi/2) q[9];
rxx(pi/2) q[6],q[9];
rx(-pi/2) q[6];
ry(-pi/2) q[6];
rz(pi/2) q[6];
rz(-pi/2) q[6];
ry(pi/2) q[6];
rx(pi) q[6];
rz(-pi/2) q[6];
rz(pi/2) q[6];
rx(-pi/2) q[9];
rxx(pi/2) q[7],q[9];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(0.3927) q[7];
ry(pi/2) q[7];
rx(-pi/2) q[9];
rxx(pi/2) q[7],q[9];
rx(-pi/2) q[7];
ry(-pi/2) q[7];
rz(pi/2) q[7];
rz(-pi/2) q[7];
ry(pi/2) q[7];
rx(pi) q[7];
rz(-pi/2) q[7];
rz(pi/2) q[7];
rx(-pi/2) q[9];
rxx(pi/2) q[8],q[9];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
rz(0.7854) q[8];
ry(pi/2) q[8];
rx(-pi/2) q[9];
rxx(pi/2) q[8],q[9];
rx(-pi/2) q[8];
ry(-pi/2) q[8];
rz(pi/2) q[8];
rz(-pi/2) q[8];
ry(pi/2) q[8];
rx(pi) q[8];
rz(-pi/2) q[8];
rz(pi/2) q[8];
rx(-pi/2) q[9];
rz(pi/2) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(pi/2) q[9];
rz(pi/2) q[9];
rz(-pi/2) q[9];
ry(pi/2) q[9];
rx(pi) q[9];
rz(-pi/2) q[9];
rz(pi/2) q[9];
