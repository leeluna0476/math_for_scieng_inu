clear;

[X, Y]=meshgrid(-5:0.1:5, -5:0.1:5);

% Plane1: x + 3y +2z = 0
Z1=(-X -3*Y + 3)/2;
% Plane2: 2x -y + z + 4 = 0
Z2=-2*X +Y -4;

t=-5:0.1:5;
L=[5*t - 11/3; 3*t; -7*t + 10/3];

figure(1);
surf(X, Y, Z1, 'FaceColor', [1 0 0], 'EdgeColor', 'none');
hold on;
surf(X, Y, Z2, 'FaceColor', [0 0 1], 'EdgeColor', 'none');
plot3(L(1,:), L(2,:), L(3,:), 'Color', 'k', 'LineWidth', 2);
xlabel('x');
ylabel('y');
zlabel('z');
legend('Plane 1', 'Plane 2', 'Intersection line');
grid on;
xlim([-10, 10]);
ylim([-10, 10]);
zlim([-20, 15]);