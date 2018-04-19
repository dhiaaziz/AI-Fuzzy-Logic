readFile = 'Data.xlsx';
sheet = 2;
xlRange = 'A1:D20';
[data,class] = xlsread(readFile,sheet,xlRange); %% use ' ~ ' to ignore
kelas = [];
kelasAsli = [];


for i = 1:20   
    fprintf('Data ke -');
    disp(i);
    inputEmosi = data(i,1);
    inputProvokasi =  data(i,2);
    [a1,a2,a3,a4,a5,a6] = fuzifikasiEmosi(inputEmosi); %a 1-3 => anggota rendah,sedang,tinggi; a4-6 = nilai fuzzy rendah,sedang, tinggi
    [b1,b2,b3,b4,b5,b6] = fuzifikasiProvokasi(inputProvokasi); %b 1-3 => anggota rendah,sedang,tinggi; b4-6 = nilai fuzzy rendah,sedang, tinggi
    tabFuzzyEmosi = [];
    tabFuzzyProvokasi = [];
    %struktur tabFuzzyEmosi dan tabFuzzyProvokasi
    %-----------------------------------
    %       | binerFuzzy | nilaiFuzzy
    %-----------------------------------
    %|rendah|   biner    |  nilai
    %|sedang|   biner    |  nilai
    %|tinggi|   biner    |  nilai
    %-----------------------------------
    %memasukkan nilai ke tabel
    tabFuzzyEmosi(1,1) = a1;
    tabFuzzyEmosi(2,1) = a2;
    tabFuzzyEmosi(3,1) = a3;
    tabFuzzyEmosi(1,2) = a4;
    tabFuzzyEmosi(2,2) = a5;
    tabFuzzyEmosi(3,2) = a6;
    tabFuzzyProvokasi(1,1) = b1;
    tabFuzzyProvokasi(2,1) = b2;
    tabFuzzyProvokasi(3,1) = b3;
    tabFuzzyProvokasi(1,2) = b4;
    tabFuzzyProvokasi(2,2) = b5;
    tabFuzzyProvokasi(3,2) = b6;
    
    [infNo,infYes] = inferensi(tabFuzzyEmosi,tabFuzzyProvokasi);
    %defuzifikasi
    ystar = (1*(infNo)+2*(infYes))/(infNo+infYes)
    if(ystar <=1)
    kelas = [kelas;0];
    elseif (ystar > 1 && ystar <=2)
        kelas = [kelas;1];
    end
   
end
%hasil akurasi
jumBenar = 0;
for i=1:20
    if(kelas(i) == data(i,4))
    jumBenar =jumBenar+1;
    end
end

akurasi = jumBenar/20*100;

