function q = UnitQuat(q)
% ------------------------------------------------------------------------------------------------------------------------ %
% Function R = UnitQuat(q)
% create a unit quaternion given a quaternion
% INPUTS:
% quaternion
%
% OUTPUTS:
% returns the unit quaternion
%
% Written By: Jesse Weisberg
% ------------------------------------------------------------------------------------------------------------------------ %
 
q = q/abs(q);