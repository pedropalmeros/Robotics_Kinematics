EjesPrincipales(10,2)
EjesPrincipales(1,5)
theta1 = 55; % 40 grados
theta2 = 30; % 45 grados

%Definiendo longitud de los brazos del robot
m1 = 4;
m2 = 3; 

%Definiendo el eslabón 1
eslabon1 = [m1; 0; 0; 1];

%definiendo el eslabón 2
eslabon2 = [m2; 0; 0; 1];

% Definiendo los vectores de referencial 0
x0 = [1; 0; 0; 1];
y0 = [0; 1; 0; 1];
z0 = [0; 0; 1; 1];
% Definiendo referencial 1
T1 = TRotZ(theta1);
x1 = T1*x0;
y1 = T1*y0;
z1 = T1*z0;

origin_ref_1 = T1(1:4,4);
ref_x1 = T1(1:4,1);
ref_y1 = T1(1:4,2);
ref_z1 = T1(1:4,3);

PlotVector(origin_ref_1,origin_ref_1+ref_x1,'red',3);
PlotVector(origin_ref_1,origin_ref_1+ref_y1,'green',3);
PlotVector(origin_ref_1,origin_ref_1+ref_z1,'blue',3);

% origen del refencial 2,3
T2 = TTrasX(m1);

T12 = T1*T2;

x2 = T2*x1;
y2 = T2*y1;
z2 = T2*z1;

origin_ref_2 = T12(1:4,4);
ref_x2 = T12(1:4,1);
ref_y2 = T12(1:4,2);
ref_z2 = T12(1:4,3);

PlotVector(origin_ref_2,origin_ref_2+ref_x2,'red',3);
PlotVector(origin_ref_2,origin_ref_2+ref_y2,'green',3);
PlotVector(origin_ref_2,origin_ref_2+ref_z2,'blue',3);

%% PLOTTING THE FIRST LINK
PlotVector(origin_ref_1, origin_ref_2,'black',2);

T3 = TRotZ(theta2);
x3 = T3*x2;
y3 = T3*y2;
z3 = T3*z2;

T123 = T12 * T3

ref_x3 = T123(1:4,1);
ref_y3 = T123(1:4,2);
ref_z3 = T123(1:4,3);
%%
PlotVector(origin_ref_2,origin_ref_2+ref_x3,'red',3);
PlotVector(origin_ref_2,origin_ref_2+ref_y3,'green',3);
PlotVector(origin_ref_2,origin_ref_2+ref_z3,'blue',3);


T4 = TTrasX(m2); 

T1234 = T123*T4; 

origin_ref_4 = T1234(1:4,4);
ref_x4 = T1234(1:4,1);
ref_y4 = T1234(1:4,2);
ref_z4 = T1234(1:4,3);

PlotVector(origin_ref_4,origin_ref_4+ref_x4,'red',3);
PlotVector(origin_ref_4,origin_ref_4+ref_y4,'green',3);
PlotVector(origin_ref_4,origin_ref_4+ref_z4,'blue',3);

%% PLOTTING THE SECOND LINK
PlotVector(origin_ref_2, origin_ref_4,'black',2);



