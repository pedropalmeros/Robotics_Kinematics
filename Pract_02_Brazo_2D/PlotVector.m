function  PlotVector(InitPoint,FinPoint,color,ancho)
%Dibuja un vector
line([InitPoint(1) FinPoint(1)], ...
     [InitPoint(2) FinPoint(2)], ...
     [InitPoint(3) FinPoint(3)],'color', color ,'LineWidth',ancho)    

end

