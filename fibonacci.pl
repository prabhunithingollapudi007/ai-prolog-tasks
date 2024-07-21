fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, Sum) :-
    N > 1, M is N - 1, O is N - 2, 
    fibonacci(M, X), fibonacci(O, Y), Sum is X + Y.