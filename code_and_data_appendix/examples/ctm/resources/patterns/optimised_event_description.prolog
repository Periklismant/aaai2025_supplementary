:- dynamic vehicle/2.

initiatedAt(punctuality(_102,_104)=punctual, _114, -1, _122) :-
     _114=< -1,
     -1<_122.

initiatedAt(passenger_density(_102,_104)=low, _114, -1, _122) :-
     _114=< -1,
     -1<_122.

initiatedAt(noise_level(_102,_104)=low, _114, -1, _122) :-
     _114=< -1,
     -1<_122.

initiatedAt(internal_temperature(_102,_104)=normal, _114, -1, _122) :-
     _114=< -1,
     -1<_122.

initiatedAt(punctuality(_112,_114)=punctual, _136, _82, _142) :-
     happensAtIE(stop_enter(_112,_114,_122,scheduled),_82),
     _136=<_82,
     _82<_142.

initiatedAt(punctuality(_112,_114)=punctual, _136, _82, _142) :-
     happensAtIE(stop_enter(_112,_114,_122,early),_82),
     _136=<_82,
     _82<_142.

initiatedAt(punctuality(_112,_114)=non_punctual, _136, _82, _142) :-
     happensAtIE(stop_enter(_112,_114,_122,late),_82),
     _136=<_82,
     _82<_142.

initiatedAt(punctuality(_112,_114)=non_punctual, _136, _82, _142) :-
     happensAtIE(stop_leave(_112,_114,_122,early),_82),
     _136=<_82,
     _82<_142.

initiatedAt(punctuality(_112,_114)=non_punctual, _136, _82, _142) :-
     happensAtIE(stop_leave(_112,_114,_122,late),_82),
     _136=<_82,
     _82<_142.

initiatedAt(passenger_density(_104,_106)=_90, _138, _84, _144) :-
     happensAtIE(passenger_density_change(_104,_106,_90),_84),_138=<_84,_84<_144.

initiatedAt(noise_level(_104,_106)=_90, _138, _84, _144) :-
     happensAtIE(noise_level_change(_104,_106,_90),_84),_138=<_84,_84<_144.

initiatedAt(internal_temperature(_104,_106)=_90, _138, _84, _144) :-
     happensAtIE(internal_temperature_change(_104,_106,_90),_84),_138=<_84,_84<_144.

terminatedAt(punctuality(_112,_114)=punctual, _136, _82, _142) :-
     happensAtIE(stop_enter(_112,_114,_122,late),_82),
     _136=<_82,
     _82<_142.

terminatedAt(punctuality(_112,_114)=punctual, _136, _82, _142) :-
     happensAtIE(stop_leave(_112,_114,_122,early),_82),
     _136=<_82,
     _82<_142.

holdsForSDFluent(driving_style(_112,_114)=unsafe,_82) :-
     holdsForProcessedIE(_112,sharp_turn(_112,_114)=very_sharp,_132),
     holdsForProcessedIE(_112,abrupt_acceleration(_112,_114)=very_abrupt,_150),
     holdsForProcessedIE(_112,abrupt_deceleration(_112,_114)=very_abrupt,_168),
     union_all([_132,_150,_168],_82).

holdsForSDFluent(driving_style(_112,_114)=uncomfortable,_82) :-
     holdsForProcessedIE(_112,sharp_turn(_112,_114)=sharp,_132),
     holdsForProcessedIE(_112,abrupt_acceleration(_112,_114)=very_abrupt,_150),
     holdsForProcessedIE(_112,abrupt_deceleration(_112,_114)=very_abrupt,_168),
     relative_complement_all(_132,[_150,_168],_188),
     holdsForProcessedIE(_112,abrupt_acceleration(_112,_114)=abrupt,_206),
     holdsForProcessedIE(_112,abrupt_deceleration(_112,_114)=abrupt,_224),
     union_all([_188,_206,_224],_82).

holdsForSDFluent(driving_quality(_112,_114)=high,_82) :-
     holdsForProcessedSimpleFluent(_112,punctuality(_112,_114)=punctual,_132),
     holdsForProcessedSDFluent(_112,driving_style(_112,_114)=unsafe,_150),
     holdsForProcessedSDFluent(_112,driving_style(_112,_114)=uncomfortable,_168),
     relative_complement_all(_132,[_150,_168],_82).

holdsForSDFluent(driving_quality(_112,_114)=medium,_82) :-
     holdsForProcessedSimpleFluent(_112,punctuality(_112,_114)=punctual,_132),
     holdsForProcessedSDFluent(_112,driving_style(_112,_114)=uncomfortable,_150),
     intersect_all([_132,_150],_82).

holdsForSDFluent(driving_quality(_112,_114)=low,_82) :-
     holdsForProcessedSimpleFluent(_112,punctuality(_112,_114)=non_punctual,_132),
     holdsForProcessedSDFluent(_112,driving_style(_112,_114)=unsafe,_150),
     union_all([_132,_150],_82).

holdsForSDFluent(passenger_comfort(_112,_114)=reducing,_82) :-
     holdsForProcessedSDFluent(_112,driving_style(_112,_114)=uncomfortable,_132),
     holdsForProcessedSDFluent(_112,driving_style(_112,_114)=unsafe,_150),
     holdsForProcessedSimpleFluent(_112,passenger_density(_112,_114)=high,_168),
     holdsForProcessedSimpleFluent(_112,noise_level(_112,_114)=high,_186),
     holdsForProcessedSimpleFluent(_112,internal_temperature(_112,_114)=very_warm,_204),
     holdsForProcessedSimpleFluent(_112,internal_temperature(_112,_114)=very_cold,_222),
     union_all([_132,_150,_168,_186,_204,_222],_82).

holdsForSDFluent(driver_comfort(_112,_114)=reducing,_82) :-
     holdsForProcessedSDFluent(_112,driving_style(_112,_114)=uncomfortable,_132),
     holdsForProcessedSDFluent(_112,driving_style(_112,_114)=unsafe,_150),
     holdsForProcessedSimpleFluent(_112,noise_level(_112,_114)=high,_168),
     holdsForProcessedSimpleFluent(_112,internal_temperature(_112,_114)=very_warm,_186),
     holdsForProcessedSimpleFluent(_112,internal_temperature(_112,_114)=very_cold,_204),
     union_all([_132,_150,_168,_186,_204],_82).

holdsForSDFluent(passenger_satisfaction(_112,_114)=reducing,_82) :-
     holdsForProcessedSimpleFluent(_112,punctuality(_112,_114)=non_punctual,_132),
     holdsForProcessedSDFluent(_112,passenger_comfort(_112,_114)=reducing,_150),
     union_all([_132,_150],_82).

happensAtEv(punctuality_change(_100,_102,punctual),_82) :-
     happensAtProcessedSimpleFluent(_100,end(punctuality(_100,_102)=non_punctual),_82).

happensAtEv(punctuality_change(_100,_102,non_punctual),_82) :-
     happensAtProcessedSimpleFluent(_100,end(punctuality(_100,_102)=punctual),_82).

collectIntervals2(_86, abrupt_acceleration(_86,_88)=abrupt) :-
     vehicle(_86,_88).

collectIntervals2(_86, abrupt_acceleration(_86,_88)=very_abrupt) :-
     vehicle(_86,_88).

collectIntervals2(_86, abrupt_deceleration(_86,_88)=abrupt) :-
     vehicle(_86,_88).

collectIntervals2(_86, abrupt_deceleration(_86,_88)=very_abrupt) :-
     vehicle(_86,_88).

collectIntervals2(_86, sharp_turn(_86,_88)=sharp) :-
     vehicle(_86,_88).

collectIntervals2(_86, sharp_turn(_86,_88)=very_sharp) :-
     vehicle(_86,_88).

grounding(stop_enter(_436,_438,_440,_442)) :- 
     vehicle(_436,_438).

grounding(stop_leave(_436,_438,_440,_442)) :- 
     vehicle(_436,_438).

grounding(internal_temperature_change(_436,_438,_440)) :- 
     vehicle(_436,_438).

grounding(noise_level_change(_436,_438,_440)) :- 
     vehicle(_436,_438).

grounding(passenger_density_change(_436,_438,_440)) :- 
     vehicle(_436,_438).

grounding(punctuality_change(_436,_438,punctual)) :- 
     vehicle(_436,_438).

grounding(punctuality_change(_436,_438,non_punctual)) :- 
     vehicle(_436,_438).

grounding(abrupt_acceleration(_442,_444)=abrupt) :- 
     vehicle(_442,_444).

grounding(abrupt_acceleration(_442,_444)=very_abrupt) :- 
     vehicle(_442,_444).

grounding(abrupt_deceleration(_442,_444)=abrupt) :- 
     vehicle(_442,_444).

grounding(abrupt_deceleration(_442,_444)=very_abrupt) :- 
     vehicle(_442,_444).

grounding(sharp_turn(_442,_444)=sharp) :- 
     vehicle(_442,_444).

grounding(sharp_turn(_442,_444)=very_sharp) :- 
     vehicle(_442,_444).

grounding(punctuality(_442,_444)=punctual) :- 
     vehicle(_442,_444).

grounding(punctuality(_442,_444)=non_punctual) :- 
     vehicle(_442,_444).

grounding(passenger_density(_442,_444)=high) :- 
     vehicle(_442,_444).

grounding(noise_level(_442,_444)=high) :- 
     vehicle(_442,_444).

grounding(internal_temperature(_442,_444)=very_warm) :- 
     vehicle(_442,_444).

grounding(internal_temperature(_442,_444)=very_cold) :- 
     vehicle(_442,_444).

grounding(driving_style(_442,_444)=unsafe) :- 
     vehicle(_442,_444).

grounding(driving_style(_442,_444)=uncomfortable) :- 
     vehicle(_442,_444).

grounding(driving_quality(_442,_444)=high) :- 
     vehicle(_442,_444).

grounding(driving_quality(_442,_444)=medium) :- 
     vehicle(_442,_444).

grounding(driving_quality(_442,_444)=low) :- 
     vehicle(_442,_444).

grounding(passenger_comfort(_442,_444)=reducing) :- 
     vehicle(_442,_444).

grounding(driver_comfort(_442,_444)=reducing) :- 
     vehicle(_442,_444).

grounding(passenger_satisfaction(_442,_444)=reducing) :- 
     vehicle(_442,_444).

inputEntity(stop_enter(_142,_144,_146,_148)).
inputEntity(stop_leave(_142,_144,_146,_148)).
inputEntity(sharp_turn(_148,_150)=very_sharp).
inputEntity(abrupt_acceleration(_148,_150)=very_abrupt).
inputEntity(abrupt_deceleration(_148,_150)=very_abrupt).
inputEntity(sharp_turn(_148,_150)=sharp).
inputEntity(abrupt_acceleration(_148,_150)=abrupt).
inputEntity(abrupt_deceleration(_148,_150)=abrupt).
inputEntity(internal_temperature_change(_142,_144,_146)).
inputEntity(noise_level_change(_142,_144,_146)).
inputEntity(passenger_density_change(_142,_144,_146)).

outputEntity(punctuality(_276,_278)=punctual).
outputEntity(punctuality(_276,_278)=non_punctual).
outputEntity(passenger_density(_276,_278)=high).
outputEntity(noise_level(_276,_278)=high).
outputEntity(internal_temperature(_276,_278)=very_warm).
outputEntity(internal_temperature(_276,_278)=very_cold).
outputEntity(passenger_density(_276,_278)=low).
outputEntity(noise_level(_276,_278)=low).
outputEntity(internal_temperature(_276,_278)=normal).
outputEntity(driving_style(_276,_278)=unsafe).
outputEntity(driving_style(_276,_278)=uncomfortable).
outputEntity(driving_quality(_276,_278)=high).
outputEntity(driving_quality(_276,_278)=medium).
outputEntity(driving_quality(_276,_278)=low).
outputEntity(passenger_comfort(_276,_278)=reducing).
outputEntity(driver_comfort(_276,_278)=reducing).
outputEntity(passenger_satisfaction(_276,_278)=reducing).
outputEntity(punctuality_change(_270,_272,_274)).

event(punctuality_change(_440,_442,_444)).
event(stop_enter(_440,_442,_444,_446)).
event(stop_leave(_440,_442,_444,_446)).
event(internal_temperature_change(_440,_442,_444)).
event(noise_level_change(_440,_442,_444)).
event(passenger_density_change(_440,_442,_444)).

simpleFluent(punctuality(_544,_546)=punctual).
simpleFluent(punctuality(_544,_546)=non_punctual).
simpleFluent(passenger_density(_544,_546)=high).
simpleFluent(noise_level(_544,_546)=high).
simpleFluent(internal_temperature(_544,_546)=very_warm).
simpleFluent(internal_temperature(_544,_546)=very_cold).
simpleFluent(passenger_density(_544,_546)=low).
simpleFluent(noise_level(_544,_546)=low).
simpleFluent(internal_temperature(_544,_546)=normal).

sDFluent(driving_style(_660,_662)=unsafe).
sDFluent(driving_style(_660,_662)=uncomfortable).
sDFluent(driving_quality(_660,_662)=high).
sDFluent(driving_quality(_660,_662)=medium).
sDFluent(driving_quality(_660,_662)=low).
sDFluent(passenger_comfort(_660,_662)=reducing).
sDFluent(driver_comfort(_660,_662)=reducing).
sDFluent(passenger_satisfaction(_660,_662)=reducing).
sDFluent(sharp_turn(_660,_662)=very_sharp).
sDFluent(abrupt_acceleration(_660,_662)=very_abrupt).
sDFluent(abrupt_deceleration(_660,_662)=very_abrupt).
sDFluent(sharp_turn(_660,_662)=sharp).
sDFluent(abrupt_acceleration(_660,_662)=abrupt).
sDFluent(abrupt_deceleration(_660,_662)=abrupt).

index(punctuality_change(_746,_806,_808),_746).
index(stop_enter(_746,_806,_808,_810),_746).
index(stop_leave(_746,_806,_808,_810),_746).
index(internal_temperature_change(_746,_806,_808),_746).
index(noise_level_change(_746,_806,_808),_746).
index(passenger_density_change(_746,_806,_808),_746).
index(punctuality(_746,_812)=punctual,_746).
index(punctuality(_746,_812)=non_punctual,_746).
index(passenger_density(_746,_812)=high,_746).
index(noise_level(_746,_812)=high,_746).
index(internal_temperature(_746,_812)=very_warm,_746).
index(internal_temperature(_746,_812)=very_cold,_746).
index(passenger_density(_746,_812)=low,_746).
index(noise_level(_746,_812)=low,_746).
index(internal_temperature(_746,_812)=normal,_746).
index(driving_style(_746,_812)=unsafe,_746).
index(driving_style(_746,_812)=uncomfortable,_746).
index(driving_quality(_746,_812)=high,_746).
index(driving_quality(_746,_812)=medium,_746).
index(driving_quality(_746,_812)=low,_746).
index(passenger_comfort(_746,_812)=reducing,_746).
index(driver_comfort(_746,_812)=reducing,_746).
index(passenger_satisfaction(_746,_812)=reducing,_746).
index(sharp_turn(_746,_812)=very_sharp,_746).
index(abrupt_acceleration(_746,_812)=very_abrupt,_746).
index(abrupt_deceleration(_746,_812)=very_abrupt,_746).
index(sharp_turn(_746,_812)=sharp,_746).
index(abrupt_acceleration(_746,_812)=abrupt,_746).
index(abrupt_deceleration(_746,_812)=abrupt,_746).


cachingOrder2(_1358, punctuality(_1358,_1360)=non_punctual) :- % level in dependency graph: 1, processing order in component: 1
     vehicle(_1358,_1360).

cachingOrder2(_1376, punctuality(_1376,_1378)=punctual) :- % level in dependency graph: 1, processing order in component: 2
     vehicle(_1376,_1378).

cachingOrder2(_1334, passenger_density(_1334,_1336)=high) :- % level in dependency graph: 1, processing order in component: 1
     vehicle(_1334,_1336).

cachingOrder2(_1292, noise_level(_1292,_1294)=high) :- % level in dependency graph: 1, processing order in component: 1
     vehicle(_1292,_1294).

cachingOrder2(_1232, internal_temperature(_1232,_1234)=very_cold) :- % level in dependency graph: 1, processing order in component: 1
     vehicle(_1232,_1234).

cachingOrder2(_1250, internal_temperature(_1250,_1252)=very_warm) :- % level in dependency graph: 1, processing order in component: 2
     vehicle(_1250,_1252).

cachingOrder2(_1172, driving_style(_1172,_1174)=uncomfortable) :- % level in dependency graph: 1, processing order in component: 1
     vehicle(_1172,_1174).

cachingOrder2(_1190, driving_style(_1190,_1192)=unsafe) :- % level in dependency graph: 1, processing order in component: 2
     vehicle(_1190,_1192).

cachingOrder2(_2226, driving_quality(_2226,_2228)=low) :- % level in dependency graph: 2, processing order in component: 1
     vehicle(_2226,_2228).

cachingOrder2(_2244, driving_quality(_2244,_2246)=medium) :- % level in dependency graph: 2, processing order in component: 2
     vehicle(_2244,_2246).

cachingOrder2(_2262, driving_quality(_2262,_2264)=high) :- % level in dependency graph: 2, processing order in component: 3
     vehicle(_2262,_2264).

cachingOrder2(_2202, passenger_comfort(_2202,_2204)=reducing) :- % level in dependency graph: 2, processing order in component: 1
     vehicle(_2202,_2204).

cachingOrder2(_2178, driver_comfort(_2178,_2180)=reducing) :- % level in dependency graph: 2, processing order in component: 1
     vehicle(_2178,_2180).

cachingOrder2(_2152, punctuality_change(_2152,_2154,_2786)) :- % level in dependency graph: 2, processing order in component: 1
     vehicle(_2152,_2154).

cachingOrder2(_2872, passenger_satisfaction(_2872,_2874)=reducing) :- % level in dependency graph: 3, processing order in component: 1
     vehicle(_2872,_2874).

collectGrounds([stop_enter(_636,_638,_654,_656), stop_leave(_636,_638,_654,_656), sharp_turn(_636,_638)=very_sharp, abrupt_acceleration(_636,_638)=very_abrupt, abrupt_deceleration(_636,_638)=very_abrupt, sharp_turn(_636,_638)=sharp, abrupt_acceleration(_636,_638)=abrupt, abrupt_deceleration(_636,_638)=abrupt, internal_temperature_change(_636,_638,_654), noise_level_change(_636,_638,_654), passenger_density_change(_636,_638,_654)],vehicle(_636,_638)).

dgrounded(punctuality(_1266,_1268)=punctual, vehicle(_1266,_1268)).
dgrounded(punctuality(_1230,_1232)=non_punctual, vehicle(_1230,_1232)).
dgrounded(passenger_density(_1194,_1196)=high, vehicle(_1194,_1196)).
dgrounded(noise_level(_1158,_1160)=high, vehicle(_1158,_1160)).
dgrounded(internal_temperature(_1122,_1124)=very_warm, vehicle(_1122,_1124)).
dgrounded(internal_temperature(_1086,_1088)=very_cold, vehicle(_1086,_1088)).
dgrounded(driving_style(_1050,_1052)=unsafe, vehicle(_1050,_1052)).
dgrounded(driving_style(_1014,_1016)=uncomfortable, vehicle(_1014,_1016)).
dgrounded(driving_quality(_978,_980)=high, vehicle(_978,_980)).
dgrounded(driving_quality(_942,_944)=medium, vehicle(_942,_944)).
dgrounded(driving_quality(_906,_908)=low, vehicle(_906,_908)).
dgrounded(passenger_comfort(_870,_872)=reducing, vehicle(_870,_872)).
dgrounded(driver_comfort(_834,_836)=reducing, vehicle(_834,_836)).
dgrounded(passenger_satisfaction(_798,_800)=reducing, vehicle(_798,_800)).
dgrounded(punctuality_change(_760,_762,punctual), vehicle(_760,_762)).
dgrounded(punctuality_change(_728,_730,non_punctual), vehicle(_728,_730)).
