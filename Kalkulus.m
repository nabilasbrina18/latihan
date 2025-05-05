clc
clear

%kalkulus sederhana
%limit
%contoh 1
syms x
limit((x^3+5)/(x^4+7))
%
% %contoh2
% limit((x-3)/(x-1),1)
%
% %contoh 3
% syms x
% f = (3*x+5)/(x-3);
% g = x^2+1;
% l1=limit(f,4)
% l2=limit(g,4)
% ltambah = limit(f+g,4)
% lkurang = limit(f-g,4)
% lkali = limit(f*g,4)
% lbagi = limit(f/g,4)

%turunan 
% syms t
% f = 3*t^2 + 2*t^(-2);
% diff(f,t)

% sifat turunan
% syms x
% syms t
% 
% f = (x+2)*(x^2 + 3)
% der1 = diff(f)
% 
% f = (t^2+3)*(sqrt(t)+t^3)
% der2 = diff(f)
% 
% f = (x^2-2*x+1)*(3*x^3-5*x^2+2)
% der3 = diff(f)
% 
% f = (2*x^2+3*x)/(x^3+1)
% der4 = diff(f)
% 
% f = (x^2+1)^17
% der5 = diff(f)
% 
% f = (t^3+3*t^2+5*t-9)^(-6)
% der6 = diff(f)

%turunan parsial
% syms x;
% syms y;
% 
% %Definisi fungsi
% f = x^2 + 3*x8y + y^3;
% 
% %Menghitung turunan parsial terhadap x
% df_dx = gradient(f,x);
% 
% %Menghitung turunan parsial terhadap y
% df_dy = gradient(f,y);
% 
% %Menampilkan hasil
% disp('Turunkan parsial terhadap x:');
% disp(df_dx);
% disp('Turunakan parsial terhadap y:');
% disp(df_dy);

%integral
%tak tentu
syms x;

%Definisi fungsi
f = x^2;
%Menghitung integral tak tentu
F = int(f,x);

%Menampilkan hasil
disp('Integral tak tentu dari f(x) = x^2:');
disp(F);

%Integral tentu
%Definisi Fungsi

