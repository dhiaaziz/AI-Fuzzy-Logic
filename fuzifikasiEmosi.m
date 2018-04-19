function [ fuzzyRendah,fuzzySedang,fuzzyTinggi,nilaiFuzzyRendah,nilaiFuzzySedang,nilaiFuzzyTinggi ] = fuzifikasiEmosi( inputan )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    % 0 = rendah, 1 = sedang, 2 = tinggi
    fuzzyRendah = 0;
    fuzzySedang = 0;
    fuzzyTinggi = 0;
    nilaiFuzzyRendah = 0;
    nilaiFuzzySedang = 0;
    nilaiFuzzyTinggi = 0;
    if(inputan <= 40)
        fuzzyRendah = 1;
        if (inputan <= 11)
            nilaiFuzzyRendah = 1;
        elseif (inputan > 11)
            nilaiFuzzyRendah = -(inputan-40)/(40-11);
        end
    end
    
    if(inputan > 11 && inputan <= 85)
        fuzzySedang = 1; 
        if(inputan > 11 && inputan < 40)
            nilaiFuzzySedang = (inputan - 11)/(40 - 11);
        elseif (inputan >= 40 && inputan <= 77)
            nilaiFuzzySedang = 1;
        elseif (inputan > 77 && inputan <= 85)
            nilaiFuzzySedang = -(inputan-85)/(85-77);
        end
    end
    
    if(inputan > 77 && inputan <= 100)
        fuzzyTinggi = 1;
        if(inputan > 77 && inputan < 85)
            nilaiFuzzyTinggi = (inputan-77)/(85-77);
        elseif(inputan >= 85)
            nilaiFuzzyTinggi = 1;
        end
    end
     


end

