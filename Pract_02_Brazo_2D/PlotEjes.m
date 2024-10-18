function PlotEjes
    line([0 1],[0 0],[0 0],'color','red','LineWidth',2)
    line([0 0],[0 1],[0 0],'color','blue','LineWidth',2)
    line([0 0],[0 0],[0 1],'color','green','LineWidth',2)

    view(130,30);

    grid on;

end

