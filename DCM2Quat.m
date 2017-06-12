function q = DCM2Quat(R)
% ------------------------------------------------------------------------------------------------------------------------ %
% function q = DCM2Quat(R)
% Converts a DCM to a quaternion
% INPUTS:
% R is a rotation matrix
% OUTPUTS:
% returns the equivalent quaternion q, which has an angle and axis of
% rotation
%
% Written By: Jesse Weisberg
% ------------------------------------------------------------------------------------------------------------------------ %

angle = sqrt(R(1,1)+R(2,2)+R(3,3)+1);

axis= .5 * [sign(R(3,2)-R(2,3)) * sqrt(R(1,1)-R(2,2)-R(3,3)+1);
            sign(R(1,3)-R(3,1)) * sqrt(R(2,2)-R(3,3)-R(1,1)+1);
            sign(R(2,1)-R(1,2)) * sqrt(R(3,3)-R(1,1)-R(2,2)+1)];
                  
q = [angle; axis(1); axis(2); axis(3)];