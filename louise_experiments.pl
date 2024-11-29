:- dynamic experiment_file/2.
:- dynamic learner/2.

load_louise:- 
    assert(learner('Louise',lib(louise/louise))),
    ['vanilla/load_headless'],
    assert(learning_predicate(louise:learn/5)),
    use_module(evaluation/evaluation),
    use_module(learning_curve/learning_curve).

robots_test:-  
    K = 1,
    Ss = [0.1,0.2,0.3,0.4],
    T = move/2,
    assert(experiment_file(data('robots/robots.pl'),robots)),
    load_louise,
    % evaluation:train_and_test(move/2,10,H,acc,Accuracy),
    % writeln('accuracy' : Accuracy).
    learning_curve:learning_curve(T,acc,K,Ss,_,_).
    
coloured_graph_test:-  
    K = 1,
    Ss = [0.1],
    T = graph_no_noise/2,
    assert(experiment_file(data('coloured_graph/graph_no_noise.pl'),graph_no_noise)),
    load_metagol,
    debug(evaluation),
    debug(depth),
    debug(metasubstitutions),
    debug(signature),
    % learning_curve:learning_curve(T,acc,K,Ss,_,_).
    evaluation:train_and_test(T,10,H,acc,Accuracy),
    maplist(writeln,H),
    writeln('accuracy' : Accuracy).

test_tests:-
    debug(signature),
    debug(metasubstitutions),
    nodebug(constraints),
    auxiliaries:learning_targets([T]),
    auxiliaries:experiment_data(T,[E1,E2|_Pos],Neg,BK,MS), 
    time( metagol:learn([E1,E2],Neg,BK,MS,Ps) ), 
    length(Ps,N), 
    writeln(length:N),
    auxiliaries:print_clauses(Ps).