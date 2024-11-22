:- use_module(data/scripts/learning_curve/learning_curve).

update_experiment_file(FilePath, ModuleName):-
    retract(experiment_file(_,_)),
    assert(experiment_file(FilePath,ModuleName)),
    load_experiment_file:load_experiment_file(FilePath).

test_graphs(K, TUP):-
    NoiseTypes = [no_noise,ambiguities,false_positives,false_negatives],
    maplist(test_graph(K,TUP), NoiseTypes).
    
test_graph(K, TUP, Noise):-
    atomic_list_concat([graph, '_' ,Noise], LP),
    atomic_list_concat(['data/coloured_graph/', LP], FilePath),
    update_experiment_file(FilePath,LP),
    T = LP/2,
    test(T,K, TUP).

test(T,K, (Stride, LB, UB)):-
    M = acc,
    format('Testing: ~w\n',[T]),
    float_interval(LB,UB,Stride,Ss),
    learning_curve(T,M,K,Ss,_,_).

test_robots(K,TUP):-
    update_experiment_file('data/robots/robots', robots),
    test(move/2,K,TUP).

run_all_tests:-
    K = 10,
    Stride = 1,
    LB = 1,
    UB = 9, 
    test_graphs(K,(Stride,LB,UB)),
    test_robots(K,(Stride,LB,UB)).

