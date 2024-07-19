% member of list 

list_member(X, [X | _]).
list_member(X, [_ | Tail]) :-
    list_member(X, Tail).

% list_member(4, [3, 4, 5]).
% list_member(X, [3, 4, 5]).

% length of list

list_length([], 0).
list_length([_ | Tail], N) :-
    list_length(Tail, M), N is M + 1.

% use a sliced array directly without square brackets

% list_length([1,23,4], X).

% concat two lists 

list_concat([], L, L).
list_concat([H1 | T1], L2, [H1 | List]) :-
    list_concat(T1, L2, List).

% list_concat([1,2,3],[3, 4,5,6],X).
% list_concat([1,2,3],[3, 4, X,6],[1,2,3,3,4,5,6]).

% remove from list
remove_list(X, [X | L], L).
remove_list(X, [H | T], [H | Y]) :-
    remove_list(X, T, Y).

% remove_list(2, [2, 3, 4], X).

% append to list

append_list(A, L, L) :- list_member(A, L), !.
append_list(A, L, [A | L]).

% append_list(2,[3,4,5],X).