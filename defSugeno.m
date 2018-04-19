function [ ystar ] = defSugeno( infYes,infNo )
%UNTITLED2 Summary of this function goes here
%   inputan berupa hasil bobot inferensi masing2 crisp (ya dan tidak)
    ystar = (1*(infNo)+2*(infYes))/(infNo+infYes)

end

