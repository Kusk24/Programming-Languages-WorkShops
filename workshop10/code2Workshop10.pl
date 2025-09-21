% There are 4 missionaries and 4 cannibals.
% The boat can carry 3 people.

% Step 7
% Task 6
initial(state(4,4,0,0,left)).
goal(state(0,0,4,4,right)).

safe(state(ML, CL, MR, CR, _)):- 
    ML >= 0, CL >= 0, MR >= 0, CR >= 0,
    ( ML =:= 0 ; ML >= CL ),
    ( MR =:= 0 ; MR >= CR ).

move(1,0).
move(2,0).
move(0,1).
move(0,2).
move(1,1).
move(3,0).   
move(0,3).   
move(2,1).   
move(1,2). 

% for the left side to right
transition(state(ML, CL, MR, CR, left), state(NewML, NewCL, NewMR, NewCR, right)) :-
    move(M, C),
    NewML is ML - M,
    NewCL is CL - C,
    NewMR is MR + M,
    NewCR is CR + C,
    safe(state(NewML, NewCL, NewMR, NewCR, right)).

% for the right side to left
transition(state(ML, CL, MR, CR, right), state(NewML, NewCL, NewMR, NewCR, left)) :-
    move(M, C),
    NewML is ML + M,
    NewCL is CL + C,
    NewMR is MR - M,
    NewCR is CR - C,
    safe(state(NewML, NewCL, NewMR, NewCR, left)).


% Task 7
/*
    The reason is when we backtrack and moves it goes to another state and then backtrack again it will go back to original state
    then the loops goes on and resulting in indefinite loops
*/
% we can avoid that by modifying path with adding visited as new argument
path(State, State, _, [State]).
path(State, Goal, Visited, [State | RestPath]) :-
    transition(State, NextState),
    \+ member(NextState, Visited),             
    path(NextState, Goal, [NextState|Visited], RestPath).

path(State, Goal, Path) :-
    path(State, Goal, [State], Path).