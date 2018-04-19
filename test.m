readFile = 'Data.xlsx';
sheet = 2;
xlRange = 'A1:C20';
[data,class] = xlsread(readFile,sheet,xlRange); %% use ' ~ ' to ignore

temp = class(1,1);
out=temp{1}

if(out=='Ya')
    disp('Yappp');
end