function [theta,r] = QuatParams(q)
% ------------------------------------------------------------------------------------------------------------------------ %
% Function [theta,r] = QuatParams(q)
% Return the quaternion parameters given a quaternion q
% INPUTS:
% q is a quaternion 
%
% OUTPUTS:
% returns the angle theta and axis of rotation r of given quaternion q
%
% Written By: Jesse Weisberg
% ------------------------------------------------------------------------------------------------------------------------ %

theta = q(1)
r = [q(2); q(3); q(4)]
