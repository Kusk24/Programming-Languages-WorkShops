/* 
Name - Win Yu Maung,
ID - 6612064,
Sec - 542
*/
:- discontiguous move/2.

% Step 1, Task 1
%Initial State
initial(state(3,3,0,0,left)).

%Goal State
goal(state(0,0,3,3,right)).

% Step 2, Task 2
safe(state(ML, CL, MR, CR, _)):- 
    ML >= 0, CL >= 0, MR >= 0, CR >= 0,
    ( ML =:= 0 ; ML >= CL ),
    ( MR =:= 0 ; MR >= CR ).

% Step 3, Task 3
move(1,0).
move(2,0).
move(0,1).
move(0,2).
move(1,1).

% Step 4, Task 4
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

% Step 5, Task 5
path(Goal, Goal, [Goal]).

path(State, Goal, [State | RestPath]) :-
    transition(State, NextState),
    path(NextState, Goal, RestPath).


% Step 6, Task 6
% There is an error for indefinite loop and program quits
/*
?- initial(S), goal(G), path(S, G, Path).
ERROR: Stack limit (1.0Gb) exceeded
ERROR:   Stack sizes: local: 0.7Gb, global: 0.3Gb, trail: 66.2Mb
ERROR:   Stack depth: 1,156,824, last-call: 0%, Choice points: 2,892,029
ERROR:   In:
ERROR:     [1,156,824] user:transition(<compound state/5>, _69419898)
ERROR:     [1,156,823] user:path(<compound state/5>, <compound state/5>, [length:1|_69419944])
ERROR:     [1,156,822] user:path(<compound state/5>, <compound state/5>, [length:2|_69419984])
ERROR:     [1,156,821] user:path(<compound state/5>, <compound state/5>, [length:3|_69420024])
ERROR:     [1,156,820] user:path(<compound state/5>, <compound state/5>, [length:4|_69420064])
ERROR: 
ERROR: Use the --stack_limit=size[KMG] command line option or
ERROR: ?- set_prolog_flag(stack_limit, 2_147_483_648). to double the limit.
^  Exception: (4) setup_call_cleanup('$toplevel':notrace(call_repl_loop_hook(begin, 0)), '$toplevel':'$query_loop'(0), '$toplevel':notrace(call_repl_loop_hook(end, 0)))
*/


% Step 7
% Task 6
new_initial(state(4,4,0,0,left)).
new_goal(state(0,0,4,4,right)).

/* original paths
move(1,0).
move(2,0).
move(0,1).
move(0,2).
move(1,1).
*/
move(3,0).   
move(0,3).   
move(2,1).   
move(1,2). 

% Task 7
/*
    The reason is when we backtrack and moves it goes to another state and then backtrack again it will go back to original state
    then the loops goes on and resulting in indefinite loops
*/
% we can avoid that by modifying path with adding visited as new argument
fixed_path(State, State, _, [State]).
fixed_path(State, Goal, Visited, [State | RestPath]) :-
    transition(State, NextState),
    \+ member(NextState, Visited),             
    fixed_path(NextState, Goal, [NextState|Visited], RestPath).

fixed_path(State, Goal, Path) :-
    fixed_path(State, Goal, [State], Path).
