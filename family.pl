% writing family relationships

% refer to image - https://www.tutorialspoint.com/prolog/prolog_relations.htm

% facts

% parents relationships 
parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

% facts

gender(pam, female).
gender(tom, male).
gender(bob, male).
gender(liz, female).
gender(ann, female).
gender(pat, male).
gender(jim, male).

% rules

father(X, Y) :-
    parent(X, Y), gender(X, male).
mother(X, Y) :-
    parent(X, Y), gender(X, female).




% Querie

% parent(X, bob).
% mother(X, ann).