initiatedAt(abnormality=true, _1890, _1852, _1896) :-
     happensAtIE(heart_failure,_1852),
     _1890=<_1852,
     _1852<_1896.

initiatedAt(ready(_1882)=true, _1952, _1852, _1958) :-
     happensAtProcessedIE(_1882,start(candidate(_1882)=true),_1852),_1952=<_1852,_1852<_1958,
     holdsAtProcessedIE(_1882,preconditions(_1882)=true,_1852),
     \+holdsAtProcessedSimpleFluent(abnormality,abnormality=true,_1852).

initiatedAt(active(_1882)=true, _1930, _1852, _1936) :-
     happensAtProcessedIE(_1882,start(exec(_1882)=true),_1852),_1930=<_1852,_1852<_1936,
     holdsAtProcessedSimpleFluent(_1882,ready(_1882)=true,_1852).

terminatedAt(abnormality=true, _1900, _1852, _1906) :-
     happensAtProcessedIE(treatment,start(treatment=true),_1852),
     _1900=<_1852,
     _1852<_1906.

terminatedAt(ready(_1882)=true, _1908, _1852, _1914) :-
     happensAtProcessedIE(_1882,start(discarded(_1882)=true),_1852),
     _1908=<_1852,
     _1852<_1914.

terminatedAt(ready(_1882)=true, _1908, _1852, _1914) :-
     happensAtProcessedIE(_1882,start(exec(_1882)=true),_1852),
     _1908=<_1852,
     _1852<_1914.

terminatedAt(active(_1882)=true, _1908, _1852, _1914) :-
     happensAtProcessedIE(_1882,end(exec(_1882)=true),_1852),
     _1908=<_1852,
     _1852<_1914.

holdsForSDFluent(nc_exec(_1882)=true,_1852) :-
     holdsForProcessedIE(_1882,exec(_1882)=true,_1898),
     holdsForProcessedSimpleFluent(_1882,ready(_1882)=true,_1914),
     relative_complement_all(_1898,[_1914],_1928),
     holdsForProcessedIE(_1882,preconditions(_1882)=true,_1944),
     relative_complement_all(_1898,[_1944],_1958),
     holdsForProcessedSimpleFluent(abnormality,abnormality=true,_1970),
     intersect_all([_1898,_1970],_1988),
     union_all([_1928,_1958,_1988],_1852).

holdsForSDFluent(nc_disc(_1882)=true,_1852) :-
     holdsForProcessedIE(_1882,discarded(_1882)=true,_1898),
     holdsForProcessedIE(_1882,preconditions(_1882)=true,_1914),
     holdsFor(negation(abnormality=true),_1930),
     intersect_all([_1898,_1914,_1930],_1852).

holdsForSDFluent(nc(_1882)=true,_1852) :-
     holdsForProcessedSDFluent(_1882,nc_exec(_1882)=true,_1898),
     holdsForProcessedSDFluent(_1882,nc_disc(_1882)=true,_1914),
     union_all([_1898,_1914],_1852).

grounding(candidate(_2126)=true) :- 
     action(_2126).

grounding(discarded(_2126)=true) :- 
     action(_2126).

grounding(exec(_2126)=true) :- 
     action(_2126).

grounding(preconditions(_2126)=true) :- 
     action(_2126).

grounding(ready(_2126)=true) :- 
     action(_2126).

grounding(active(_2126)=true) :- 
     action(_2126).

grounding(nc_exec(_2126)=true) :- 
     action(_2126).

grounding(nc_disc(_2126)=true) :- 
     action(_2126).

grounding(nc(_2126)=true) :- 
     action(_2126).

inputEntity(heart_failure).
inputEntity(candidate(_1918)=true).
inputEntity(preconditions(_1918)=true).
inputEntity(exec(_1918)=true).
inputEntity(treatment=true).
inputEntity(discarded(_1918)=true).
inputEntity(negation(exec(_1922)=true)).
inputEntity(negation(abnormality=true)).
inputEntity(negation(discarded(_1922)=true)).
inputEntity(negation(preconditions(_1922)=true)).
inputEntity(negation(nc_exec(_1922)=true)).
inputEntity(negation(nc_disc(_1922)=true)).

outputEntity(abnormality=true).
outputEntity(ready(_2052)=true).
outputEntity(active(_2052)=true).
outputEntity(nc_exec(_2052)=true).
outputEntity(nc_disc(_2052)=true).
outputEntity(nc(_2052)=true).

event(heart_failure).

simpleFluent(abnormality=true).
simpleFluent(ready(_2218)=true).
simpleFluent(active(_2218)=true).

sDFluent(nc_exec(_2298)=true).
sDFluent(nc_disc(_2298)=true).
sDFluent(nc(_2298)=true).
sDFluent(candidate(_2298)=true).
sDFluent(preconditions(_2298)=true).
sDFluent(exec(_2298)=true).
sDFluent(treatment=true).
sDFluent(discarded(_2298)=true).
sDFluent(negation(exec(_2302)=true)).
sDFluent(negation(abnormality=true)).
sDFluent(negation(discarded(_2302)=true)).
sDFluent(negation(preconditions(_2302)=true)).
sDFluent(negation(nc_exec(_2302)=true)).
sDFluent(negation(nc_disc(_2302)=true)).

index(heart_failure,heart_failure).
index(abnormality=true,abnormality).
index(ready(_2384)=true,_2384).
index(active(_2384)=true,_2384).
index(nc_exec(_2384)=true,_2384).
index(nc_disc(_2384)=true,_2384).
index(nc(_2384)=true,_2384).
index(candidate(_2384)=true,_2384).
index(preconditions(_2384)=true,_2384).
index(exec(_2384)=true,_2384).
index(treatment=true,treatment).
index(discarded(_2384)=true,_2384).


cachingOrder2(_2708, nc_disc(_2708)=true) :- % level in dependency graph: 1, processing order in component: 1
     action(_2708).

cachingOrder2(_2872, ready(_2872)=true) :- % level in dependency graph: 2, processing order in component: 1
     action(_2872).

cachingOrder2(_3040, active(_3040)=true) :- % level in dependency graph: 3, processing order in component: 1
     action(_3040).

cachingOrder2(_3018, nc_exec(_3018)=true) :- % level in dependency graph: 3, processing order in component: 1
     action(_3018).

cachingOrder2(_3256, nc(_3256)=true) :- % level in dependency graph: 4, processing order in component: 1
     action(_3256).

