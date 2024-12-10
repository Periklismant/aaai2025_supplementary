initiatedAt(rule_target_holds(_1884)=true, _1900, _1854, _1906) :-
     happensAtIE(match(_1884),_1854),
     _1900=<_1854,
     _1854<_1906.

initiatedAt(rule(_1884)=permitted, _1922, _1854, _1928) :-
     happensAtIE(approve_rule(_1884),_1854),_1922=<_1854,_1854<_1928,
     holdsAtProcessedSDFluent(_1884,rule_approve_allowed(_1884)=true,_1854).

initiatedAt(rule(_1884)=denied, _1900, _1854, _1906) :-
     happensAtIE(deny_rule(_1884),_1854),
     _1900=<_1854,
     _1854<_1906.

initiatedAt(rule(_1884)=not_applicable, _1920, _1854, _1926) :-
     happensAtIE(rule_doesnt_apply(_1884),_1854),_1920=<_1854,_1854<_1926,
     \+holdsAt(rule_target_holds(_1884),_1854).

initiatedAt(policy(_1884)=permitted, _1924, _1854, _1930) :-
     happensAtIE(approve_policy(_1884),_1854),_1924=<_1854,_1854<_1930,
     holdsAtProcessedSDFluent(_1884,rule_permits_policy(_1884,_1906)=true,_1854).

initiatedAt(policy(_1884)=denied, _1922, _1854, _1928) :-
     happensAtIE(deny_policy(_1884),_1854),_1922=<_1854,_1854<_1928,
     holdsAtProcessedIE(_1884,all_rules_deny_policy(_1884)=true,_1854).

initiatedAt(policy(_1884)=invalid, _1922, _1854, _1928) :-
     happensAtIE(invalidate_policy(_1884),_1854),_1922=<_1854,_1854<_1928,
     holdsAtProcessedIE(_1884,rules_conflicting_on_policy(_1884)=true,_1854).

terminatedAt(rule_target_holds(_1884)=true, _1900, _1854, _1906) :-
     happensAtIE(mismatch(_1884),_1854),
     _1900=<_1854,
     _1854<_1906.

holdsForSDFluent(rule_approve_allowed(_1884)=true,_1854) :-
     holdsForProcessedSimpleFluent(_1884,rule_target_holds(_1884)=true,_1900),
     holdsForProcessedIE(_1884,rule_effect_is_permit(_1884)=true,_1916),
     intersect_all([_1900,_1916],_1854).

holdsForSDFluent(rule_permits_policy(_1884,_1886)=true,_1854) :-
     holdsForProcessedIE(_1884,policy_has_rule(_1884,_1886)=true,_1904),
     holdsForProcessedSimpleFluent(_1886,rule(_1886)=permitted,_1920),
     intersect_all([_1904,_1920],_1854).

holdsForSDFluent(rule_denies_policy(_1884,_1886)=true,_1854) :-
     holdsForProcessedIE(_1884,policy_has_rule(_1884,_1886)=true,_1904),
     holdsForProcessedSimpleFluent(_1886,rule(_1886)=denied,_1920),
     holdsForProcessedSimpleFluent(_1886,rule(_1886)=not_applicable,_1936),
     union_all([_1920,_1936],_1954),
     intersect_all([_1904,_1954],_1854).

holdsForSDFluent(rule_pair_conflicting_on_policy(_1884,_1886,_1888)=true,_1854) :-
     holdsForProcessedIE(_1884,policy_has_rule(_1884,_1886)=true,_1906),
     holdsForProcessedIE(_1884,policy_has_rule(_1884,_1888)=true,_1924),
     holdsForProcessedSimpleFluent(_1886,rule(_1886)=permitted,_1940),
     holdsForProcessedSimpleFluent(_1888,rule(_1888)=permitted,_1956),
     intersect_all([_1906,_1924,_1940,_1956],_1854).

grounding(match(_2122)) :- 
     rule(_2122).

grounding(mismatch(_2122)) :- 
     rule(_2122).

grounding(approve_rule(_2122)) :- 
     rule(_2122).

grounding(deny_rule(_2122)) :- 
     rule(_2122).

grounding(rule_doesnt_apply(_2122)) :- 
     rule(_2122).

grounding(approve_policy(_2122)) :- 
     policy(_2122).

grounding(deny_policy(_2122)) :- 
     policy(_2122).

grounding(invalidate_policy(_2122)) :- 
     policy(_2122).

grounding(rule_target_holds(_2128)=true) :- 
     rule(_2128).

grounding(rule(_2128)=permitted) :- 
     rule(_2128).

grounding(rule_approve_allowed(_2128)=true) :- 
     rule(_2128).

grounding(rule(_2128)=denied) :- 
     rule(_2128).

grounding(rule(_2128)=not_applicable) :- 
     rule(_2128).

grounding(rule_approve_allowed(_2128)=true) :- 
     rule(_2128).

grounding(rule_effect_is_permit(_2128)=true) :- 
     rule(_2128).

grounding(policy(_2128)=permitted) :- 
     policy(_2128).

grounding(rule_permits_policy(_2128,_2130)=true) :- 
     policy(_2128),rule(_2130).

grounding(policy_has_rule(_2128,_2130)=true) :- 
     policy(_2128),rule(_2130).

grounding(policy(_2128)=denied) :- 
     policy(_2128).

grounding(all_rules_deny_policy(_2128)=true) :- 
     policy(_2128).

grounding(rule_denies_policy(_2128,_2130)=true) :- 
     policy(_2128),rule(_2130).

grounding(policy(_2128)=invalid) :- 
     policy(_2128).

grounding(rules_conflicting_on_policy(_2128)=true) :- 
     policy(_2128).

grounding(rule_pair_conflicting_on_policy(_2128,_2130,_2132)=true) :- 
     policy(_2128),rule(_2130),rule(_2132).

inputEntity(match(_1914)).
inputEntity(approve_rule(_1914)).
inputEntity(deny_rule(_1914)).
inputEntity(rule_doesnt_apply(_1914)).
inputEntity(rule_target_holds(_1914)).
inputEntity(approve_policy(_1914)).
inputEntity(deny_policy(_1914)).
inputEntity(all_rules_deny_policy(_1920)=true).
inputEntity(invalidate_policy(_1914)).
inputEntity(rules_conflicting_on_policy(_1920)=true).
inputEntity(mismatch(_1914)).
inputEntity(rule_effect_is_permit(_1920)=true).
inputEntity(policy_has_rule(_1920,_1922)=true).

outputEntity(rule_target_holds(_2060)=true).
outputEntity(rule(_2060)=permitted).
outputEntity(rule(_2060)=denied).
outputEntity(rule(_2060)=not_applicable).
outputEntity(policy(_2060)=permitted).
outputEntity(policy(_2060)=denied).
outputEntity(policy(_2060)=invalid).
outputEntity(rule_approve_allowed(_2060)=true).
outputEntity(rule_permits_policy(_2060,_2062)=true).
outputEntity(rule_denies_policy(_2060,_2062)=true).
outputEntity(rule_pair_conflicting_on_policy(_2060,_2062,_2064)=true).

event(match(_2182)).
event(approve_rule(_2182)).
event(deny_rule(_2182)).
event(rule_doesnt_apply(_2182)).
event(approve_policy(_2182)).
event(deny_policy(_2182)).
event(invalidate_policy(_2182)).
event(mismatch(_2182)).

simpleFluent(rule_target_holds(_2298)=true).
simpleFluent(rule(_2298)=permitted).
simpleFluent(rule(_2298)=denied).
simpleFluent(rule(_2298)=not_applicable).
simpleFluent(policy(_2298)=permitted).
simpleFluent(policy(_2298)=denied).
simpleFluent(policy(_2298)=invalid).


sDFluent(rule_approve_allowed(_2464)=true).
sDFluent(rule_permits_policy(_2464,_2466)=true).
sDFluent(rule_denies_policy(_2464,_2466)=true).
sDFluent(rule_pair_conflicting_on_policy(_2464,_2466,_2468)=true).
sDFluent(rule_target_holds(_2458)).
sDFluent(all_rules_deny_policy(_2464)=true).
sDFluent(rules_conflicting_on_policy(_2464)=true).
sDFluent(rule_effect_is_permit(_2464)=true).
sDFluent(policy_has_rule(_2464,_2466)=true).

index(match(_2520),_2520).
index(approve_rule(_2520),_2520).
index(deny_rule(_2520),_2520).
index(rule_doesnt_apply(_2520),_2520).
index(approve_policy(_2520),_2520).
index(deny_policy(_2520),_2520).
index(invalidate_policy(_2520),_2520).
index(mismatch(_2520),_2520).
index(rule_target_holds(_2520)=true,_2520).
index(rule(_2520)=permitted,_2520).
index(rule(_2520)=denied,_2520).
index(rule(_2520)=not_applicable,_2520).
index(policy(_2520)=permitted,_2520).
index(policy(_2520)=denied,_2520).
index(policy(_2520)=invalid,_2520).
index(rule_approve_allowed(_2520)=true,_2520).
index(rule_permits_policy(_2520,_2586)=true,_2520).
index(rule_denies_policy(_2520,_2586)=true,_2520).
index(rule_pair_conflicting_on_policy(_2520,_2586,_2588)=true,_2520).
index(all_rules_deny_policy(_2520)=true,_2520).
index(rules_conflicting_on_policy(_2520)=true,_2520).
index(rule_effect_is_permit(_2520)=true,_2520).
index(policy_has_rule(_2520,_2586)=true,_2520).


cachingOrder2(_2910, rule_target_holds(_2910)=true) :- % level in dependency graph: 1, processing order in component: 1
     rule(_2910).

cachingOrder2(_3056, rule_approve_allowed(_3056)=true) :- % level in dependency graph: 2, processing order in component: 1
     rule(_3056).

cachingOrder2(_3202, rule(_3202)=not_applicable) :- % level in dependency graph: 3, processing order in component: 1
     rule(_3202).

cachingOrder2(_3218, rule(_3218)=denied) :- % level in dependency graph: 3, processing order in component: 2
     rule(_3218).

cachingOrder2(_3234, rule(_3234)=permitted) :- % level in dependency graph: 3, processing order in component: 3
     rule(_3234).

cachingOrder2(_3570, rule_permits_policy(_3570,_3572)=true) :- % level in dependency graph: 4, processing order in component: 1
     policy(_3570),rule(_3572).

cachingOrder2(_3546, rule_denies_policy(_3546,_3548)=true) :- % level in dependency graph: 4, processing order in component: 1
     policy(_3546),rule(_3548).

cachingOrder2(_3520, rule_pair_conflicting_on_policy(_3520,_3522,_3524)=true) :- % level in dependency graph: 4, processing order in component: 1
     policy(_3520),rule(_3522),rule(_3524).

cachingOrder2(_3962, policy(_3962)=invalid) :- % level in dependency graph: 5, processing order in component: 1
     policy(_3962).

cachingOrder2(_3978, policy(_3978)=denied) :- % level in dependency graph: 5, processing order in component: 2
     policy(_3978).

cachingOrder2(_3994, policy(_3994)=permitted) :- % level in dependency graph: 5, processing order in component: 3
     policy(_3994).

