OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
u3(pi/2,-pi/2,pi/2) q[0];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[0],q[1];
u3(0.017425107084211,-pi/2,pi/2) q[0];
u1(0.017425107084211) q[1];
cx q[0],q[1];
u3(-pi/2,-pi/2,pi/2) q[0];
u3(pi/2,-pi/2,pi/2) q[0];
u3(-pi/2,-pi/2,pi/2) q[1];
u3(pi/2,-pi/2,pi/2) q[1];
u3(pi/2,-pi/2,pi/2) q[2];
u3(pi/2,-pi/2,pi/2) q[3];
cx q[2],q[3];
u3(0.008460688024681,-pi/2,pi/2) q[2];
u1(0.008460688024681) q[3];
cx q[2],q[3];
u3(-pi/2,-pi/2,pi/2) q[2];
u3(pi/2,-pi/2,pi/2) q[2];
cx q[1],q[2];
u3(0.029459332705659,-pi/2,pi/2) q[1];
u1(0.029459332705659) q[2];
cx q[1],q[2];
u3(-pi/2,-pi/2,pi/2) q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[0],q[1];
u3(0.033660395699744,-pi/2,pi/2) q[0];
u1(0.033660395699744) q[1];
cx q[0],q[1];
u3(-pi/2,-pi/2,pi/2) q[0];
u3(pi/2,-pi/2,pi/2) q[0];
u3(-pi/2,-pi/2,pi/2) q[1];
u3(pi/2,-pi/2,pi/2) q[1];
u3(-pi/2,-pi/2,pi/2) q[2];
u3(pi/2,-pi/2,pi/2) q[2];
u3(-pi/2,-pi/2,pi/2) q[3];
u3(pi/2,-pi/2,pi/2) q[3];
u3(pi/2,-pi/2,pi/2) q[4];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[4],q[5];
u3(0.008460688024681,-pi/2,pi/2) q[4];
u1(0.008460688024681) q[5];
cx q[4],q[5];
u3(-pi/2,-pi/2,pi/2) q[4];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[3],q[4];
u3(0.022104480019715,-pi/2,pi/2) q[3];
u1(0.022104480019715) q[4];
cx q[3],q[4];
u3(-pi/2,-pi/2,pi/2) q[3];
u3(pi/2,-pi/2,pi/2) q[3];
cx q[2],q[3];
u3(0.039257212732881,-pi/2,pi/2) q[2];
u1(0.039257212732881) q[3];
cx q[2],q[3];
u3(-pi/2,-pi/2,pi/2) q[2];
u3(pi/2,-pi/2,pi/2) q[2];
cx q[1],q[2];
u3(0.039254355008842,-pi/2,pi/2) q[1];
u1(0.039254355008842) q[2];
cx q[1],q[2];
u3(-pi/2,-pi/2,pi/2) q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[0],q[1];
u3(0.033659074687323,-pi/2,pi/2) q[0];
u1(0.033659074687323) q[1];
cx q[0],q[1];
u3(-pi/2,-pi/2,pi/2) q[0];
u3(pi/2,-pi/2,pi/2) q[0];
u3(-pi/2,-pi/2,pi/2) q[1];
u3(pi/2,-pi/2,pi/2) q[1];
u3(-pi/2,-pi/2,pi/2) q[2];
u3(pi/2,-pi/2,pi/2) q[2];
u3(-pi/2,-pi/2,pi/2) q[3];
u3(pi/2,-pi/2,pi/2) q[3];
u3(-pi/2,-pi/2,pi/2) q[4];
u3(pi/2,-pi/2,pi/2) q[4];
u3(-pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[6];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[6],q[7];
u3(0.017425107084211,-pi/2,pi/2) q[6];
u1(0.017425107084211) q[7];
cx q[6],q[7];
u3(-pi/2,-pi/2,pi/2) q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[5],q[6];
u3(0.029459332705659,-pi/2,pi/2) q[5];
u1(0.029459332705659) q[6];
cx q[5],q[6];
u3(-pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[4],q[5];
u3(0.039257212732881,-pi/2,pi/2) q[4];
u1(0.039257212732881) q[5];
cx q[4],q[5];
u3(-pi/2,-pi/2,pi/2) q[4];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[3],q[4];
u3(0.051510552261095,-pi/2,pi/2) q[3];
u1(0.051510552261095) q[4];
cx q[3],q[4];
u3(-pi/2,-pi/2,pi/2) q[3];
u3(pi/2,-pi/2,pi/2) q[3];
cx q[2],q[3];
u3(0.047098419370733,-pi/2,pi/2) q[2];
u1(0.047098419370733) q[3];
cx q[2],q[3];
u3(-pi/2,-pi/2,pi/2) q[2];
u3(pi/2,-pi/2,pi/2) q[2];
cx q[1],q[2];
u3(0.039258937567556,-pi/2,pi/2) q[1];
u1(0.039258937567556) q[2];
cx q[1],q[2];
u3(-pi/2,-pi/2,pi/2) q[1];
u3(pi/2,-pi/2,pi/2) q[1];
cx q[0],q[1];
u3(0.033663039888571,-pi/2,pi/2) q[0];
u1(0.033663039888571) q[1];
cx q[0],q[1];
u3(-pi/2,-pi/2,pi/2) q[0];
u3(-pi/2,-pi/2,pi/2) q[1];
u3(pi/2,-pi/2,pi/2) q[1];
u3(-pi/2,-pi/2,pi/2) q[2];
u3(pi/2,-pi/2,pi/2) q[2];
u3(-pi/2,-pi/2,pi/2) q[3];
u3(pi/2,-pi/2,pi/2) q[3];
u3(-pi/2,-pi/2,pi/2) q[4];
u3(pi/2,-pi/2,pi/2) q[4];
u3(-pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[5];
u3(-pi/2,-pi/2,pi/2) q[6];
u3(pi/2,-pi/2,pi/2) q[6];
u3(-pi/2,-pi/2,pi/2) q[7];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[6],q[7];
u3(0.033660395699744,-pi/2,pi/2) q[6];
u1(0.033660395699744) q[7];
cx q[6],q[7];
u3(-pi/2,-pi/2,pi/2) q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[5],q[6];
u3(0.039254355008842,-pi/2,pi/2) q[5];
u1(0.039254355008842) q[6];
cx q[5],q[6];
u3(-pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[4],q[5];
u3(0.047098419370733,-pi/2,pi/2) q[4];
u1(0.047098419370733) q[5];
cx q[4],q[5];
u3(-pi/2,-pi/2,pi/2) q[4];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[3],q[4];
u3(0.036803814449376,-pi/2,pi/2) q[3];
u1(0.036803814449376) q[4];
cx q[3],q[4];
u3(-pi/2,-pi/2,pi/2) q[3];
u3(pi/2,-pi/2,pi/2) q[3];
cx q[2],q[3];
u3(0.023575179182158,-pi/2,pi/2) q[2];
u1(0.023575179182158) q[3];
cx q[2],q[3];
u3(-pi/2,-pi/2,pi/2) q[2];
u3(pi/2,-pi/2,pi/2) q[2];
cx q[1],q[2];
u3(0.010420575712734,-pi/2,pi/2) q[1];
u1(0.010420575712734) q[2];
cx q[1],q[2];
u3(-pi/2,-pi/2,pi/2) q[1];
u3(-pi/2,-pi/2,pi/2) q[2];
u3(-pi/2,-pi/2,pi/2) q[3];
u3(pi/2,-pi/2,pi/2) q[3];
u3(-pi/2,-pi/2,pi/2) q[4];
u3(pi/2,-pi/2,pi/2) q[4];
u3(-pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[5];
u3(-pi/2,-pi/2,pi/2) q[6];
u3(pi/2,-pi/2,pi/2) q[6];
u3(-pi/2,-pi/2,pi/2) q[7];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[6],q[7];
u3(0.033659074687323,-pi/2,pi/2) q[6];
u1(0.033659074687323) q[7];
cx q[6],q[7];
u3(-pi/2,-pi/2,pi/2) q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[5],q[6];
u3(0.039258937567556,-pi/2,pi/2) q[5];
u1(0.039258937567556) q[6];
cx q[5],q[6];
u3(-pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[5];
cx q[4],q[5];
u3(0.023575179182158,-pi/2,pi/2) q[4];
u1(0.023575179182158) q[5];
cx q[4],q[5];
u3(-pi/2,-pi/2,pi/2) q[4];
u3(pi/2,-pi/2,pi/2) q[4];
cx q[3],q[4];
u3(0.007970953269814,-pi/2,pi/2) q[3];
u1(0.007970953269814) q[4];
cx q[3],q[4];
u3(-pi/2,-pi/2,pi/2) q[3];
u3(-pi/2,-pi/2,pi/2) q[4];
u3(-pi/2,-pi/2,pi/2) q[5];
u3(pi/2,-pi/2,pi/2) q[5];
u3(-pi/2,-pi/2,pi/2) q[6];
u3(pi/2,-pi/2,pi/2) q[6];
u3(-pi/2,-pi/2,pi/2) q[7];
u3(pi/2,-pi/2,pi/2) q[7];
cx q[6],q[7];
u3(0.033663039888571,-pi/2,pi/2) q[6];
u1(0.033663039888571) q[7];
cx q[6],q[7];
u3(-pi/2,-pi/2,pi/2) q[6];
u3(pi/2,-pi/2,pi/2) q[6];
cx q[5],q[6];
u3(0.010420575712734,-pi/2,pi/2) q[5];
u1(0.010420575712734) q[6];
cx q[5],q[6];
u3(-pi/2,-pi/2,pi/2) q[5];
u3(-pi/2,-pi/2,pi/2) q[6];
u3(-pi/2,-pi/2,pi/2) q[7];
