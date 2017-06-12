function R = DCM(theta, axis)
% ------------------------------------------------------------------------------------------------------------------------ %
% Function R = DCM(theta,axis)
% Computes the rotation matrix about an AXIS by the angle THETA
% INPUTS:
% theta is the angle of rotation about the axis (degrees)
% axis denoted by string x, y, or z
% OUTPUTS:
% returns the direction cosine matrix for the given inputs
%
% Written By: Jesse Weisberg
% ------------------------------------------------------------------------------------------------------------------------ %

%[INSERT CODE HERE]
R = zeros(3,3);
c= cos(theta);
s= sin(theta);

if(axis=='z')
    R=[c -s 0; 
       s c 0;
       0 0 1]; 
    
elseif(axis=='x')
    R=[1 0 0; 
       0 c -s;
       0 s c];  

elseif(axis=='y')
    R=[c 0 s; 
       0 1 0; 
       -s 0 c];

else
    print 'error';

end

    
   
    

    
    
    

