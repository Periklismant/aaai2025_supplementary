initiatedAt(abnormality=true, _19184) :-
     happensAt(heart_failure,_19184).

initiatedAt(ready(_19272)=true, _19184) :-
     happensAt(start(candidate(_19272)=true),_19184),
     holdsAt(preconditions(_19272)=true,_19184),
     \+holdsAt(abnormality=true,_19184).

initiatedAt(active(_19272)=true, _19184) :-
     happensAt(start(exec(_19272)=true),_19184),
     holdsAt(ready(_19272)=true,_19184).

initiatedAt(nc_exec(_19272)=true, _19184) :-
     happensAt(start(exec(_19272)=true),_19184),
     happensAt(end(ready(_19272)=true),_19184).

initiatedAt(nc_exec(_19272)=true, _19184) :-
     happensAt(start(exec(_19272)=true),_19184),
     \+holdsAt(ready(_19272)=true,_19184),
     \+happensAt(start(ready(_19272)=true),_19184).

initiatedAt(nc_exec(_19272)=true, _19184) :-
     happensAt(end(ready(_19272)=true),_19184),
     \+happensAt(end(exec(_19272)=true),_19184),
     holdsAt(exec(_19272)=true,_19184).

initiatedAt(nc_exec(_19272)=true, _19184) :-
     happensAt(start(exec(_19272)=true),_19184),
     happensAt(end(preconditions(_19272)=true),_19184).

initiatedAt(nc_exec(_19272)=true, _19184) :-
     happensAt(start(exec(_19272)=true),_19184),
     \+holdsAt(preconditions(_19272)=true,_19184),
     \+happensAt(start(preconditions(_19272)=true),_19184).

initiatedAt(nc_exec(_19272)=true, _19184) :-
     happensAt(end(preconditions(_19272)=true),_19184),
     \+happensAt(end(exec(_19272)=true),_19184),
     holdsAt(exec(_19272)=true,_19184).

initiatedAt(nc_exec(_19272)=true, _19184) :-
     happensAt(start(exec(_19272)=true),_19184),
     happensAt(start(abnormality=true),_19184).

initiatedAt(nc_exec(_19272)=true, _19184) :-
     happensAt(start(exec(_19272)=true),_19184),
     holdsAt(abnormality=true,_19184),
     \+happensAt(end(abnormality=true),_19184).

initiatedAt(nc_exec(_19272)=true, _19184) :-
     happensAt(start(abnormality=true),_19184),
     \+happensAt(end(exec(_19272)=true),_19184),
     holdsAt(exec(_19272)=true,_19184).

initiatedAt(nc_disc(_19272)=true, _19184) :-
     happensAt(start(discarded(_19272)=true),_19184),
     happensAt(start(preconditions(_19272)=true),_19184),
     happensAt(end(abnormality=true),_19184).

initiatedAt(nc_disc(_19272)=true, _19184) :-
     happensAt(start(discarded(_19272)=true),_19184),
     happensAt(start(preconditions(_19272)=true),_19184),
     \+holdsAt(abnormality=true,_19184),
     \+happensAt(start(abnormality=true),_19184).

initiatedAt(nc_disc(_19272)=true, _19184) :-
     happensAt(start(discarded(_19272)=true),_19184),
     holdsAt(preconditions(_19272)=true,_19184),
     \+happensAt(end(preconditions(_19272)=true),_19184),
     happensAt(end(abnormality=true),_19184).

initiatedAt(nc_disc(_19272)=true, _19184) :-
     happensAt(start(discarded(_19272)=true),_19184),
     holdsAt(preconditions(_19272)=true,_19184),
     \+happensAt(end(preconditions(_19272)=true),_19184),
     \+holdsAt(abnormality=true,_19184),
     \+happensAt(start(abnormality=true),_19184).

initiatedAt(nc_disc(_19272)=true, _19184) :-
     happensAt(start(preconditions(_19272)=true),_19184),
     happensAt(end(abnormality=true),_19184),
     \+happensAt(end(discarded(_19272)=true),_19184),
     holdsAt(discarded(_19272)=true,_19184).

initiatedAt(nc_disc(_19272)=true, _19184) :-
     happensAt(start(preconditions(_19272)=true),_19184),
     \+holdsAt(abnormality=true,_19184),
     \+happensAt(start(abnormality=true),_19184),
     \+happensAt(end(discarded(_19272)=true),_19184),
     holdsAt(discarded(_19272)=true,_19184).

initiatedAt(nc_disc(_19272)=true, _19184) :-
     happensAt(end(abnormality=true),_19184),
     \+happensAt(end(preconditions(_19272)=true),_19184),
     holdsAt(preconditions(_19272)=true,_19184),
     \+happensAt(end(discarded(_19272)=true),_19184),
     holdsAt(discarded(_19272)=true,_19184).

initiatedAt(nc(_19272)=true, _19184) :-
     happensAt(start(nc_exec(_19272)=true),_19184).

initiatedAt(nc(_19272)=true, _19184) :-
     happensAt(start(nc_disc(_19272)=true),_19184).

terminatedAt(abnormality=true, _19184) :-
     happensAt(start(treatment=true),_19184).

terminatedAt(ready(_19482)=true, _19184) :-
     happensAt(start(discarded(_19482)=true),_19184).

terminatedAt(ready(_19482)=true, _19184) :-
     happensAt(start(exec(_19482)=true),_19184).

terminatedAt(active(_19482)=true, _19184) :-
     happensAt(end(exec(_19482)=true),_19184).

terminatedAt(nc_exec(_19482)=true, _19184) :-
     happensAt(end(exec(_19482)=true),_19184).

terminatedAt(nc_exec(_19482)=true, _19184) :-
     happensAt(start(ready(_19482)=true),_19184),
     happensAt(start(preconditions(_19482)=true),_19184),
     happensAt(end(abnormality=true),_19184).

terminatedAt(nc_exec(_19482)=true, _19184) :-
     happensAt(start(ready(_19482)=true),_19184),
     happensAt(start(preconditions(_19482)=true),_19184),
     \+holdsAt(abnormality=true,_19184),
     \+happensAt(start(abnormality=true),_19184).

terminatedAt(nc_exec(_19482)=true, _19184) :-
     happensAt(start(ready(_19482)=true),_19184),
     holdsAt(preconditions(_19482)=true,_19184),
     \+happensAt(end(preconditions(_19482)=true),_19184),
     happensAt(end(abnormality=true),_19184).

terminatedAt(nc_exec(_19482)=true, _19184) :-
     happensAt(start(ready(_19482)=true),_19184),
     holdsAt(preconditions(_19482)=true,_19184),
     \+happensAt(end(preconditions(_19482)=true),_19184),
     \+holdsAt(abnormality=true,_19184),
     \+happensAt(start(abnormality=true),_19184).

terminatedAt(nc_exec(_19482)=true, _19184) :-
     happensAt(start(preconditions(_19482)=true),_19184),
     happensAt(end(abnormality=true),_19184),
     \+happensAt(end(ready(_19482)=true),_19184),
     holdsAt(ready(_19482)=true,_19184).

terminatedAt(nc_exec(_19482)=true, _19184) :-
     happensAt(start(preconditions(_19482)=true),_19184),
     \+holdsAt(abnormality=true,_19184),
     \+happensAt(start(abnormality=true),_19184),
     \+happensAt(end(ready(_19482)=true),_19184),
     holdsAt(ready(_19482)=true,_19184).

terminatedAt(nc_exec(_19482)=true, _19184) :-
     happensAt(end(abnormality=true),_19184),
     \+happensAt(end(preconditions(_19482)=true),_19184),
     holdsAt(preconditions(_19482)=true,_19184),
     \+happensAt(end(ready(_19482)=true),_19184),
     holdsAt(ready(_19482)=true,_19184).

terminatedAt(nc_disc(_19482)=true, _19184) :-
     happensAt(end(discarded(_19482)=true),_19184).

terminatedAt(nc_disc(_19482)=true, _19184) :-
     happensAt(end(preconditions(_19482)=true),_19184).

terminatedAt(nc_disc(_19482)=true, _19184) :-
     happensAt(start(abnormality=true),_19184).

terminatedAt(nc(_19482)=true, _19184) :-
     happensAt(end(nc_exec(_19482)=true),_19184),
     happensAt(end(nc_disc(_19482)=true),_19184).

terminatedAt(nc(_19482)=true, _19184) :-
     happensAt(end(nc_exec(_19482)=true),_19184),
     \+holdsAt(nc_disc(_19482)=true,_19184),
     \+happensAt(start(nc_disc(_19482)=true),_19184).

terminatedAt(nc(_19482)=true, _19184) :-
     happensAt(end(nc_disc(_19482)=true),_19184),
     \+happensAt(start(nc_exec(_19482)=true),_19184),
     \+holdsAt(nc_exec(_19482)=true,_19184).

% Grounding of input entities 
grounding(candidate(A)=true) :- action(A).
grounding(discarded(A)=true) :- action(A).
grounding(exec(A)=true) :- action(A).
grounding(preconditions(A)=true) :- action(A).

% Grounding of output entities
grounding(ready(A)=true):- action(A).
grounding(active(A)=true):- action(A).
grounding(nc_exec(A)=true) :- action(A).
grounding(nc_disc(A)=true) :- action(A).
grounding(nc(A)=true) :- action(A).
