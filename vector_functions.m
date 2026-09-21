t=(0:0.01:6*pi)';
I=eye(3);
i=I(1,:);
j=I(2,:);
k=I(3,:);

a=1;
b=a;
c=0;
r=a*cos(t)*i + b*sin(t)*j + c*t;

% a unit circle
figure(1);
plot3(r(:,1), r(:,2), r(:,3));
grid on;
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
title('r=cos(t)*i + sin(t)*j')

a=1;
b=a;
c=1;
r=a*cos(t)*i + b*sin(t)*j + c*t*k;

% a circular helix
figure(2);
plot3(r(:,1), r(:,2), r(:,3));
grid on;
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
title('r=cos(t)*i + sin(t)*j + t*k');
axis([-2 2 -2 2 0 3*pi])
