initiatedAt(pobject(_1884)=permitted, _1900, _1854, _1906) :-
     happensAtIE(approve_pobject(_1884),_1854),
     _1900=<_1854,
     _1854<_1906.

initiatedAt(pobject(_1884)=not_applicable, _1900, _1854, _1906) :-
     happensAtIE(doesnt_apply_pobject(_1884),_1854),
     _1900=<_1854,
     _1854<_1906.

initiatedAt(policy(_1884)=permitted, _1922, _1854, _1928) :-
     happensAtIE(approve_policy(_1884),_1854),_1922=<_1854,_1854<_1928,
     holdsAtProcessedIE(_1884,pobject_of_policy_permitted(_1884)=true,_1854).

initiatedAt(policy(_1884)=denied, _1922, _1854, _1928) :-
     happensAtIE(deny_policy(_1884),_1854),_1922=<_1854,_1854<_1928,
     holdsAtProcessedIE(_1884,all_pobjects_of_policy_denied(_1884)=true,_1854).

initiatedAt(policy_has_redundancy(_1884)=true, _1926, _1854, _1932) :-
     happensAtIE(redundancy_found(_1884),_1854),_1926=<_1854,_1854<_1932,
     holdsAtProcessedSDFluent(_1884,redundancy_pobject_pair(_1884,_1906,_1908)=true,_1854).

holdsForSDFluent(pobject_permits_policy(_1884,_1886)=true,_1854) :-
     holdsForProcessedIE(_1884,policy_has_pobject(_1884,_1886)=true,_1904),
     holdsForProcessedSimpleFluent(_1886,pobject(_1886)=permitted,_1920),
     intersect_all([_1904,_1920],_1854).

holdsForSDFluent(pobject_denies_policy(_1884,_1886)=true,_1854) :-
     holdsForProcessedIE(_1884,policy_has_pobject(_1884,_1886)=true,_1904),
     holdsForProcessedSimpleFluent(_1886,pobject(_1886)=not_applicable,_1920),
     intersect_all([_1904,_1920],_1854).

holdsForSDFluent(redundancy_pobject_pair(_1884,_1886,_1888)=true,_1854) :-
     holdsForProcessedIE(_1884,policy_has_pobject(_1884,_1886)=true,_1906),
     holdsForProcessedIE(_1884,policy_has_pobject(_1884,_1888)=true,_1924),
     holdsForProcessedSimpleFluent(_1886,pobject(_1886)=permitted,_1940),
     holdsForProcessedSimpleFluent(_1888,pobject(_1888)=permitted,_1956),
     intersect_all([_1906,_1924,_1940,_1956],_1854).

grounding(approve_pobject(_2104)) :- 
     pobject(_2104).

grounding(doesnt_apply_pobject(_2104)) :- 
     pobject(_2104).

grounding(approve_policy(_2104)) :- 
     policy(_2104).

grounding(deny_policy(_2104)) :- 
     policy(_2104).

grounding(redundancy_found(_2104)) :- 
     policy(_2104).

grounding(pobject(_2110)=permitted) :- 
     pobject(_2110).

grounding(pobject(_2110)=not_applicable) :- 
     pobject(_2110).

grounding(policy(_2110)=permitted) :- 
     policy(_2110).

grounding(policy(_2110)=denied) :- 
     policy(_2110).

grounding(pobject_of_policy_permitted(_2110)=true) :- 
     pobject(_2110).

grounding(policy_has_pobject(_2110,_2112)=true) :- 
     policy(_2110),pobject(_2112).

grounding(pobject_permits_policy(_2110,_2112)=true) :- 
     policy(_2110),pobject(_2112).

grounding(all_pobjects_of_policy_denied(_2110)=true) :- 
     policy(_2110).

grounding(pobject_denies_policy(_2110,_2112)=true) :- 
     policy(_2110),pobject(_2112).

grounding(policy_has_redundancy(_2110)=true) :- 
     policy(_2110).

grounding(redundancy_pobject_pair(_2110,_2112,_2114)=true) :- 
     policy(_2110),pobject(_2112),pobject(_2114).

inputEntity(approve_pobject(_1914)).
inputEntity(doesnt_apply_pobject(_1914)).
inputEntity(approve_policy(_1914)).
inputEntity(pobject_of_policy_permitted(_1920)=true).
inputEntity(deny_policy(_1914)).
inputEntity(all_pobjects_of_policy_denied(_1920)=true).
inputEntity(redundancy_found(_1914)).
inputEntity(policy_has_pobject(_1920,_1922)=true).
inputEntity(negation(policy_has_pobject(_1924,_1926)=true)).
inputEntity(negation(pobject(_1924)=permitted)).
inputEntity(negation(pobject(_1924)=not_applicable)).

outputEntity(pobject(_2048)=permitted).
outputEntity(pobject(_2048)=not_applicable).
outputEntity(policy(_2048)=permitted).
outputEntity(policy(_2048)=denied).
outputEntity(policy_has_redundancy(_2048)=true).
outputEntity(pobject_permits_policy(_2048,_2050)=true).
outputEntity(pobject_denies_policy(_2048,_2050)=true).
outputEntity(redundancy_pobject_pair(_2048,_2050,_2052)=true).

event(approve_pobject(_2152)).
event(doesnt_apply_pobject(_2152)).
event(approve_policy(_2152)).
event(deny_policy(_2152)).
event(redundancy_found(_2152)).

simpleFluent(pobject(_2250)=permitted).
simpleFluent(pobject(_2250)=not_applicable).
simpleFluent(policy(_2250)=permitted).
simpleFluent(policy(_2250)=denied).
simpleFluent(policy_has_redundancy(_2250)=true).


sDFluent(pobject_permits_policy(_2404,_2406)=true).
sDFluent(pobject_denies_policy(_2404,_2406)=true).
sDFluent(redundancy_pobject_pair(_2404,_2406,_2408)=true).
sDFluent(pobject_of_policy_permitted(_2404)=true).
sDFluent(all_pobjects_of_policy_denied(_2404)=true).
sDFluent(policy_has_pobject(_2404,_2406)=true).
sDFluent(negation(policy_has_pobject(_2408,_2410)=true)).
sDFluent(negation(pobject(_2408)=permitted)).
sDFluent(negation(pobject(_2408)=not_applicable)).

index(approve_pobject(_2460),_2460).
index(doesnt_apply_pobject(_2460),_2460).
index(approve_policy(_2460),_2460).
index(deny_policy(_2460),_2460).
index(redundancy_found(_2460),_2460).
index(pobject(_2460)=permitted,_2460).
index(pobject(_2460)=not_applicable,_2460).
index(policy(_2460)=permitted,_2460).
index(policy(_2460)=denied,_2460).
index(policy_has_redundancy(_2460)=true,_2460).
index(pobject_permits_policy(_2460,_2526)=true,_2460).
index(pobject_denies_policy(_2460,_2526)=true,_2460).
index(redundancy_pobject_pair(_2460,_2526,_2528)=true,_2460).
index(pobject_of_policy_permitted(_2460)=true,_2460).
index(all_pobjects_of_policy_denied(_2460)=true,_2460).
index(policy_has_pobject(_2460,_2526)=true,_2460).


cachingOrder2(_2846, pobject(_2846)=not_applicable) :- % level in dependency graph: 1, processing order in component: 1
     pobject(_2846).

cachingOrder2(_2862, pobject(_2862)=permitted) :- % level in dependency graph: 1, processing order in component: 2
     pobject(_2862).

cachingOrder2(_2808, policy(_2808)=denied) :- % level in dependency graph: 1, processing order in component: 1
     policy(_2808).

cachingOrder2(_2824, policy(_2824)=permitted) :- % level in dependency graph: 1, processing order in component: 2
     policy(_2824).

cachingOrder2(_3268, pobject_permits_policy(_3268,_3270)=true) :- % level in dependency graph: 2, processing order in component: 1
     policy(_3268),pobject(_3270).

cachingOrder2(_3244, pobject_denies_policy(_3244,_3246)=true) :- % level in dependency graph: 2, processing order in component: 1
     policy(_3244),pobject(_3246).

cachingOrder2(_3218, redundancy_pobject_pair(_3218,_3220,_3222)=true) :- % level in dependency graph: 2, processing order in component: 1
     policy(_3218),pobject(_3220),pobject(_3222).

cachingOrder2(_3660, policy_has_redundancy(_3660)=true) :- % level in dependency graph: 3, processing order in component: 1
     policy(_3660).

