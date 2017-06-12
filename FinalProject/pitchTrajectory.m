
theta = 1.5178-pi/2; %theta of motor at time of release (found from scope of simulation)
w= 29.333; %angular velocity of motor at time of release (found from scope of simulation)
hs=1.2192; %height of the 'stand' upon which robot sits
l=.9144; %length of link
g=9.8; %acceleration due to gravity
x=18.4404+l*sin(theta); %distance between end effector and home plate
tTotal=x/(l*w*cos(theta)); %total time it takes ball to reach home plate
y=zeros(1,length(0:.01:tTotal));
length(y)
k=1;
for t=0:.01:tTotal
    y(k)=-.5*g*t^2-l*w*sin(theta)*t+(hs+l*cos(theta));
    k=k+1;
end

plot(0:0.01:tTotal,y)

