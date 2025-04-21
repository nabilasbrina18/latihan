% nested if
nilai = input('Masukkan nilai: ');
if nilai >= 0
    if nilai >= 75
        disp('Lulus dengan nilai baik');
    elseif nilai >= 60
        disp('Lulus dengan nilai cukup');
    else
        disp('Tidak lulus');
    end
else
    disp('Nilai tidak valid');
end

% while
while loop
i = 1;
while i <= 5
    fprintf('Iterasi ke-%d\n', i);
    i = i + 1;
end
