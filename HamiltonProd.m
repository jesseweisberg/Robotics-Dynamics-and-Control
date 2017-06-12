function q = HamiltonProd(q1,q2)
% ------------------------------------------------------------------------------------------------------------------------ %
% Function q = HamiltonProd(q1,q2)
% Return the Hamilton Product of two quaternions:
% INPUTS:
% q1, q2 are quaternions 
%
% OUTPUTS:
% returns the resulting quaternion from the hamilton product
%
% Written By: Jesse Weisberg
% ------------------------------------------------------------------------------------------------------------------------ %
angle1 = q1(1);
angle2 = q2(1);

vector1 = [q1(2); q1(3); q1(4)];
vector2 = [q2(2); q2(3); q2(4)]; 

q = [angle1*angle2-vector1*transpose(vector2); 
    angle1*vector2 + angle2*vector1 + cross(vector1, vector2)];