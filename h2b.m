% Hex to binary conversion
function b = h2b(h)
  if ischar(h) ~= 1
    error('h is not a character');
  end 
  
switch h
    case {'0'}
        b = '0000';
    case {'1'}
        b = '0001';
    case {'2'}
        b = '0010';
    case {'3'}
        b = '0011';
    case {'4'}
        b = '0100';
    case {'5'}
        b = '0101';
    case {'6'}
        b = '0110';
    case {'7'}
        b = '0111';
    case {'8'}
        b = '1000';
    case {'9'}
        b = '1001';
    case {'A', 'a'}
        b = '1010';
    case {'B', 'b'}
        b = '1011';
    case {'C', 'c'}
        b = '1100';
    case {'D', 'd'}
        b = '1101';
    case {'E', 'e'}
        b = '1110';
    case {'F', 'f'}
        b = '1111';
    otherwise
        error('h not recognized.');    
end

end