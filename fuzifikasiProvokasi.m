function [ fuzzyRendah,fuzzySedang,fuzzyTinggi,nilaiFuzzyRendah,nilaiFuzzySedang,nilaiFuzzyTinggi ] = fuzifikasiProvokasi( inputan )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    % 0 = rendah, 1 = sedang, 2 = tinggi
    fuzzyRendah = 0;
    fuzzySedang = 0;
    fuzzyTinggi = 0;
    nilaiFuzzyRendah = 0;
    nilaiFuzzySedang = 0;
    nilaiFuzzyTinggi = 0;
    if(inputan <= 43)
        fuzzyRendah = 1;
        if (inputan <= 18)
            nilaiFuzzyRendah = 1;
        elseif (inputan > 18)
            nilaiFuzzyRendah = -(inputan-43)/(43-18);
        end
    end


    if(inputan > 18 && inputan <= 85)
        fuzzySedang = 1;
        if(inputan > 18 && inputan < 43)
            nilaiFuzzySedang = (inputan - 18)/(43 - 18);
        elseif (inputan >= 43 && inputan <= 75)
            nilaiFuzzySedang = 1;
        elseif (inputan > 75 && inputan <= 85)
            nilaiFuzzySedang = -(inputan-85)/(85-75);
        end
    end

    if(inputan > 75 && inputan <= 100)
        fuzzyTinggi = 1;
        if(inputan > 75 && inputan < 85)
            nilaiFuzzyTinggi = (inputan-75)/(85-75);
        elseif(inputan >= 85)
            nilaiFuzzyTinggi = 1;
        end
    end
end

