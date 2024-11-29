:-module(robots, [program_signature/3
		 ,background_knowledge/2
		 ,metarules/2
		 ,positive_example/2
		 ,negative_example/2
		 ,double_move/3
		 ,triple_move/3
		 ,quadruple_move/3
		 ,move/1
		 ,move_right_twice/2
		 ,move_left_twice/2
		 ,move_up_twice/2
		 ,move_down_twice/2
		 ,move_right_then_up/2
		 ,move_right_then_down/2
		 ,move_left_then_up/2
		 ,move_left_then_down/2
		 ,move_up_then_right/2
		 ,move_up_then_left/2
		 ,move_down_then_right/2
		 ,move_down_then_left/2
		 ]).

:-use_module(project_root(configuration)).
:- (   configuration:learner(metagol,lib(metagol/metagol))
   ->  use_module(lib(metagol/metagol_auxiliaries))
   ;   configuration:learner(poker,lib(poker/poker))
   ->  use_module(lib(poker/poker_auxiliaries))
   ;   configuration:learner(louise,lib(louise/louise))
   ->  use_module(lib(louise/louise_auxiliaries))
   ).
:-use_module(empty_world_4_4).

/** <module> Grid worl navigation.

*/

% ========================================
% MIL problem
% ========================================

% Triadic metarules - allow higher-order moves to be used.
configuration:tri_chain_1 metarule 'P(x,y):- Q(M,x,z), R(z,y)'.
configuration:tri_chain_2 metarule 'P(x,y):- Q(x,z), R(M,z,y)'.
configuration:tri_chain_3 metarule 'P(x,y):- Q(M,x,z), R(N,z,y)'.

/*
metagol_configuration:order_constraints(tri_chain_1,[P,Q,_M,R],[X,Y,Z],[P>Q,P>R,Q>R],[X>Z,Z>Y]).
metagol_configuration:order_constraints(tri_chain_2,[P,Q,R,_M],[X,Y,Z],[P>Q,P>R,Q>R],[X>Z,Z>Y]).
metagol_configuration:order_constraints(tri_chain_3,[P,Q,_M,R,_N],[X,Y,Z],[P>Q,P>R,Q>R],[X>Z,Z>Y]).
*/
%/*
metagol_configuration:order_constraints(tri_chain_1,[P,Q,_M,_R],_,[P>Q],[]).
metagol_configuration:order_constraints(tri_chain_2,[P,Q,_R,_M],_,[P>Q],[]).
metagol_configuration:order_constraints(tri_chain_3,[P,Q,_M,_R,_N],_,[P>Q],[]).
%*/
/*
metagol_configuration:order_constraints(tri_chain_1,_,_,[],[]).
metagol_configuration:order_constraints(tri_chain_2,_,_,[],[]).
metagol_configuration:order_constraints(tri_chain_3,_,_,[],[]).
*/

program_signature(move/2,[move|BK_],[]):-
	background_knowledge(move/2,BK)
	,findall(S
		,member(S/_A,BK)
		,BK_).

background_knowledge(move/2, [% Move primitives
			      move_right/2
			     ,move_left/2
			     ,move_up/2
			     ,move_down/2
			      % Higher-order actions - multi-moves
			     ,double_move/3
			     ,triple_move/3
			     ,quadruple_move/3
			      % Compound actions - double moves
			     ,move_right_twice/2
			     ,move_left_twice/2
			     ,move_up_twice/2
			     ,move_down_twice/2
			      % Compound actions - angled moves
			     ,move_right_then_up/2
			     ,move_right_then_down/2
			     ,move_left_then_up/2
			     ,move_left_then_down/2
			     ,move_up_then_right/2
			     ,move_up_then_left/2
			     ,move_down_then_right/2
			     ,move_down_then_left/2
			  ]).

metarules(move/2,[chain
		 ,tri_chain_1
		 ,tri_chain_2
		 ,tri_chain_3
		 ]).

positive_example(move/2,move(Ss,Gs)):-
	empty_world_4_4:move(Ss,Gs).

negative_example(move/2,_):-
	fail.

% ========================================
% Background knowledge definitions (local)
% ========================================

% ========================================
% Higher-order actions - multi-moves


%!	double_move(+Move,+Start,-End) is det.
%
%	Repeat a single Move twice.
%
%	Move is the predicate symbol of a primitive or compound move.
%	The allowed moves are listed in move/1.
%
%	@tbd This and the other two higher-order actions are very
%	simple, repeating the same move two or more times. It is
%	certainly possible to generalise this ability to multi-moves of
%	arbitrary cardinality and combining different sub-moves, or
%	combining higher-order moves. However, this would start to get
%	complicated quickly, whereas the current setup is simple enough
%	to implement and explain.
%
double_move(M,Ss,Gs):-
	move(M)
	,call(M,Ss,Ss_1)
	,call(M,Ss_1,Gs).


%!	triple_move(+Move,+Start,-End) is det.
%
%	Repeat a single Move three times.
%
triple_move(M,Ss,Gs):-
	move(M)
	,call(M,Ss,Ss_1)
	,double_move(M,Ss_1,Gs).


%!	quadruple_move(+Move,+Start,-End) is det.
%
%	Repeat a single Move four times.
%
quadruple_move(M,Ss,Gs):-
	move(M)
	,double_move(M,Ss,Ss_1)
	,double_move(M,Ss_1,Gs).


%!	move(?Move) is nondet.
%
%	A Move that can be repeated as a higher-order action.
%
%	Note that this includes already twice-repeating actions, like
%	move_right_twice and move_up_twice. This may or may not be as
%	required. If not, uncomment the actions you don't want, below.
%
move(experiment_file:M):-
% We must point to where M is defined or errors rise.
	member(M, [move_right
		  ,move_left
		  ,move_up
		  ,move_down
		   % Compound actions - double moves
		  ,move_right_twice
		  ,move_left_twice
		  ,move_up_twice
		  ,move_down_twice
		   % Compound actions - angled moves
		  ,move_right_then_up
		  ,move_right_then_down
		  ,move_left_then_up
		  ,move_left_then_down
		  ,move_up_then_right
		  ,move_up_then_left
		  ,move_down_then_right
		  ,move_down_then_left
		  ]).


% ========================================
% Compound actions - double moves

%!	move_right_twice(+State,-New) is det.
%
%	Repeat a move_right/2 action twice.
%
move_right_twice(Ss,Gs):-
	move_right(Ss,Ss_2)
	,move_right(Ss_2,Gs).


%!	move_left_twice(+State,-New) is det.
%
%	Repeat a move_left/2 action twice.
%
move_left_twice(Ss,Gs):-
	move_left(Ss,Ss_2)
	,move_left(Ss_2,Gs).


%!	move_up_twice(+State,-New) is det.
%
%	Repeat a move_up/2 action twice.
%
move_up_twice(Ss,Gs):-
	move_up(Ss,Ss_2)
	,move_up(Ss_2,Gs).


%!	move_down_twice(+State,-New) is det.
%
%	Repeat a move_down/2 action twice.
%
move_down_twice(Ss,Gs):-
	move_down(Ss,Ss_2)
	,move_down(Ss_2,Gs).


% ========================================
% Compound actions - moves at an angle

%!	move_right_then_up(+State, -New) is det.
%
%	Combine	a move to the right with a move upwards.
%
move_right_then_up(Ss,Gs):-
	move_right(Ss,Ss_2)
	,move_up(Ss_2,Gs).


%!	move_right_then_down(+State,-New) is det.
%
%	Combine	a move to the right with a move downwards.
%
move_right_then_down(Ss,Gs):-
	move_right(Ss,Ss_2)
	,move_down(Ss_2,Gs).


%!	move_left_then_up(+State, -New) is det.
%
%	Combine	a move to the left with a move upwards.
%
move_left_then_up(Ss,Gs):-
	move_left(Ss,Ss_2)
	,move_up(Ss_2,Gs).


%!	move_left_then_down(+State,-New) is det.
%
%	Combine	a move to the left with a move downwards.
%
move_left_then_down(Ss,Gs):-
	move_left(Ss,Ss_2)
	,move_down(Ss_2,Gs).


%!	move_up_then_right(+State, -New) is det.
%
%	Combine	a move upwards with a move to the right.
%
move_up_then_right(Ss,Gs):-
	move_up(Ss,Ss_2)
	,move_right(Ss_2,Gs).


%!	move_up_then_left(+State, -New) is det.
%
%	Combine	a move to the left with a move upwards.
%
move_up_then_left(Ss,Gs):-
	move_up(Ss,Ss_2)
	,move_left(Ss_2,Gs).


%!	move_down_then_right(+State, -New) is det.
%
%	Combine	a move downwards with a move to the right.
%
move_down_then_right(Ss,Gs):-
	move_down(Ss,Ss_2)
	,move_right(Ss_2,Gs).


%!	move_down_then_left(+State, -New) is det.
%
%	Combine	a move to the left with a move downwards.
%
move_down_then_left(Ss,Gs):-
	move_down(Ss,Ss_2)
	,move_left(Ss_2,Gs).
