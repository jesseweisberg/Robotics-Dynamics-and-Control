function R= Quat2DCM(q)
% ------------------------------------------------------------------------------------------------------------------------ %
% function R= Quat2DCM(q)
% Converts a quaternion to a DCM
% INPUTS:
% Returns the equivalent quaternion q, which has an angle and axis of
% rotation
%
% OUTPUTS:
% R is a rotation matrix
% 
% Written By: Jesse Weisberg
% ------------------------------------------------------------------------------------------------------------------------ %
angle = q(1);
rx = q(2);
ry = q(3);
rz = q(4);

R= [2*(angle^2+rx^2)-1 2*(rx*ry-angle*rz) 2*(rx*ry+angle*ry);
    2*(rx*ry+angle*rz) 2*(angle^2+ry^2)-1 2*(ry*rz+angle*rx);
    2*(rx*rz-angle*ry) 2*(ry*rz+angle*rx) 2*(angle^2+rz^2)-1;];