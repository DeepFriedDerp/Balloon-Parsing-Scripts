function [outs] = decompress(ins)

if ischar(ins) ~= 1
    error('ins needs to be a character');
end

switch ins
      case '0x00'
        outs = '0';         
      case '0x01'
        outs = '1';         
      case '0x02'
        outs = '2';         
      case '0x03'
        outs = '3';         
      case '0x04'
        outs = '4';         
      case '0x05'
        outs = '5';         
      case '0x06'
        outs = '6';         
      case '0x07'
        outs = '7';         
      case '0x08'
        outs = '8';         
      case '0x09'
        outs = '9';         
      case '0x0A'
        outs = '-';         
      case '0x0B'
        outs = '.';         
      case '0x0C'
        outs = ',';         
      case '0x0D'
        outs = '$';         
      case '0x0E'
        outs = '\n';         
      case '0xF0'
        outs = '*';         
      case '0xF1'
        outs = 'M';         
      case '0xF2'
        outs = 'R';         
      case '0xF3'
        outs = 'N';         
      case '0xF4'
        outs = 'G';         
      case '0xF5'
        outs = 'P';         
      case '0xF6'
        outs = 'S';         
      case '0xF7'
        outs = 'V';         
      case '0xF8'
        outs = 'W';         
      case '0xF9'
        outs = 'A';         
      case '0xFA'
        outs = 'B';         
      case '0xFB'
        outs = 'C';         
      case '0xFC'
        outs = 'D';         
      case '0xFD'
        outs = 'E';         
      case '0xFE'
        outs = 'F';         
      case '0xFF'
        outs = ' ';        
      case '0x0F'
        outs = '';
    otherwise
        error('ins not recognized');
end

end