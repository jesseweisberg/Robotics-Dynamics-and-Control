function p = QuatRot(p,q)
% ------------------------------------------------------------------------------------------------------------------------ %
% Function p = QuatRot(p,q)
% Performs a coordinate rotation using a quaternion
% INPUTS:
% two quaternions, p and q (p is the initial quaternion, q is the unit
% quaternion)
% OUTPUTS:
% returns the new quaternion p after the coordinate rotation
%
% Written By: Jesse Weisberg
% ------------------------------------------------------------------------------------------------------------------------ %
angle = p(1);

q= [cos(angle/2) p(2)*sin(angle/2) p(3)*sin(angle/2) p(4)*sin(angle/2)];
qC= [cos(angle/2) -p(2)*sin(angle/2) -p(3)*sin(angle/2) -p(4)*sin(angle/2)];

p = q*p*qC