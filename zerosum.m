function [ x, y ] = zerosum( n, m, P )
%ZEROSUM Summary of this function goes here
%   Detailed explanation goes here

assert(sum ([n, m] == size(P)) == 2, 'Dimensions mismatch');



end

