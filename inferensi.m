function [ maxNo,maxYes ] = inferensi( tabFuzzyEmosi,tabFuzzyProvokasi )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    hasilInferensiNo = [];
    hasilInferensiYes =[];
    maxYes = 0;
    maxNo = 0;
    if(tabFuzzyEmosi(1,1) == 1 && tabFuzzyProvokasi(1,1) == 1) % rendah and rendah
        tmp = [tabFuzzyEmosi(1,2),tabFuzzyProvokasi(1,2)];
        nilaiMin = min(tmp(:));
        hasilInferensiNo = [hasilInferensiNo;nilaiMin];
    end
    if(tabFuzzyEmosi(1,1) == 1 && tabFuzzyProvokasi(2,1) == 1) % rendah and sedang
        tmp = [tabFuzzyEmosi(1,2),tabFuzzyProvokasi(2,2)];
        nilaiMin = min(tmp(:));
        hasilInferensiNo = [hasilInferensiNo;nilaiMin];
    end
    if(tabFuzzyEmosi(1,1) == 1 && tabFuzzyProvokasi(3,1) == 1) % rendah and tinggi
        tmp = [tabFuzzyEmosi(1,2),tabFuzzyProvokasi(3,2)];
        nilaiMin = min(tmp(:));
        hasilInferensiNo = [hasilInferensiNo;nilaiMin];
    end
    if(tabFuzzyEmosi(2,1) == 1 && tabFuzzyProvokasi(1,1) == 1) % sedang and rendah
        tmp = [tabFuzzyEmosi(2,2),tabFuzzyProvokasi(1,2)];
        nilaiMin = min(tmp(:));
        hasilInferensiNo = [hasilInferensiNo;nilaiMin];
    end
    if(tabFuzzyEmosi(2,1) == 1 && tabFuzzyProvokasi(2,1) == 1) % sedang and sedang
        tmp = [tabFuzzyEmosi(2,2),tabFuzzyProvokasi(2,2)];
        nilaiMin = min(tmp(:));
        hasilInferensiNo = [hasilInferensiNo;nilaiMin];
    end
    if(tabFuzzyEmosi(2,1) == 1 && tabFuzzyProvokasi(3,1) == 1) % sedang and tinggi
        tmp = [tabFuzzyEmosi(2,2),tabFuzzyProvokasi(3,2)];
        nilaiMin = min(tmp(:));
        hasilInferensiYes = [hasilInferensiYes;nilaiMin];
    end  
    if(tabFuzzyEmosi(3,1) == 1 && tabFuzzyProvokasi(1,1) == 1) % tinggi and rendah
        tmp = [tabFuzzyEmosi(3,2),tabFuzzyProvokasi(1,2)];
        nilaiMin = min(tmp(:));
        hasilInferensiYes = [hasilInferensiYes;nilaiMin];
    end
    if(tabFuzzyEmosi(3,1) == 1 && tabFuzzyProvokasi(2,1) == 1) % tinggi and sedang
        tmp = [tabFuzzyEmosi(3,2),tabFuzzyProvokasi(2,2)];
        nilaiMin = min(tmp(:));
        hasilInferensiYes = [hasilInferensiYes;nilaiMin];
    end
    if(tabFuzzyEmosi(3,1) == 1 && tabFuzzyProvokasi(3,1) == 1) % tinggi and tinggi
        tmp = [tabFuzzyEmosi(3,2),tabFuzzyProvokasi(3,2)];
        nilaiMin = min(tmp(:));
        hasilInferensiYes = [hasilInferensiYes;nilaiMin];
    end
    maxYes = max(hasilInferensiYes(:));
    maxNo = max(hasilInferensiNo(:));
    if(isempty(maxYes) == 1)
        maxYes = 0;
    end
    if(isempty(maxNo) == 1)
        maxNo = 0;
    end

end

