:- dynamic experiment_file/2.
:- dynamic learner/2.

experiment_config(K,Ss):-
    K = 1,
    Stride = 1,
    LB = 1,
    UB = 9, 
    float_interval(LB,UB,Stride,Ss).
    % Ss = [
    %     0.1,
    %     0.2,
    %     0.3,
    %     0.4,
    %     0.5,
    %     0.6,
    %     0.7,
    %     0.8,
    %     0.9,
    % ]

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
    learning_curve:learning_curve(move/2,acc,K,Ss,_,_).


test_graph(K, TUP, Noise):-
    atomic_list_concat([graph, '_' ,Noise], LP),
    atomic_list_concat(['data/coloured_graph/', LP], FilePath),
    update_experiment_file(FilePath,LP),
    T = LP/2,
    test(T,K, TUP).

graph_no_noise_test:-
    assert(experiment_file(data('coloured_graph/graph_no_noise.pl'),graph_no_noise)),
    load_louise,
    experiment_config(K,Ss),
    learning_curve:learning_curve(graph_no_noise/2,acc,K,Ss,_,_).