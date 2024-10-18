function  EjesPrincipales(lon,ancho)
line([0 lon],[0 0],[0 0],'color', 'red','LineWidth',ancho)    %dibuja eje x
line([0 0],[0 lon],[0 0],'color', 'green','LineWidth',ancho)  %dibuja eje y
line([0 0],[0 0],[0 lon],'color','blue','LineWidth',ancho)    %dibuja eje z

%view(130,30)

grid on 
end

