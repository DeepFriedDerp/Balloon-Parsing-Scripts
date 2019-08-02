% code to decompress(?) and parse telemetry data
% CDY, AGM
% 08-01-2019

clc
close all
clear

% fileID = fopen('nine.bin','w');
% fwrite(fileID,[1:9]);
% fclose(fileID);
% fileID = fopen('nine.bin');
% A = fread(fileID)
% whos A
% keyboard

filename = 'test.log';
fid = fopen(filename, 'r');
newline = fgetl(fid)
c1 = strsplit(newline, ',')