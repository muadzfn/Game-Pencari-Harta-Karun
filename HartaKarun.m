%Berburu harta karun

% %step 1: buat matrix
% m=input('baris : ');
% n=input('kolom : ');
% for i=1:m 
%     for j=1:n 
%         a(i,j)= int32(randi([0, 1])); 
%     end
% end
% peta = reshape(a,m,n);

% buat matrix 3x3
filename = 'treasure.xlsx';
A = [0,0,0;0,0,0;1,0,0];
xlswrite(filename,A);
t = xlsread('treasure.xlsx');
[m, n] = size(t);

%step 2: jalankan
health = 3;
disp('=====Berburu Harta Karun=====');
fprintf('Sisa Kesempatan : %d kesempatan.\n', health);
while (health>0)
    i = input('pilih baris : ');
    j = input('pilih kolom : ');
    if(t(i,j)== 0)
        disp('kosong');
        t(i,j) = 2;
        health = health - 1;
    elseif(t(i,j)== 2)
        disp('kotak ini telah dipilih');
    elseif(t(i,j)== 1)
        disp('kamu berhasil menemukan harta karun');
        break
    end
end 