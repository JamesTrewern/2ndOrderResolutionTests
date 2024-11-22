:- assert(learner('Metagol',lib(metagol/metagol))).
:- ['vanilla/load_headless'].
:- assert(learning_predicate(metagol:learn/5)).
:- use_module(evaluation/evaluation).
% :- metagol:learn(ancestor/2).

:-  evaluation:train_and_test(ancestor/2,0.5,H,acc,Accuracy),
    maplist(writeln,H),
    writeln('accuracy' : Accuracy).
    
