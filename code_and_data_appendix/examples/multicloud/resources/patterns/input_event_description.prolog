initiatedAt(rule_target_holds(_24534)=true, _24446) :-
     happensAt(match(_24534),_24446).

initiatedAt(rule(_24534)=permitted, _24446) :-
     happensAt(approve_rule(_24534),_24446),
     holdsAt(rule_approve_allowed(_24534)=true,_24446).

initiatedAt(rule(_24534)=denied, _24446) :-
     happensAt(deny_rule(_24534),_24446).

initiatedAt(rule(_24534)=not_applicable, _24446) :-
     happensAt(rule_doesnt_apply(_24534),_24446),
     \+holdsAt(rule_target_holds(_24534)=true,_24446).

initiatedAt(policy(_24534)=permitted, _24446) :-
     happensAt(approve_policy(_24534),_24446),
     holdsAt(rule_permits_policy(_24534,_24556)=true,_24446).

initiatedAt(policy(_24534)=denied, _24446) :-
     happensAt(deny_policy(_24534),_24446),
     holdsAt(all_rules_deny_policy(_24534)=true,_24446).

initiatedAt(policy(_24534)=invalid, _24446) :-
     happensAt(invalidate_policy(_24534),_24446),
     holdsAt(rules_conflicting_on_policy(_24534)=true,_24446).

initiatedAt(rule_approve_allowed(_24534)=true, _24446) :-
     happensAt(start(rule_target_holds(_24534)=true),_24446),
     happensAt(start(rule_effect_is_permit(_24534)=true),_24446).

initiatedAt(rule_approve_allowed(_24534)=true, _24446) :-
     happensAt(start(rule_target_holds(_24534)=true),_24446),
     holdsAt(rule_effect_is_permit(_24534)=true,_24446),
     \+happensAt(end(rule_effect_is_permit(_24534)=true),_24446).

initiatedAt(rule_approve_allowed(_24534)=true, _24446) :-
     happensAt(start(rule_effect_is_permit(_24534)=true),_24446),
     \+happensAt(end(rule_target_holds(_24534)=true),_24446),
     holdsAt(rule_target_holds(_24534)=true,_24446).

initiatedAt(rule_permits_policy(_24534,_24536)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24536)=true),_24446),
     happensAt(start(rule(_24536)=permitted),_24446).

initiatedAt(rule_permits_policy(_24534,_24536)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(rule(_24536)=permitted,_24446),
     \+happensAt(end(rule(_24536)=permitted),_24446).

initiatedAt(rule_permits_policy(_24534,_24536)=true, _24446) :-
     happensAt(start(rule(_24536)=permitted),_24446),
     \+happensAt(end(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24536)=true,_24446).

initiatedAt(rule_denies_policy(_24534,_24536)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24536)=true),_24446),
     happensAt(start(rule(_24536)=denied),_24446).

initiatedAt(rule_denies_policy(_24534,_24536)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(rule(_24536)=denied,_24446),
     \+happensAt(end(rule(_24536)=denied),_24446).

initiatedAt(rule_denies_policy(_24534,_24536)=true, _24446) :-
     happensAt(start(rule(_24536)=denied),_24446),
     \+happensAt(end(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24536)=true,_24446).

initiatedAt(rule_denies_policy(_24534,_24536)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24536)=true),_24446),
     happensAt(start(rule(_24536)=not_applicable),_24446).

initiatedAt(rule_denies_policy(_24534,_24536)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(rule(_24536)=not_applicable,_24446),
     \+happensAt(end(rule(_24536)=not_applicable),_24446).

initiatedAt(rule_denies_policy(_24534,_24536)=true, _24446) :-
     happensAt(start(rule(_24536)=not_applicable),_24446),
     \+happensAt(end(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24536)=true,_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24536)=true),_24446),
     happensAt(start(policy_has_rule(_24534,_24538)=true),_24446),
     happensAt(start(rule(_24536)=permitted),_24446),
     happensAt(start(rule(_24538)=permitted),_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24536)=true),_24446),
     happensAt(start(policy_has_rule(_24534,_24538)=true),_24446),
     happensAt(start(rule(_24536)=permitted),_24446),
     holdsAt(rule(_24538)=permitted,_24446),
     \+happensAt(end(rule(_24538)=permitted),_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24536)=true),_24446),
     happensAt(start(policy_has_rule(_24534,_24538)=true),_24446),
     holdsAt(rule(_24536)=permitted,_24446),
     \+happensAt(end(rule(_24536)=permitted),_24446),
     happensAt(start(rule(_24538)=permitted),_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24536)=true),_24446),
     happensAt(start(policy_has_rule(_24534,_24538)=true),_24446),
     holdsAt(rule(_24536)=permitted,_24446),
     \+happensAt(end(rule(_24536)=permitted),_24446),
     holdsAt(rule(_24538)=permitted,_24446),
     \+happensAt(end(rule(_24538)=permitted),_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24538)=true,_24446),
     \+happensAt(end(policy_has_rule(_24534,_24538)=true),_24446),
     happensAt(start(rule(_24536)=permitted),_24446),
     happensAt(start(rule(_24538)=permitted),_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24538)=true,_24446),
     \+happensAt(end(policy_has_rule(_24534,_24538)=true),_24446),
     happensAt(start(rule(_24536)=permitted),_24446),
     holdsAt(rule(_24538)=permitted,_24446),
     \+happensAt(end(rule(_24538)=permitted),_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24538)=true,_24446),
     \+happensAt(end(policy_has_rule(_24534,_24538)=true),_24446),
     holdsAt(rule(_24536)=permitted,_24446),
     \+happensAt(end(rule(_24536)=permitted),_24446),
     happensAt(start(rule(_24538)=permitted),_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24538)=true,_24446),
     \+happensAt(end(policy_has_rule(_24534,_24538)=true),_24446),
     holdsAt(rule(_24536)=permitted,_24446),
     \+happensAt(end(rule(_24536)=permitted),_24446),
     holdsAt(rule(_24538)=permitted,_24446),
     \+happensAt(end(rule(_24538)=permitted),_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24538)=true),_24446),
     happensAt(start(rule(_24536)=permitted),_24446),
     happensAt(start(rule(_24538)=permitted),_24446),
     \+happensAt(end(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24536)=true,_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24538)=true),_24446),
     happensAt(start(rule(_24536)=permitted),_24446),
     holdsAt(rule(_24538)=permitted,_24446),
     \+happensAt(end(rule(_24538)=permitted),_24446),
     \+happensAt(end(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24536)=true,_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24538)=true),_24446),
     holdsAt(rule(_24536)=permitted,_24446),
     \+happensAt(end(rule(_24536)=permitted),_24446),
     happensAt(start(rule(_24538)=permitted),_24446),
     \+happensAt(end(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24536)=true,_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(policy_has_rule(_24534,_24538)=true),_24446),
     holdsAt(rule(_24536)=permitted,_24446),
     \+happensAt(end(rule(_24536)=permitted),_24446),
     holdsAt(rule(_24538)=permitted,_24446),
     \+happensAt(end(rule(_24538)=permitted),_24446),
     \+happensAt(end(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24536)=true,_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(rule(_24536)=permitted),_24446),
     happensAt(start(rule(_24538)=permitted),_24446),
     \+happensAt(end(policy_has_rule(_24534,_24538)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24538)=true,_24446),
     \+happensAt(end(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24536)=true,_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(rule(_24536)=permitted),_24446),
     holdsAt(rule(_24538)=permitted,_24446),
     \+happensAt(end(rule(_24538)=permitted),_24446),
     \+happensAt(end(policy_has_rule(_24534,_24538)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24538)=true,_24446),
     \+happensAt(end(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24536)=true,_24446).

initiatedAt(rule_pair_conflicting_on_policy(_24534,_24536,_24538)=true, _24446) :-
     happensAt(start(rule(_24538)=permitted),_24446),
     \+happensAt(end(rule(_24536)=permitted),_24446),
     holdsAt(rule(_24536)=permitted,_24446),
     \+happensAt(end(policy_has_rule(_24534,_24538)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24538)=true,_24446),
     \+happensAt(end(policy_has_rule(_24534,_24536)=true),_24446),
     holdsAt(policy_has_rule(_24534,_24536)=true,_24446).

terminatedAt(rule_target_holds(_24822)=true, _24446) :-
     happensAt(mismatch(_24822),_24446).

terminatedAt(rule_approve_allowed(_24822)=true, _24446) :-
     happensAt(end(rule_target_holds(_24822)=true),_24446).

terminatedAt(rule_approve_allowed(_24822)=true, _24446) :-
     happensAt(end(rule_effect_is_permit(_24822)=true),_24446).

terminatedAt(rule_permits_policy(_24822,_24824)=true, _24446) :-
     happensAt(end(policy_has_rule(_24822,_24824)=true),_24446).

terminatedAt(rule_permits_policy(_24822,_24824)=true, _24446) :-
     happensAt(end(rule(_24824)=permitted),_24446).

terminatedAt(rule_denies_policy(_24822,_24824)=true, _24446) :-
     happensAt(end(policy_has_rule(_24822,_24824)=true),_24446).

terminatedAt(rule_denies_policy(_24822,_24824)=true, _24446) :-
     happensAt(end(rule(_24824)=denied),_24446),
     happensAt(end(rule(_24824)=not_applicable),_24446).

terminatedAt(rule_denies_policy(_24822,_24824)=true, _24446) :-
     happensAt(end(rule(_24824)=denied),_24446),
     \+holdsAt(rule(_24824)=not_applicable,_24446),
     \+happensAt(start(rule(_24824)=not_applicable),_24446).

terminatedAt(rule_denies_policy(_24822,_24824)=true, _24446) :-
     happensAt(end(rule(_24824)=not_applicable),_24446),
     \+happensAt(start(rule(_24824)=denied),_24446),
     \+holdsAt(rule(_24824)=denied,_24446).

terminatedAt(rule_pair_conflicting_on_policy(_24822,_24824,_24826)=true, _24446) :-
     happensAt(end(policy_has_rule(_24822,_24824)=true),_24446).

terminatedAt(rule_pair_conflicting_on_policy(_24822,_24824,_24826)=true, _24446) :-
     happensAt(end(policy_has_rule(_24822,_24826)=true),_24446).

terminatedAt(rule_pair_conflicting_on_policy(_24822,_24824,_24826)=true, _24446) :-
     happensAt(end(rule(_24824)=permitted),_24446).

terminatedAt(rule_pair_conflicting_on_policy(_24822,_24824,_24826)=true, _24446) :-
     happensAt(end(rule(_24826)=permitted),_24446).

grounding(match(Rule)):- rule(Rule).
grounding(mismatch(Rule)):- rule(Rule).
grounding(approve_rule(Rule)):- rule(Rule).
grounding(deny_rule(Rule)):- rule(Rule).
grounding(rule_doesnt_apply(Rule)):- rule(Rule).
grounding(approve_policy(Policy)):- policy(Policy).
grounding(deny_policy(Policy)):- policy(Policy).
grounding(invalidate_policy(Policy)):- policy(Policy).

grounding(rule_target_holds(Rule)=true):- rule(Rule).
grounding(rule(Rule)=permitted):- rule(Rule).
grounding(rule_approve_allowed(Rule)=true):- rule(Rule).
grounding(rule(Rule)=denied):- rule(Rule).
grounding(rule(Rule)=not_applicable):- rule(Rule).
grounding(rule_effect_is_permit(Rule)=true):- rule(Rule).

grounding(policy(Policy)=permitted):- policy(Policy).
grounding(rule_permits_policy(Policy, Rule)=true):- policy(Policy), rule(Rule).
grounding(policy_has_rule(Policy, Rule)=true):- policy(Policy), rule(Rule).
grounding(policy(Policy)=denied):- policy(Policy).
grounding(all_rules_deny_policy(Policy)=true):- policy(Policy).
grounding(rule_denies_policy(Policy, Rule)=true):- policy(Policy), rule(Rule).
grounding(policy(Policy)=invalid):- policy(Policy).
grounding(rules_conflicting_on_policy(Policy)=true):- policy(Policy).
grounding(rule_pair_conflicting_on_policy(Policy, Rule1, Rule2)=true):- policy(Policy), rule(Rule1), rule(Rule2).

