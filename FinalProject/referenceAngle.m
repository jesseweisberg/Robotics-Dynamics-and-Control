function angle = referenceAngle(v)
%#codegen
syms theta
x=18.4404;
hs=.79248;
hl=.9144*cos(theta)+1.2192;
g=9.8;

angle= double(vpasolve(hs-hl==-x*tan(theta)-.5*g*(x/(v*cos(theta)))^2));