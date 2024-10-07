 % tree(V,TS) represents a tree.
 % V must be a string- the label/value/data V of the root node
 % TS must be a list of trees- the children/subtrees of the root node
 % In particular, a leaf node is a tree with the empty list of children
istree(tree(V,TS)) :- string(V), istreelist(TS).


 % istreelist(TS) holds if TS is a list of trees.
 % Note that the children are a list not a set, i.e., they are ordered.
istreelist([]).
istreelist([T|TS]) :- istree(T), istreelist(TS).


 % The following predicates define search algorithms that take a tree T
 % and visit every node each time writing out the line D:L where
 % * D is the depth (starting at 0 for the root)
 % * L is the label
 % dfs(T) visits every node in depth-first order

visit_node(Node, Children, Depth)

dfs(T) :- ???