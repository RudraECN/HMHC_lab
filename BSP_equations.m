P = [18;
10.5;
32;
33;
32;
27.5;
49;
44.5;
22.4;
17.5;
18;
30.5;
13.5;
29.4;
17;
27.1;
27;
31.3;
23;
18.5;
8;
26.8;
35.7;
38;
53.2;
61.5;
96.8;
98.5;
80.7;
96.5;
10.4;
8.8;
11;
2.9;
21.5;
35.5;
33.8;
35.5;
33.5;
28.5;
65.5];

%%modified hanavan model
%Hand
%shape-ER  Group-Elliptical solid
Hand_a=P(14)/(2*pi);
Hand_b=Hand.a;
Hand_c=P(2)/2;

%Forearm
%shape- TCC group-ES

Forearm_a0=P(17)/(2*pi);
Forearm_b0=Forearm.a0;
Forearm_a1=P(15)/(2*pi);
Forearm_b1=Forearm.a1;
Forearm_L=P(3);

%Upperarm
%shape-TCC group-ES
Upperarm_a0=P(18)/(2*pi);
Upperarm_b0=Upperarm.a0;
Upperarm_a1=P(17)/(2*pi);
Upperarm_b1=Upperarm.a1;
Upperarm_L=P(5);

%Foot
%shape-ES Circ.Base group-ES
Foot_a0=P(19)/(2*pi);
Foot_b0=Foot.a0;
Foot_a1=(P(33)+P(34))/4;
Foot_b1=(P(20)+P(21))/4;
Foot_L=P(6);

%Shank
%shape-TCC group-ES
Shank_a0=P(24)/(2*pi);
Shank_b0=Shank.a0;
Shank_a1=P(22)/(2*pi);
Shank_b1=Shank.a1;
Shank_L=P(7);

%Thigh
%shapeES-Circ.Top group-ES
Thigh_b0=P(35)/2;
Thigh_a0=P(25)/pi-Thigh.b0;
Thigh_a1=P(24)/(2*pi);
Thigh_b1=Thigh.a1;
Thigh_L=P(8);

%Head
%shape-ER group-SE
Head_a=P(26)/(2*pi);
Head_b=Head.a;
Head_c=P(9)/2;

%U_Trunk
%shape-EC group-ES
U_Trunk_a0=(P(36)+P(37))/4;
U_Trunk_b0=Shank.a0;
U_Trunk_a1=U_Trunk.a0;
U_Trunk_b1=Shank.a1;
U_Trunk_L=P(7);

%Mtrunk
%shape-EC group-ES
M_trunk_a0 = P(37)/2;
M_trunk_a1 = P(38)/2;
M_trunk_L = P(12);
M_trunk_b0 = (P(28)/pi)- M_trunk_a0;
M_trunk_b1 = (P(29)/pi)- M_trunk_a1;

%LTrunk
%shape-EC group-ES
L_trunk_a0 = (P(38)+P(39))/4;
L_trunk_a1 = L_trunk_a0;
L_trunk_L = P(13);
L_trunk_b0 = ((P(29)+P(30))/(2*pi)) -L_trunk_a0; 

function [B1_ab] = B1_ab(a1,a0,b1,b0)
B1_ab = (a1-a0)*(b1-b0);
end
function[B2_ab] = B2_ab(a1,a0,b1,b0)
B2_ab = a0*(b1-b0)+b0*(a1-a0);
end
function[B3_ab] = B3_ab(a0,b0)
B3_ab = a0*b0;
end
function[B4_abcd] = B4_abcd(a0,b0,c0,d0,a1,b1,c1,d1)
B4_abcd = (a1-a0)*(b1-b0)*(c1-c0)*(d1-d0); 
end
function[B5_abcd] = B5_abcd(a0,b0,c0,d0,a1,b1,c1,d1)
B5_abcd = a0*(b1-b0)*(c1-c0)*(d1-d0) + 
           b0*(a1-a0)*(c1-c0)*(d1-d0)+
           c0*(a1-a0)*(b1-b0)*(d1-d0)+
           d0*(a1-a0)*(b1-b0)*(c1-c0);
end
   
function[B6_abcd] = B6_abcd(a0,b0,c0,d0,a1,b1,c1,d1)
B6_abcd = a0*b0*(c1-c0)*(d1-d0)+
          a0*c0*(b1-b0)*(d1-d0)+
          a0*d0*(b1-b0)*(c1-c0)+
          b0*c0*(a1-a0)*(d1-d0)+
          b0*d0*(a1-a0)*(c1-c0)+
          c0*d0*(a1-a0)*(b1-b0);
end
function[B7_abcd] = B7_abcd(a0,b0,c0,d0,a1,b1,c1,d1)
B7_abcd = b0*c0*d0(a1-a0)+
          a0*c0*d0*(b1-b0)+
          a0*b0*d0*(c1-c0)+
          a0*b0*c0*(d1-d0);
end
   
function[B8_abcd] = B8_abcd(a0,b0,c0,d0)
B8_abcd = a0*b0*c0*d0;





