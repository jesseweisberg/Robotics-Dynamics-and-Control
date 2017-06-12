function R = Quat(angle, axis)
% ------------------------------------------------------------------------------------------------------------------------ %
% Function R = Quat(angle, axis)
% Computes a unit quaternion given the angle of rotation and the rotation axis
% INPUTS:
% angle is the angle of rotation about the axis (radians)
% axis is a vector (r_x, r_y, r_z) that describes the axis of rotation
% OUTPUTS:
% returns the unit quaternion for input angle and axis
%
% Written By: Jesse Weisberg
% ------------------------------------------------------------------------------------------------------------------------ %
 
scalar = cos(angle/2);
vector = sin(angle/2)*axis;

R = [scalar; vector(1); vector(2); vector(3)];
