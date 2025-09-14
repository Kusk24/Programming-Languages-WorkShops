/* 
Name - Win Yu Maung,
ID - 6612064,
Sec - 542
*/

description(valley,
'You are in a pleasant valley, with a trail ahead.').
description(path,
'You are on a path, with ravines on both sides.').
description(cliff,
'You are teetering on the edge of a cliff.').
description(fork,
'You are at a fork in the path.').
description(maze(_),
'You are in a maze of twisty trails, all alike.').
description(mountaintop,
'You are on the mountaintop.').

%more obstacles
description(lake,
'You are in a radioactive lake').
description(volcano,
'You are on a flaming volcano.').
description(beach,
'You are on a pleasant beach with beautiful scenes.').


report :-
at(you,X),
description(X,Y),
write(Y), nl.

connect(valley,forward,path).
connect(path,right,cliff).
connect(path,left,cliff).
connect(path,forward,fork).
connect(fork,left,maze(0)).
connect(fork,right,mountaintop).
connect(maze(0),left,maze(1)).
connect(maze(0),right,maze(3)).
connect(maze(1),left,maze(0)).
connect(maze(1),right,maze(2)).
connect(maze(2),left,fork).
connect(maze(2),right,maze(0)).
connect(maze(3),left,maze(0)).
connect(maze(3),right,maze(3)).

% NEW MAZE
connect(maze(1),forward,maze(4)).
connect(maze(2),forward,maze(5)).
connect(maze(4),left,maze(1)).
connect(maze(4),right,maze(3)).
connect(maze(4),forward,maze(5)).
connect(maze(5),left,maze(2)).
connect(maze(5),right,maze(4)).
connect(maze(5),forward,maze(0)).

% NEW AREA
connect(mountaintop,left,lake).
connect(mountaintop,forward,volcano).
connect(lake,right,mountaintop).
connect(lake,forward,beach).
connect(volcano,left,mountaintop).
connect(volcano,right,beach).
connect(beach,left,lake).
connect(beach,right,volcano).

move(Dir) :-
at(you,Loc),
connect(Loc,Dir,Next),
retract(at(you,Loc)),
assert(at(you,Next)),
report,
!.

move(_) :-
write('That is not a legal move.\n'),
report.

forward :- move(forward).
left :- move(left).
right :- move(right).

ogre :-
at(ogre,Loc),
at(you,Loc),
write('An ogre sucks your brain out through\n'),
write('your eyesockets, and you die.\n'),
retract(at(you,Loc)),
assert(at(you,done)),
!.

ogre.

treasure :-
at(treasure,Loc),
at(you,Loc),
write('There is a treasure here.\n'),
write('Congratulations, you win!\n'),
retract(at(you,Loc)),
assert(at(you,done)),
!.

treasure.

cliff :-
at(you,cliff),
write('You fall off and die.\n'),
retract(at(you,cliff)),
assert(at(you,done)),
!.

cliff.

volcano :-
at(you, volcano),
write('You fall into megma and you die.\n'),
retract(at(you,volcano)),
assert(at(you,done)),
!.

volcano.

lake :-
at(you, lake),
write('Your skins started to feel radioactive effects, and you die.\n'),
retract(at(you,lake)),
assert(at(you,done)),
!.

lake.

ghost :-
at(ghost,Loc),
at(you,Loc),
write('You are being haunted by a ghost\n'),
write('your are now possessed, and you die.\n'),
retract(at(you,Loc)),
assert(at(you,done)),
!.

ghost.

main :-
at(you,done),
write('Thanks for playing.\n'),
!.

main :-
write('\nNext move -- '),
read(Move),
call(Move),
ogre,
treasure,
cliff,
volcano,
lake,
ghost,
main.

/* Original go
go :-
retractall(at(_,_)), % clean up from previous runs
assert(at(you,valley)),
assert(at(ogre,maze(3))),
assert(at(treasure,mountaintop)),
write('This is an adventure game. \n'),
write('Legal moves are left, right or forward.\n'),
write('End each move with a period.\n\n'),
report,
main.
*/

go :-
    retractall(at(_,_)),
    assert(at(you,valley)),
    random_member(O, [maze(0), maze(1), maze(2), maze(3), maze(4), maze(5) ]),
    assert(at(ogre,O)),
    repeat,
    random_member(G, [maze(0), maze(1), maze(2), maze(3), maze(4),  maze(5)]),
    G \= O,  
    !,
    assert(at(ghost,G)),
    random_member(T, [mountaintop, beach]),
    assert(at(treasure,T)),
    write('This is an adventure game.\n'),
    write('Legal moves are left, right or forward.\n'),
    write('End each move with a period.\n\n'),
    report,
    main.