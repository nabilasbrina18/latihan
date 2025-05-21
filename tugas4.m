% %Fungsi 2D Sederhana
% x = -10:0.1:10;
% y1 = x.^2;
% y2 = x.^3;
% figure;
% plot(x, y1, 'b', x, y2, 'r--');
% legend('x^2', 'x^3');
% title('Fungsi Kuadrat dan Kubik');
% xlabel('x'); ylabel('y');
% grid on;

% %Fungsi Trigonometri
% x = 0:0.01:2*pi;
% y1 = sin(x);
% y2 = cos(x);
% y3 = tan(x);
% figure;
% plot(x, y1, 'b', x, y2, 'r--');
% legend('sin(x)', 'cos(x)');
% title('Fungsi Sinus dan Cosinus');
% xlabel('x'); ylabel('y');
% grid on;

% %Fungsi Eksponensial dan Logaritma
% x = 0.1:0.1:10;
% y1 = log(x);
% y2 = exp(x/5);
% figure;
% plot(x, y1, 'b', x, y2, 'r--');
% legend('log(x)', 'exp(x/5)');
% title('Fungsi Logaritma dan Eksponensial');
% xlabel('x'); ylabel('y');
% grid on;

% %Fungsi Absolut dan Tanda
% x = -5:0.1:5;
% y1 = abs(x);
% y2 = sign(x);
% figure;
% plot(x, y1, 'b', x, y2, 'r--');
% legend('|x|', 'sign(x)');
% title('Fungsi Absolut dan Tanda');
% xlabel('x'); ylabel('y');
% grid on;

% %Parametrik (Lingkaran & Spiral)
% t = linspace(0, 2*pi, 100);
% x = cos(t);
% y = sin(t);
% figure;
% plot(x, y);
% axis equal;
% title('Lingkaran Parametrik');
% t = linspace(0, 4*pi, 500);
% x = t.*cos(t);
% y = t.*sin(t);
% figure;
% plot(x, y);
% title('Spiral Parametrik');

% %Fungsi 3D (Surface, Mesh, Contour)
% [x, y] = meshgrid(-3:0.1:3);
% z = sin(sqrt(x.^2 + y.^2));
% figure;
% surf(x, y, z); title('Surface Plot');
% figure;
% mesh(x, y, z); title('Mesh Plot');
% figure;
% contour(x, y, z, 20); title('Contour Plot');

% %Fungsi 3D Lebih Kompleks
% [x, y] = meshgrid(-2:0.1:2);
% z = x.^2 - y.^2;
% figure;
% surfc(x, y, z);
% title('Hyperbolic Paraboloid (Sadel)');

% %Quiver Plot (Vector Field)
% [x, y] = meshgrid(-2:0.5:2);
% u = -y; v = x;
% figure;
% quiver(x, y, u, v);
% title('Rotational Vector Field');
% axis equal;

% %Heatmap dari Fungsi Gaussian
% x = -3:0.1:3;
% y = -3:0.1:3;
% [X, Y] = meshgrid(x, y);
% Z = exp(-X.^2 - Y.^2);
% figure;
% imagesc(Z);
% colorbar;
% title('Heatmap dari Fungsi Gauss');

% %Animasi Gelombang
% x = linspace(0, 4*pi, 100);
% figure;
% for t = 0:0.1:2*pi
%     y = sin(x - t);
%     plot(x, y);
%     ylim([-1.5, 1.5]);
%     title(['Animasi: sin(x - t), t = ', num2str(t)]);
%     pause(0.05);
% end

% %Fungsi Kombinasi (Modulasi)
% x = linspace(0, 4*pi, 1000);
% y = sin(x) .* cos(5*x);
% figure;
% plot(x, y);
% title('Fungsi Kombinasi: sin(x) * cos(5x)');

% %Polar ke Kartesian manual
% theta = linspace(0, 2*pi, 100);
% r = 1 + sin(4*theta);
% x = r .* cos(theta);
% y = r .* sin(theta);
% figure;
% plot(x, y);
% axis equal;
% title('Polar Function (dengan konversi x-y)');

% % Subplot Multi Fungsi (Fix Versi)
% x = linspace(0, 2*pi, 100);
% figure;
% subplot(3,1,1); plot(x, sin(x)); title('sin(x)');
% subplot(3,1,2); plot(x, cos(x)); title('cos(x)');
% subplot(3,1,3); plot(x, tan(x)); title('tan(x)');
% ylim([-10 10]); % Batasi nilai y agar tan(x) terlihat
% drawnow;

% %Subplot Trigonometri Lengkap
% x = linspace(0, 2*pi, 1000);
% figure;
% subplot(3,2,1); plot(x, sin(x)); title('sin(x)');
% subplot(3,2,2); plot(x, cos(x)); title('cos(x)');
% subplot(3,2,3); plot(x, tan(x)); title('tan(x)'); ylim([-10 10]);
% subplot(3,2,4); plot(x, cot(x)); title('cot(x)'); ylim([-10 10]);
% subplot(3,2,5); plot(x, sec(x)); title('sec(x)'); ylim([-10 10]);
% subplot(3,2,6); plot(x, csc(x)); title('csc(x)'); ylim([-10 10]);

% %Subplot Eksponensial, Log dan Pangkat
% x = linspace(0.1, 10, 500);
% figure;
% 
% subplot(2,2,1); plot(x, log(x)); title('log(x)');
% subplot(2,2,2); plot(x, log10(x)); title('log_{10}(x)');
% subplot(2,2,3); plot(x, exp(x/4)); title('exp(x/4)');
% subplot(2,2,4); plot(x, x.^2); title('x^2');

% %Subplot Fungsi Hyperbolik
% x = linspace(-3,3,100);
% figure;
% subplot(2,2,1); plot(x, sinh(x)); title('sinh(x)');
% subplot(2,2,2); plot(x, cosh(x)); title('cosh(x)');
% subplot(2,2,3); plot(x, tanh(x)); title('tanh(x)');
% subplot(2,2,4); plot(x, sech(x)); title('sech(x)');

% %Subplot Fungsi Modulasi / Kombinasi
% x = linspace(0, 4*pi, 1000);
% figure;
% subplot(2,2,1); plot(x, sin(x).*cos(5*x)); title('sin(x)*cos(5x)');
% subplot(2,2,2); plot(x, sin(x).^2); title('sin^2(x)');
% subplot(2,2,3); plot(x, (sin(3*x))./(1+x)); title('Damped sin(x)');
% subplot(2,2,4); plot(x, abs(sin(x))); title('|sin(x)|');

% %Subplot Fungsi Khusus
% x = linspace(-2*pi, 2*pi, 1000);
% figure;
% subplot(2,2,1); plot(x, sawtooth(x)); title('Sawtooth Wave');
% subplot(2,2,2); plot(x, square(x)); title('Square Wave');
% subplot(2,2,3); plot(x, heaviside(x)); title('Heaviside Step');
% subplot(2,2,4); plot(x, sinc(x)); title('Sinc Function');

% % Fungsi Acak dan Histogram (Versi Kompatibel)
% x = 1:100;
% y = rand(1,100);
% z = randn(1,100);
% figure;
% subplot(2,2,1); plot(x, y); title('rand (uniform)');
% subplot(2,2,2); plot(x, z); title('randn (normal)');
% subplot(2,2,3); hist(y, 10); title('Histogram Uniform');  % ganti histogram
% subplot(2,2,4); hist(z, 10); title('Histogram Normal');   % ganti histogram

% %Subplot Kombinasi Trigonometri & Eksponensial
% x = linspace(0, 2*pi, 500);
% figure;
% subplot(2,2,1); plot(x, sin(x).*exp(-x)); title('sin(x) * exp(-x)');
% subplot(2,2,2); plot(x, cos(x).*exp(-x)); title('cos(x) * exp(-x)');
% subplot(2,2,3); plot(x, sin(x).*x); title('sin(x) * x');
% subplot(2,2,4); plot(x, exp(-x.^2)); title('exp(-x^2)');

% %Subplot Lingkaran & Spiral Parametrik
% t = linspace(0, 2*pi, 200);
% x1 = cos(t); y1 = sin(t);
% x2 = t.*cos(t); y2 = t.*sin(t);
% figure;
% subplot(1,2,1); plot(x1, y1); axis equal; title('Lingkaran');
% subplot(1,2,2); plot(x2, y2); title('Spiral');

% %Plot3 Trajektori Heliks
% t = linspace(0, 10*pi, 1000);
% x = sin(t);
% y = cos(t);
% z = t;
% figure;
% plot3(x, y, z, 'LineWidth', 2);
% grid on; title('Heliks 3D');
% xlabel('x'); ylabel('y'); zlabel('z');

% %Surface Plot: Fungsi Gauss 2D
% [x, y] = meshgrid(-3:0.1:3, -3:0.1:3);
% z = exp(-x.^2 - y.^2);
% figure;
% surf(x, y, z);
% title('Gaussian Surface');
% xlabel('x'); ylabel('y'); zlabel('z');

% %Mesh Plot: Saddle Function
% [x, y] = meshgrid(-2:0.1:2);
% z = x.^2 - y.^2;
% figure;
% mesh(x, y, z);
% title('Saddle: z = x^2 - y^2');

% % Contour3 (Kontur 3D Bertingkat)
% [x, y] = meshgrid(-3:0.1:3);
% z = peaks(x, y);
% figure;
% contour3(x, y, z, 30);
% title('Contour3 dari Fungsi Peaks');

% %Fungsi Peaks
% [x, y] = meshgrid(-3:0.1:3);
% z = peaks(x, y);
% figure;
% surf(x, y, z);
% title('Fungsi Peaks');

% %Parametrik Bola (Sphere)
% [x, y, z] = sphere(50);
% figure;
% surf(x, y, z);
% axis equal; title('Bola 3D');

% %Parametrik Torus (Donat 3D)
% theta = linspace(0, 2*pi, 50);
% phi = linspace(0, 2*pi, 50);
% [Theta, Phi] = meshgrid(theta, phi);
% r = 1; R = 2;
% X = (R + r*cos(Theta)).*cos(Phi);
% Y = (R + r*cos(Theta)).*sin(Phi);
% Z = r * sin(Theta);
% figure;
% surf(X, Y, Z);
% axis equal; title('Torus (Donat)');

% %Ripple Function
% [x, y] = meshgrid(-8:0.2:8);
% r = sqrt(x.^2 + y.^2) + eps;
% z = sin(r)./r;
% figure;
% surf(x, y, z);
% title('Ripple Function: sin(r)/r');

% % Himmelblau Function
% [x, y] = meshgrid(-5:0.1:5);
% z = (x.^2 + y - 11).^2 + (x + y.^2 - 7).^2;
% figure;
% surf(x, y, z);
% title('Himmelblau Function');

% %Beale Function
% [x, y] = meshgrid(-4.5:0.1:4.5);
% z = (1.5 - x + x.*y).^2 + (2.25 - x + x.*y.^2).^2 + (2.625 - x + x.*y.^3).^2;
% figure;
% surf(x, y, z);
% title('Beale Function');

% %Multipeak Function
% [x, y] = meshgrid(-2:0.1:2);
% z = sin(5*x).*cos(5*y).*exp(-x.^2 - y.^2);
% figure;
% surf(x, y, z);
% title('Multipeak Function');

% %Elliptic Paraboloid
% [x, y] = meshgrid(-2:0.1:2);
% z = x.^2 + 2*y.^2;
% figure;
% mesh(x, y, z);
% title('Elliptic Paraboloid');

% %Logaritmik Surface
% [x, y] = meshgrid(0.1:0.1:5);
% z = log(x.^2 + y.^2);
% figure;
% surf(x, y, z);
% title('Permukaan Logaritmik');
