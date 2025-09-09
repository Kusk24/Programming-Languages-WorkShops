male(kim).
male(kent).
male(herbert).
female(holly).
female(margaret).
female(esther).
female(jean).

parent(kim,holly).
parent(margaret,kim).
parent(margaret,kent).
parent(esther,margaret).
parent(herbert,margaret).
parent(herbert,jean).


% 1
mother(X,Y) :-  female(X),
                parent(X,Y).

% 2
father(X,Y) :-  male(X),
                parent(X,Y).

% 3
sister(X,Y) :-  female(X),
                parent(A,X),
                parent(A,Y),
                X \= Y.

% 4
brother(X,Y) :- male(X),
                male(Y),
                parent(A,X),
                parent(A,Y),
                X \= Y.

% 5
sibling(X,Y) :- parent(A,X),
                parent(A,Y),
                X \= Y.

% 6
cousin(X,Y) :-  sibling(A,B),
                parent(A,X),
                parent(B,Y).

% 7
niece(X,Y) :-   female(X),
                sibling(A,Y),
                parent(A,X).

% 8
nephew(X,Y) :-  male(X),
                sibling(A,Y),
                parent(A,X).