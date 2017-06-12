function [omega, refAngle] =Projectile(v)

syms theta
x=18.4404;
hs=.79248;
hl=.9144*cos(theta)+1.2192;
g=9.8;
v=v*.44704;
linkLength=.9144;


refAngle= simplify(vpasolve(hs-hl==-x*tan(theta)-.5*g*(x/(v*cos(theta)))^2)+pi/2);
omega=v/linkLength;
threshAngle= refAngle-omega*.01;


end
