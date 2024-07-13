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
sibling(X, Y) :-
    parent(Z, X), parent(Z, Y), X \== Y.
grand_father(X, Y) :-
    father(X, Z), parent(Z, Y).
aunt(X, Y) :-
    gender(X, female), parent(Z, Y), sibling(X, Z).

% Querie

%[family]. 
% parent(X, bob).
% mother(X, ann).
% sibling(U, ann).
% grand_father(tom, U).
% aunt(liz, U).