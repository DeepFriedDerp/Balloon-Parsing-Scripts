clc
close all
clear

filename = "test.log";
decodename = "decode.txt";

fid = fopen(filename, 'r');
fidD = fopen(decodename, 'w');
newline = fgetl(fid);
c1 = strsplit(newline, ',');
datastr = c1{4};

while newline ~= -1
    bin_str = [];
    for i1 = 1:length(datastr)
    %   char1 = h2b(datastr(i1))
    %   char2 = h2b(datastr(i1+1))
    %   keyboard
    %   
    %   bin1 = ['0000', char1];
    %   bin2 = ['0000', char2];
    %   dec1 = bin2dec(bin1);
    %   dec2 = bin2dec(bin2);
    %   cng1 = bitshift(dec1, -4);  % right shift
    %   % cng1 = bitshift(dec1, 4);     % left shift
    %   cng2 = bitand(dec2, bin2dec('00001111'));
    %   % dec2bin(cng1)
    %   % dec2bin(cng2)
    %   hex1 = dec2hex(cng1);
    %   hex2 = dec2hex(cng2);
      hex1 = datastr(i1);
      smpl = '0x00';
      if strcmp(hex1, 'F') == 1
          hex1 = 'F0';
      end
      smp1 = [smpl(1:4-length(hex1)), hex1];
      asci1 = decompress(smp1);
      bin_str = [bin_str, asci1];
    end 
    fprintf(fidD, '%s\n', bin_str);
    newline = fgetl(fid);
end

fclose(fid);
fclose(fidD);