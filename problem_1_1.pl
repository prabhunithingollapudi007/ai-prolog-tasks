% use helper method and pop from first and add to second

myReverseAcc([], X, X).
myReverseAcc([H | T], Y, Ls) :-
    myReverseAcc(T, [H | Y], Ls).
myReverse(X, Ls) :-
    myReverseAcc(X, [], Ls).

% myReverse([1,2,3,4,2,5],R).

% deleting x from list with only x results in empty array
delete(_, [], []).
delete(X, [X | Tail], Ls) :-
    delete(X, Tail, Ls).
delete(X, [H | Tail], [H | Ls]) :-
    not(X = H), delete(X, Tail, Ls).

removeDuplicates([], []).
removeDuplicates([H | T], [H | Ls]) :-
    delete(H, T, SubList), removeDuplicates(SubList, Ls).

% removeDuplicates([1,1,1,1,2,2,3,4,1,2,7],A).


zip(_, [], []).
zip([], _, []).
zip([H1 | T1], [H2 | T2], [[H1, H2] | Ls]) :-
    zip(T1, T2, Ls).

% zip([1,2],[3,4,5],L).


% permutations

insert_at_any_position(X, L, [X | L]).
insert_at_any_position(X, [H | T], [H | R]) :-
   insert_at_any_position(X, T, R).

myPermutations([],[]).
myPermutations([H | T], P) :-
    myPermutations(T, PT), insert_at_any_position(H, PT, P).

%  myPermutations([1,2,3],P).
