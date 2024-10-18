function [RotMat] = TTrasX(distance)
%ROTX Summary of this function goes here
%   Detailed explanation goes here
    RotMat = [1 0 0 distance; 
              0 1 0 0; 
              0 0 1 0;
              0 0 0 1];
end


