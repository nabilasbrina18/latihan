% Tugas 3 - Metode Jacobi & Gauss-Seidel

% Matriks koefisien dan vektor hasil
A = [10 -1  2  0;
     -1 11 -1 3;
      2 -1 10 -1;
      0 3 -1 8];

b = [6; 25; -11; 15];
x0 = zeros(4,1);     % Inisialisasi x awal
N = 25;              % Jumlah maksimum iterasi
tol = 1e-6;          % Toleransi konvergensi

%% Metode Jacobi
fprintf('Metode Jacobi:\n');
Xj = x0;
for k = 1:N
    Xj_new = Xj;
    Xj_new(1) = (1/10)*(b(1) + Xj(2) - 2*Xj(3));
    Xj_new(2) = (1/11)*(b(2) + Xj(1) + Xj(3) - 3*Xj(4));
    Xj_new(3) = (1/10)*(b(3) - 2*Xj(1) + Xj(2) + Xj(4));
    Xj_new(4) = (1/8)*(b(4) - 3*Xj(2) + Xj(3));
    
    if max(abs(Xj_new - Xj)) < tol
        break;
    end
    Xj = Xj_new;
end
disp(Xj);

%% Metode Gauss-Seidel
fprintf('Metode Gauss-Seidel:\n');
Xg = x0;
for k = 1:N
    x1 = (1/10)*(b(1) + Xg(2) - 2*Xg(3));
    x2 = (1/11)*(b(2) + x1 + Xg(3) - 3*Xg(4));
    x3 = (1/10)*(b(3) - 2*x1 + x2 + Xg(4));
    x4 = (1/8)*(b(4) - 3*x2 + x3);
    
    Xg_new = [x1; x2; x3; x4];
    
    if max(abs(Xg_new - Xg)) < tol
        break;
    end
    Xg = Xg_new;
end
disp(Xg);

% Integrasi Numerik - Contoh 10.1
f = @(x) x.^2 .* sin(x);
a = 0;
b = pi;
n = 100;                    % Jumlah subinterval
h = (b - a)/n;

% Riemann (kiri)
riemann_sum = 0;
for i = 0:n-1
    xi = a + i*h;
    riemann_sum = riemann_sum + f(xi);
end
riemann_sum = h * riemann_sum;
fprintf('Riemann kiri: %.6f\n', riemann_sum);

% Trapesium
trap_sum = (f(a) + f(b))/2;
for i = 1:n-1
    xi = a + i*h;
    trap_sum = trap_sum + f(xi);
end
trap_sum = h * trap_sum;
fprintf('Trapesium: %.6f\n', trap_sum);
