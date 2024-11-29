:- dynamic experiment_file/2.
:- dynamic learner/2.

experiment_config(K,Ss):-
    K = 1,
    Stride = 1,
    LB = 1,
    UB = 4, 
    float_interval(LB,UB,Stride,Ss).

load_louise:- 
    assert(learner('Louise',lib(louise/louise))),
    ['vanilla/load_headless'],
    assert(learning_predicate(louise:learn/5)),
    use_module(evaluation/evaluation),
    use_module(learning_curve/learning_curve).

robots_test:-  
    assert(experiment_file(data('robots/robots.pl'),robots)),
    load_louise,
    experiment_config(K,Ss),
    learning_curve:learning_curve(move/2,acc,K,Ss,louise).


test_graph(Noise):-
    atomic_list_concat([graph, '_' ,Noise], LP),
    atomic_list_concat(['coloured_graph/', LP], FilePath),
    assert(experiment_file(data(FilePath),LP)),
    load_louise,
    experiment_config(K,Ss),
    learning_curve:learning_curve(LP/2,acc,K,Ss,louise).