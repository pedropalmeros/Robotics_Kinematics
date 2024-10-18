function [RotMat] = TRotZ(angle)
%ROTX Summary of this function goes here
%   Detailed explanation goes here
    RotMat = [cosd(angle) -sind(angle) 0 0; 
              sind(angle)  cosd(angle) 0 0; 
              0               0        1 0;
              0               0        0 1];
end


