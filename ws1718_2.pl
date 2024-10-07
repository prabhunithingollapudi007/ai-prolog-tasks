% WewanttoimplementDFSin𝙿𝚛𝚘𝙻𝚘𝚐usingthefollowingdatastructuresforsearchtrees:

subtrees([]).
subtrees([(Cost,T)|Rest]) :- number(Cost),istree(T), subtrees(Rest).
istree(tree(_,Children)) :- subtrees(Children).


% Write a Prolog predicate dfs such that dfs(G,T,X,Y) on a tree T returns the
% path to the goal G in X and the cost of the path in Y

dfs(GoalValue, tree(GoalValue, _), GoalValue, 0). % base case
dfs(GoalValue, tree(Value, [(Cost, T) | Rest]), Path, FinalCost) :-
    T = tree(IV, _), write(IV), % just printing the value
    dfs(GoalValue, T, P, C), string_concat(Value, P, Path), FinalCost is Cost + C;
dfs(GoalValue, tree(Value, Rest), Path, FinalCost).
