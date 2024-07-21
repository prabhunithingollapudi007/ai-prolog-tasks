% uadd

% unary addition

uadd(X, 0, X).
uadd(X, s(Y), s(Z)) :-
    uadd(X, Y, Z).

% uadd(s(0), s(s(0)), X).

% unary multiplication

umul(_, 0, 0).
umul(X, s(Y), Z) :-
    umul(X, Y, W), uadd(X, W, Z).

% umul(s(s(0)), s(s(0)), X). 

% fibonacci sequence

ufib(0, 0).
ufib(s(0), s(0)).
ufib(s(s(X)), Y) :-
    ufib(s(X), Z), ufib(X, W), uadd(Z, W, Y).

% exponentials

uexp(_, 0, s(0)).
uexp(s(0), _, s(0)).
uexp(X, s(Y), Z) :-
    uexp(X, Y, W), umul(X, W, Z).

unary_to_integer(0, 0).
unary_to_integer(s(X), N) :-
    unary_to_integer(X, M), N is M + 1.

% unary_to_integer(s(s(s(s(s(s(s(s(0)))))))), Result).

integer_to_unary(0, 0).
integer_to_unary(N, s(Y)) :-
    N > 0, M is N - 1,
    integer_to_unary(M, Y).

% integer_to_unary(8, X).