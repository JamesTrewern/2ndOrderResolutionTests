:- [load_headless].
:-auxiliaries:set_configuration_option(reduction,[pltokins]).

:- set_prolog_flag(stack_limit, 2_147_483_648).
:-current_prolog_flag(stack_limit, V)
 ,format('Global stack limit ~D~n',[V]).

:-set_prolog_flag(table_space, 12_000_000_184).
:-current_prolog_flag(table_space, V)
 ,format('Table space ~D~n',[V]).


:-auxiliaries:set_configuration_option(clause_limit,[1]).
:-auxiliaries:set_configuration_option(max_invented,[0]).
:-auxiliaries:set_configuration_option(resolutions,[0]).
:-auxiliaries:set_configuration_option(fetch_clauses,[all]).
%:-auxiliaries:set_configuration_option(fetch_clauses,[[builtins,bk,metarules]]).
:-auxiliaries:set_configuration_option(table_meta_interpreter,[true]).
:-auxiliaries:set_configuration_option(untable_meta_interpreter,[true]).

:- run_all_tests.