

load_metagol:- 
    assert(learner('Metagol',lib(metagol/metagol))),
    ['vanilla/load_headless'],
    assert(learning_predicate(metagol:learn/5)),
    use_module(evaluation/evaluation),
    use_module(learning_curve/learning_curve).


update_experiment_file(FilePath, ModuleName):-
    retract(experiment_file(_,_)),
    assert(experiment_file(FilePath,ModuleName)),
    load_experiment_file:load_experiment_file(FilePath).


load_robots:-
    assert(experiment_file('robots/robots',robots)).


robots_test:-  
    assert(experiment_file(data('robots/robots.pl'),robots)),
    load_metagol,
    debug(evaluation),
    debug(depth),
    evaluation:train_and_test(move/2,0.01,H,acc,Accuracy),
    maplist(writeln,H),
    writeln('accuracy' : Accuracy).
    
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
