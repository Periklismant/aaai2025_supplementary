initiatedAt(pobject(_16084)=permitted, _15996) :-
     happensAt(approve_pobject(_16084),_15996).

initiatedAt(pobject(_16084)=not_applicable, _15996) :-
     happensAt(doesnt_apply_pobject(_16084),_15996).

initiatedAt(policy(_16084)=permitted, _15996) :-
     happensAt(approve_policy(_16084),_15996),
     holdsAt(pobject_of_policy_permitted(_16084)=true,_15996).

initiatedAt(policy(_16084)=denied, _15996) :-
     happensAt(deny_policy(_16084),_15996),
     holdsAt(all_pobjects_of_policy_denied(_16084)=true,_15996).

initiatedAt(policy_has_redundancy(_16084)=true, _15996) :-
     happensAt(redundancy_found(_16084),_15996),
     holdsAt(redundancy_pobject_pair(_16084,_16106,_16108)=true,_15996).

initiatedAt(pobject_permits_policy(_16084,_16086)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16086)=true),_15996),
     happensAt(start(pobject(_16086)=permitted),_15996).

initiatedAt(pobject_permits_policy(_16084,_16086)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(pobject(_16086)=permitted,_15996),
     \+happensAt(end(pobject(_16086)=permitted),_15996).

initiatedAt(pobject_permits_policy(_16084,_16086)=true, _15996) :-
     happensAt(start(pobject(_16086)=permitted),_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16086)=true,_15996).

initiatedAt(pobject_denies_policy(_16084,_16086)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16086)=true),_15996),
     happensAt(start(pobject(_16086)=not_applicable),_15996).

initiatedAt(pobject_denies_policy(_16084,_16086)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(pobject(_16086)=not_applicable,_15996),
     \+happensAt(end(pobject(_16086)=not_applicable),_15996).

initiatedAt(pobject_denies_policy(_16084,_16086)=true, _15996) :-
     happensAt(start(pobject(_16086)=not_applicable),_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16086)=true,_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16086)=true),_15996),
     happensAt(start(policy_has_pobject(_16084,_16088)=true),_15996),
     happensAt(start(pobject(_16086)=permitted),_15996),
     happensAt(start(pobject(_16088)=permitted),_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16086)=true),_15996),
     happensAt(start(policy_has_pobject(_16084,_16088)=true),_15996),
     happensAt(start(pobject(_16086)=permitted),_15996),
     holdsAt(pobject(_16088)=permitted,_15996),
     \+happensAt(end(pobject(_16088)=permitted),_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16086)=true),_15996),
     happensAt(start(policy_has_pobject(_16084,_16088)=true),_15996),
     holdsAt(pobject(_16086)=permitted,_15996),
     \+happensAt(end(pobject(_16086)=permitted),_15996),
     happensAt(start(pobject(_16088)=permitted),_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16086)=true),_15996),
     happensAt(start(policy_has_pobject(_16084,_16088)=true),_15996),
     holdsAt(pobject(_16086)=permitted,_15996),
     \+happensAt(end(pobject(_16086)=permitted),_15996),
     holdsAt(pobject(_16088)=permitted,_15996),
     \+happensAt(end(pobject(_16088)=permitted),_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16088)=true,_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16088)=true),_15996),
     happensAt(start(pobject(_16086)=permitted),_15996),
     happensAt(start(pobject(_16088)=permitted),_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16088)=true,_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16088)=true),_15996),
     happensAt(start(pobject(_16086)=permitted),_15996),
     holdsAt(pobject(_16088)=permitted,_15996),
     \+happensAt(end(pobject(_16088)=permitted),_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16088)=true,_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16088)=true),_15996),
     holdsAt(pobject(_16086)=permitted,_15996),
     \+happensAt(end(pobject(_16086)=permitted),_15996),
     happensAt(start(pobject(_16088)=permitted),_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16088)=true,_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16088)=true),_15996),
     holdsAt(pobject(_16086)=permitted,_15996),
     \+happensAt(end(pobject(_16086)=permitted),_15996),
     holdsAt(pobject(_16088)=permitted,_15996),
     \+happensAt(end(pobject(_16088)=permitted),_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16088)=true),_15996),
     happensAt(start(pobject(_16086)=permitted),_15996),
     happensAt(start(pobject(_16088)=permitted),_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16086)=true,_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16088)=true),_15996),
     happensAt(start(pobject(_16086)=permitted),_15996),
     holdsAt(pobject(_16088)=permitted,_15996),
     \+happensAt(end(pobject(_16088)=permitted),_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16086)=true,_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16088)=true),_15996),
     holdsAt(pobject(_16086)=permitted,_15996),
     \+happensAt(end(pobject(_16086)=permitted),_15996),
     happensAt(start(pobject(_16088)=permitted),_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16086)=true,_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(policy_has_pobject(_16084,_16088)=true),_15996),
     holdsAt(pobject(_16086)=permitted,_15996),
     \+happensAt(end(pobject(_16086)=permitted),_15996),
     holdsAt(pobject(_16088)=permitted,_15996),
     \+happensAt(end(pobject(_16088)=permitted),_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16086)=true,_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(pobject(_16086)=permitted),_15996),
     happensAt(start(pobject(_16088)=permitted),_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16088)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16088)=true,_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16086)=true,_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(pobject(_16086)=permitted),_15996),
     holdsAt(pobject(_16088)=permitted,_15996),
     \+happensAt(end(pobject(_16088)=permitted),_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16088)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16088)=true,_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16086)=true,_15996).

initiatedAt(redundancy_pobject_pair(_16084,_16086,_16088)=true, _15996) :-
     happensAt(start(pobject(_16088)=permitted),_15996),
     \+happensAt(end(pobject(_16086)=permitted),_15996),
     holdsAt(pobject(_16086)=permitted,_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16088)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16088)=true,_15996),
     \+happensAt(end(policy_has_pobject(_16084,_16086)=true),_15996),
     holdsAt(policy_has_pobject(_16084,_16086)=true,_15996).

terminatedAt(pobject_permits_policy(_16324,_16326)=true, _15996) :-
     happensAt(end(policy_has_pobject(_16324,_16326)=true),_15996).

terminatedAt(pobject_permits_policy(_16324,_16326)=true, _15996) :-
     happensAt(end(pobject(_16326)=permitted),_15996).

terminatedAt(pobject_denies_policy(_16324,_16326)=true, _15996) :-
     happensAt(end(policy_has_pobject(_16324,_16326)=true),_15996).

terminatedAt(pobject_denies_policy(_16324,_16326)=true, _15996) :-
     happensAt(end(pobject(_16326)=not_applicable),_15996).

terminatedAt(redundancy_pobject_pair(_16324,_16326,_16328)=true, _15996) :-
     happensAt(end(policy_has_pobject(_16324,_16326)=true),_15996).

terminatedAt(redundancy_pobject_pair(_16324,_16326,_16328)=true, _15996) :-
     happensAt(end(policy_has_pobject(_16324,_16328)=true),_15996).

terminatedAt(redundancy_pobject_pair(_16324,_16326,_16328)=true, _15996) :-
     happensAt(end(pobject(_16326)=permitted),_15996).

terminatedAt(redundancy_pobject_pair(_16324,_16326,_16328)=true, _15996) :-
     happensAt(end(pobject(_16328)=permitted),_15996).

grounding(approve_pobject(PObject)):- pobject(PObject).
grounding(doesnt_apply_pobject(PObject)):- pobject(PObject).
grounding(approve_policy(Policy)):- policy(Policy).
grounding(deny_policy(Policy)):- policy(Policy).
grounding(redundancy_found(Policy)):- policy(Policy).

grounding(pobject(PObject)=permitted):- pobject(PObject).
grounding(pobject(PObject)=not_applicable):- pobject(PObject).
grounding(policy(Policy)=permitted):- policy(Policy).
grounding(policy(Policy)=denied):- policy(Policy).
grounding(pobject_of_policy_permitted(PObject)=true):- pobject(PObject).
grounding(policy_has_pobject(Policy, PObject)=true):- policy(Policy), pobject(PObject).
grounding(pobject_permits_policy(Policy, PObject)=true):- policy(Policy), pobject(PObject).
grounding(all_pobjects_of_policy_denied(Policy)=true):- policy(Policy).
grounding(pobject_denies_policy(Policy, PObject)=true):- policy(Policy), pobject(PObject).
grounding(policy_has_redundancy(Policy)=true):- policy(Policy).
grounding(redundancy_pobject_pair(Policy, PObject1, PObject2)=true):- policy(Policy), pobject(PObject1), pobject(PObject2).

