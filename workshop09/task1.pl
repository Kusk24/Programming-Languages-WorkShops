/* 
Name - Win Yu Maung,
ID - 6612064,
Sec - 542
*/

change(l, r).
change(r, l).

% configs - [Farmer, Fox, Goose, Beans]
% initial - [l,l,l,l], wanted - [r,r,r,r]

move([X, Fox, X, Beans], goose, [Y, Fox, Y, Beans]) :- change(X,Y).

move([X, Fox, Goose, X], beans, [Y, Fox, Goose, Y]) :- change(X,Y).

move([X, X, Goose, Beans], fox, [Y, Y, Goose, Beans]) :- change(X,Y).

move([X, Fox, Goose, Beans], nothing, [Y, Fox, Goose, Beans]) :- change(X,Y).


oneEq(X,X,_).
oneEq(X,_,X).
safe([Farmer, Fox, Goose, Beans]) :-  oneEq(Farmer, Goose, Fox),
                                      oneEq(Farmer, Goose, Beans).


solution([r,r,r,r],[]).
solution(Config, [Move | Rest]) :- 
    move(Config, Move, NextConfig),
    safe(NextConfig),
    solution(NextConfig, Rest).