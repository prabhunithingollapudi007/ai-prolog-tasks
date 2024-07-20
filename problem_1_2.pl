% binary tree data structure formation

% adding an empty node as a tree with no children

add_node(X, nil, tree(X, nil, nil)).

% add to left if new node is less than root node
add_node(X, tree(Root, LeftTree, RightTree), tree(Root, NewLeftTree, RightTree)) :-
    X < Root, add_node(X, LeftTree, NewLeftTree).

% add to right if node is greater than root node
add_node(X, tree(Root, LeftTree, RightTree), tree(Root, LeftTree, NewRightTree)) :-
    X > Root, add_node(X, RightTree, NewRightTree).

constructAcc([], Tree, Tree).
constructAcc([H | Tail], Tree, NewTree) :-
    add_node(H, NewTree, NewTreeWithHead), constructAcc(Tail, Tree, NewTreeWithHead).

construct(Ls, T) :-
    constructAcc(Ls, T, nil).

%  construct([3,2,4,1,5],T).

% count nodes is 0 for nil tree
% count nodes is sum of left and right tree + 1
count_nodes(nil, 0).
count_nodes(tree(_, LeftTree, RightTree), Sum) :-
    count_nodes(LeftTree, LeftNodes), count_nodes(RightTree, RightNodes), Sum is LeftNodes + RightNodes + 1.

% count_nodes(tree(3, tree(2, tree(1, nil, nil), nil), tree(4, nil, tree(5, nil, nil))), Sum).

count_leafs(nil, 0).
count_leafs(tree(_, nil, nil), 1).
count_leafs(tree(_, LeftTree, RightTree), Sum) :-
    count_leafs(LeftTree, LeftLeaves), count_leafs(RightTree, RightLeaves), Sum is LeftLeaves + RightLeaves.

% count_leafs(tree(3, tree(2, tree(1, nil, nil), nil), tree(4, nil, tree(5, nil, nil))), Sum).

symmetric(nil).
symmetric(tree(_, LeftTree, RightTree)) :-
    mirror(LeftTree, RightTree).

mirror(nil, nil).
mirror(tree(X, LT1, RT1), tree(X, LT2, RT2)) :-
    mirror(LT1, RT2), mirror(LT2, RT1).
    
%  symmetric(tree(1,tree(2,nil,nil),tree(2,nil,nil))).