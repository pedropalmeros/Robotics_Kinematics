EjesPrincipales(10,2)
EjesPrincipales(1,5)
theta1 = 40; % 40 grados

% Definiendo los vectores de referencial 0
x0 = [1; 0; 0;1];
y0 = [0; 1; 0;1];
z0 = [0; 0; 1;1];
% Definiendo referencial 1
x1 = TRotZ(theta1)*x0;
y1 = TRotZ(theta1)*y0;
z1 = TRotZ(theta1)*z0;

PlotPoint(x1,'red',3);
PlotPoint(y1,'green',3);
PlotPoint(z1,'blue',3);
