% This file when run will play the game of 

P = zeros(6,6);

for i = 1:6
    for j = 1:6        
        if i == j
            P(i,j) = 0; 
        elseif abs(i-j) == 1
            P(i,j) = 200*(j-i);
        else
            P(i,j) = 100*sign(i-j);            
        end
    end
end

zerosum(6, 6, P);