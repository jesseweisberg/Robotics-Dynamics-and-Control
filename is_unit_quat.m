function flag = is_unit_quat(q)
% ------------------------------------------------------------------------------------------------------------------------ %
% Function flag = is_unit_quat(q)
% indicate how well a quaternion satisfies the constraints of a unit quaternion
% INPUTS:
% quaternion q
%
% OUTPUTS:
% returns "satisfied" or "not satisfied," denoting if condition is satisified
%
% Written By: Jesse Weisberg
% ------------------------------------------------------------------------------------------------------------------------ %

if abs(q)==1
    flag = 'satisfied'
    
else
    flag = 'not satisfied'
    
end