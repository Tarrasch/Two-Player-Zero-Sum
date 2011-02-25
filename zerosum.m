function [ x, y ] = zerosum( n, m, P )
%ZEROSUM Given a prize-matrix calculates the optimal strategies.
%   Detailed explanation goes here

assert(sum ([n, m] == size(P)) == 2, 'Dimensions mismatch in arguments');


cvx_begin
    variable x(n)
    variable t
    dual variable y
    maximize(t)
    subject to
        y : t <= x'*P*eye(m);
        x >= 0;
        sum(x) == 1;
cvx_end;

disp('Player 1 should play according to:');
disp(x);
disp('And player 2 should play according to:');
disp(y');



end

