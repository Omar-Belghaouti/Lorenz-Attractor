clc, clear, close all;
% Initialisation de vecteur des �tats initiales :
x0 = [.1 .1 .1];
% Appel de la fonction ode45 :
[T, X] = ode45('fct5', [0 100], x0);
% Repr�sentation des trajectoires temporelles :
plot(T, X(:,1), 'r-', ...
    T, X(:,2), 'b-', ...
    T, X(:,3), 'g-');
grid on;
legend('x', 'y', 'z');
% Repr�sentation du portrait de phase :
figure;
plot3(X(:,1), X(:,2), X(:,3));
grid on;