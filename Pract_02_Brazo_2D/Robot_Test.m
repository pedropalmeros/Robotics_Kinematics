theta1 = 45; % theta1 en grados
m1 = 4;
m2 = 3; 
theta2 = -15;

% línea horizontal de 10 unidades de largo (eje x)
line([0 10],[0 0],[0 0],"LineWidth",2,"color","black");

% línea vertical de 10 unidades de largo (eje y)
line([0 0],[0 10],[0 0],"LineWidth",2,"color","black");

% Definiendo vectores unitarios
ref_0_x = [1; 0; 0; 1]; 
ref_0_y = [0; 1; 0; 1];
ref_0_z = [0; 0; 1; 0];

% Dibujando referencial 0
line([0 ref_0_x(1)],[0 ref_0_x(2)],[0 ref_0_x(3)],"color","red","LineWidth", 5);
line([0 ref_0_y(1)],[0 ref_0_y(2)],[0 ref_0_y(3)],"color","green","LineWidth", 5);

% DEFINIENDO LA PRIMER ROTACION
TZ1 = [cosd(theta1) -sind(theta1) 0 0;
       sind(theta1)  cosd(theta1) 0 0;
       0                 0        1 0;
       0                 0        0 1];

T1 = TZ1;

ref_1_x = TZ1 * ref_0_x;
ref_1_y = TZ1 * ref_0_y; 
ref_1_z = TZ1 * ref_0_z;

% Dibujando referencial 1
line([0 ref_1_x(1)],[0 ref_1_x(2)],[0 ref_1_x(3)],"color","red","LineWidth", 5);
line([0 ref_1_y(1)],[0 ref_1_y(2)],[0 ref_1_y(3)],"color","green","LineWidth", 5);

% DEFINIENDO LA PRIMER TRASLACION
TX1 = [1 0 0 m1;
       0 1 0 0;
       0 0 1 0;
       0 0 0 1];
T12 = T1 * TX1; % ME AYUDA A GUARDAR EL HISTORIAL DE LAS OPERACIONES QUE HE HECHO

Origen_Ref_2 = T12(1:3,4);

x_ref_2 = T12(1:3,1);
y_ref_2 = T12(1:3,2);

% Dibujando referencial 1
line([Origen_Ref_2(1) Origen_Ref_2(1)+ref_1_x(1)], ...
    [Origen_Ref_2(2) Origen_Ref_2(2)+ref_1_x(2)], ...
    [Origen_Ref_2(3) Origen_Ref_2(3)+ref_1_x(3)],"color","red","LineWidth", 5);
line([Origen_Ref_2(1) Origen_Ref_2(1)+ref_1_y(1)], ...
    [Origen_Ref_2(2) Origen_Ref_2(2)+ref_1_y(2)], ...
    [Origen_Ref_2(3) Origen_Ref_2(3)+ref_1_y(3)],"color","red","LineWidth", 5);


% Dibujando el brazo
Origen_Ref_1 = [0, 0, 0];
line([Origen_Ref_1(1) Origen_Ref_2(1)], ...
    [Origen_Ref_1(2) Origen_Ref_2(2)], ...
    [Origen_Ref_1(3) Origen_Ref_2(3)],"color","black","LineWidth", 5);


