:- dynamic vessel/1, vpair/2.

initiatedAt(withinArea(_2496,_2498)=true, _2528, _2466, _2534) :-
     happensAtIE(entersArea(_2496,_2504),_2466),_2528=<_2466,_2466<_2534,
     areaType(_2504,_2498).

initiatedAt(gap(_2496)=nearPorts, _2536, _2466, _2542) :-
     happensAtIE(gap_start(_2496),_2466),_2536=<_2466,_2466<_2542,
     holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearPorts)=true,_2466).

initiatedAt(gap(_2496)=farFromPorts, _2540, _2466, _2546) :-
     happensAtIE(gap_start(_2496),_2466),_2540=<_2466,_2466<_2546,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearPorts)=true,_2466).

initiatedAt(stopped(_2496)=nearPorts, _2536, _2466, _2542) :-
     happensAtIE(stop_start(_2496),_2466),_2536=<_2466,_2466<_2542,
     holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearPorts)=true,_2466).

initiatedAt(stopped(_2496)=farFromPorts, _2540, _2466, _2546) :-
     happensAtIE(stop_start(_2496),_2466),_2540=<_2466,_2466<_2546,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearPorts)=true,_2466).

initiatedAt(lowSpeed(_2496)=true, _2512, _2466, _2518) :-
     happensAtIE(slow_motion_start(_2496),_2466),
     _2512=<_2466,
     _2466<_2518.

initiatedAt(changingSpeed(_2496)=true, _2512, _2466, _2518) :-
     happensAtIE(change_in_speed_start(_2496),_2466),
     _2512=<_2466,
     _2466<_2518.

initiatedAt(highSpeedNearCoast(_2496)=true, _2572, _2466, _2578) :-
     happensAtIE(velocity(_2496,_2502,_2504,_2506),_2466),_2572=<_2466,_2466<_2578,
     thresholds(hcNearCoastMax,_2518),
     \+inRange(_2502,0,_2518),
     holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466).

initiatedAt(movingSpeed(_2496)=below, _2572, _2466, _2578) :-
     happensAtIE(velocity(_2496,_2502,_2504,_2506),_2466),_2572=<_2466,_2466<_2578,
     vesselType(_2496,_2518),
     typeSpeed(_2518,_2524,_2526,_2528),
     thresholds(movingMin,_2534),
     inRange(_2502,_2534,_2524).

initiatedAt(movingSpeed(_2496)=normal, _2560, _2466, _2566) :-
     happensAtIE(velocity(_2496,_2502,_2504,_2506),_2466),_2560=<_2466,_2466<_2566,
     vesselType(_2496,_2518),
     typeSpeed(_2518,_2524,_2526,_2528),
     inRange(_2502,_2524,_2526).

initiatedAt(movingSpeed(_2496)=above, _2560, _2466, _2566) :-
     happensAtIE(velocity(_2496,_2502,_2504,_2506),_2466),_2560=<_2466,_2466<_2566,
     vesselType(_2496,_2518),
     typeSpeed(_2518,_2524,_2526,_2528),
     inRange(_2502,_2526,inf).

initiatedAt(drifting(_2496)=true, _2596, _2466, _2602) :-
     happensAtIE(velocity(_2496,_2502,_2504,_2506),_2466),_2596=<_2466,_2466<_2602,
     _2506=\=511.0,
     absoluteAngleDiff(_2504,_2506,_2532),
     thresholds(adriftAngThr,_2538),
     _2532>_2538,
     holdsAtProcessedSimpleFluent(_2496,underWay(_2496)=true,_2466).

initiatedAt(tuggingSpeed(_2496)=true, _2556, _2466, _2562) :-
     happensAtIE(velocity(_2496,_2502,_2504,_2506),_2466),_2556=<_2466,_2466<_2562,
     thresholds(tuggingMin,_2518),
     thresholds(tuggingMax,_2524),
     inRange(_2502,_2518,_2524).

initiatedAt(trawlSpeed(_2496)=true, _2580, _2466, _2586) :-
     happensAtIE(velocity(_2496,_2502,_2504,_2506),_2466),_2580=<_2466,_2466<_2586,
     thresholds(trawlspeedMin,_2518),
     thresholds(trawlspeedMax,_2524),
     inRange(_2502,_2518,_2524),
     holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,fishing)=true,_2466).

initiatedAt(trawlingMovement(_2496)=true, _2536, _2466, _2542) :-
     happensAtIE(change_in_heading(_2496),_2466),_2536=<_2466,_2466<_2542,
     holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,fishing)=true,_2466).

initiatedAt(sarSpeed(_2496)=true, _2544, _2466, _2550) :-
     happensAtIE(velocity(_2496,_2502,_2504,_2506),_2466),_2544=<_2466,_2466<_2550,
     thresholds(sarMinSpeed,_2518),
     inRange(_2502,_2518,inf).

initiatedAt(sarMovement(_2496)=true, _2512, _2466, _2518) :-
     happensAtIE(change_in_heading(_2496),_2466),
     _2512=<_2466,
     _2466<_2518.

initiatedAt(sarMovement(_2496)=true, _2522, _2466, _2528) :-
     happensAtProcessedSimpleFluent(_2496,start(changingSpeed(_2496)=true),_2466),
     _2522=<_2466,
     _2466<_2528.

initiatedAt(underWay(_2496)=true, _2528, _2466, _2534) :-
     happensAtProcessedSimpleFluent(_2496,start(movingSpeed(_2496)=below),_2466),_2528=<_2466,_2466<_2534.

initiatedAt(underWay(_2496)=true, _2528, _2466, _2534) :-
     happensAtProcessedSimpleFluent(_2496,start(movingSpeed(_2496)=normal),_2466),_2528=<_2466,_2466<_2534.

initiatedAt(underWay(_2496)=true, _2528, _2466, _2534) :-
     happensAtProcessedSimpleFluent(_2496,start(movingSpeed(_2496)=above),_2466),_2528=<_2466,_2466<_2534.

initiatedAt(inSAR(_2496)=true, _2554, _2466, _2560) :-
     happensAtProcessedSimpleFluent(_2496,start(sarSpeed(_2496)=true),_2466),_2554=<_2466,_2466<_2560,
     happensAtProcessedSimpleFluent(_2496,start(sarMovement(_2496)=true),_2466).

initiatedAt(inSAR(_2496)=true, _2580, _2466, _2586) :-
     happensAtProcessedSimpleFluent(_2496,start(sarSpeed(_2496)=true),_2466),_2580=<_2466,_2466<_2586,
     holdsAtProcessedSimpleFluent(_2496,sarMovement(_2496)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(sarMovement(_2496)=true),_2466).

initiatedAt(inSAR(_2496)=true, _2580, _2466, _2586) :-
     happensAtProcessedSimpleFluent(_2496,start(sarMovement(_2496)=true),_2466),_2580=<_2466,_2466<_2586,
     \+happensAtProcessedSimpleFluent(_2496,end(sarSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,sarSpeed(_2496)=true,_2466).

initiatedAt(anchoredOrMoored(_2496)=true, _2556, _2466, _2562) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2556=<_2466,_2466<_2562,
     happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,anchorage)=true),_2466).

initiatedAt(anchoredOrMoored(_2496)=true, _2584, _2466, _2590) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2584=<_2466,_2466<_2590,
     holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,anchorage)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,anchorage)=true),_2466).

initiatedAt(anchoredOrMoored(_2496)=true, _2582, _2466, _2588) :-
     happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,anchorage)=true),_2466),_2582=<_2466,_2466<_2588,
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(anchoredOrMoored(_2496)=true, _2528, _2466, _2534) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=nearPorts),_2466),_2528=<_2466,_2466<_2534.

initiatedAt(pilotOps(_2496,_2498)=true, _2640, _2466, _2646) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2640=<_2466,_2466<_2646,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2672, _2466, _2678) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2672=<_2466,_2466<_2678,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2672, _2466, _2678) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2672=<_2466,_2466<_2678,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2704, _2466, _2710) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2704=<_2466,_2466<_2710,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2668, _2466, _2674) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2668=<_2466,_2466<_2674,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2700, _2466, _2706) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2700=<_2466,_2466<_2706,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2700, _2466, _2706) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2700=<_2466,_2466<_2706,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2732, _2466, _2738) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2732=<_2466,_2466<_2738,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2666, _2466, _2672) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2666=<_2466,_2466<_2672,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2698=<_2466,_2466<_2704,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2698=<_2466,_2466<_2704,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2730, _2466, _2736) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2730=<_2466,_2466<_2736,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2694, _2466, _2700) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2694=<_2466,_2466<_2700,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2758, _2466, _2764) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2758=<_2466,_2466<_2764,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2666, _2466, _2672) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2666=<_2466,_2466<_2672,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2698=<_2466,_2466<_2704,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2698=<_2466,_2466<_2704,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2730, _2466, _2736) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2730=<_2466,_2466<_2736,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2694, _2466, _2700) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2694=<_2466,_2466<_2700,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2758, _2466, _2764) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2758=<_2466,_2466<_2764,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2692, _2466, _2698) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2692=<_2466,_2466<_2698,
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2724, _2466, _2730) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2724=<_2466,_2466<_2730,
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2724, _2466, _2730) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2724=<_2466,_2466<_2730,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2756, _2466, _2762) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2756=<_2466,_2466<_2762,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2720, _2466, _2726) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),_2720=<_2466,_2466<_2726,
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2752, _2466, _2758) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),_2752=<_2466,_2466<_2758,
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2752, _2466, _2758) :-
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),_2752=<_2466,_2466<_2758,
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2640, _2466, _2646) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2640=<_2466,_2466<_2646,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2672, _2466, _2678) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2672=<_2466,_2466<_2678,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2672, _2466, _2678) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2672=<_2466,_2466<_2678,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2704, _2466, _2710) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2704=<_2466,_2466<_2710,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2668, _2466, _2674) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2668=<_2466,_2466<_2674,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2700, _2466, _2706) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2700=<_2466,_2466<_2706,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2700, _2466, _2706) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2700=<_2466,_2466<_2706,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2732, _2466, _2738) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2732=<_2466,_2466<_2738,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2666, _2466, _2672) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2666=<_2466,_2466<_2672,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2698=<_2466,_2466<_2704,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2698=<_2466,_2466<_2704,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2730, _2466, _2736) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2730=<_2466,_2466<_2736,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2694, _2466, _2700) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2694=<_2466,_2466<_2700,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2758, _2466, _2764) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2758=<_2466,_2466<_2764,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2666, _2466, _2672) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2666=<_2466,_2466<_2672,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2698=<_2466,_2466<_2704,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2698=<_2466,_2466<_2704,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2730, _2466, _2736) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2730=<_2466,_2466<_2736,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2694, _2466, _2700) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2694=<_2466,_2466<_2700,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2758, _2466, _2764) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2758=<_2466,_2466<_2764,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2692, _2466, _2698) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2692=<_2466,_2466<_2698,
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2724, _2466, _2730) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2724=<_2466,_2466<_2730,
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2724, _2466, _2730) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2724=<_2466,_2466<_2730,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2756, _2466, _2762) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2756=<_2466,_2466<_2762,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2720, _2466, _2726) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),_2720=<_2466,_2466<_2726,
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2752, _2466, _2758) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),_2752=<_2466,_2466<_2758,
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2752, _2466, _2758) :-
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),_2752=<_2466,_2466<_2758,
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2640, _2466, _2646) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2640=<_2466,_2466<_2646,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2672, _2466, _2678) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2672=<_2466,_2466<_2678,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2672, _2466, _2678) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2672=<_2466,_2466<_2678,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2704, _2466, _2710) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2704=<_2466,_2466<_2710,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2668, _2466, _2674) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2668=<_2466,_2466<_2674,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2700, _2466, _2706) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2700=<_2466,_2466<_2706,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2700, _2466, _2706) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2700=<_2466,_2466<_2706,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2732, _2466, _2738) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2732=<_2466,_2466<_2738,
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2666, _2466, _2672) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2666=<_2466,_2466<_2672,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2698=<_2466,_2466<_2704,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2698=<_2466,_2466<_2704,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2730, _2466, _2736) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2730=<_2466,_2466<_2736,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2694, _2466, _2700) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2694=<_2466,_2466<_2700,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2758, _2466, _2764) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2758=<_2466,_2466<_2764,
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2666, _2466, _2672) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2666=<_2466,_2466<_2672,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2698=<_2466,_2466<_2704,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2698=<_2466,_2466<_2704,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2730, _2466, _2736) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2730=<_2466,_2466<_2736,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2694, _2466, _2700) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2694=<_2466,_2466<_2700,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2758, _2466, _2764) :-
     happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),_2758=<_2466,_2466<_2764,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2692, _2466, _2698) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2692=<_2466,_2466<_2698,
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2724, _2466, _2730) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2724=<_2466,_2466<_2730,
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2724, _2466, _2730) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2724=<_2466,_2466<_2730,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2756, _2466, _2762) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2756=<_2466,_2466<_2762,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2720, _2466, _2726) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),_2720=<_2466,_2466<_2726,
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2752, _2466, _2758) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),_2752=<_2466,_2466<_2758,
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2752, _2466, _2758) :-
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),_2752=<_2466,_2466<_2758,
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2640, _2466, _2646) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2640=<_2466,_2466<_2646,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2672, _2466, _2678) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2672=<_2466,_2466<_2678,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2672, _2466, _2678) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2672=<_2466,_2466<_2678,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2704, _2466, _2710) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2704=<_2466,_2466<_2710,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2668, _2466, _2674) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2668=<_2466,_2466<_2674,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2700, _2466, _2706) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2700=<_2466,_2466<_2706,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2700, _2466, _2706) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2700=<_2466,_2466<_2706,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2732, _2466, _2738) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2732=<_2466,_2466<_2738,
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2666, _2466, _2672) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2666=<_2466,_2466<_2672,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2698=<_2466,_2466<_2704,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2698=<_2466,_2466<_2704,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2730, _2466, _2736) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2730=<_2466,_2466<_2736,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2694, _2466, _2700) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2694=<_2466,_2466<_2700,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2758, _2466, _2764) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2758=<_2466,_2466<_2764,
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2666, _2466, _2672) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2666=<_2466,_2466<_2672,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2698=<_2466,_2466<_2704,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2698, _2466, _2704) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2698=<_2466,_2466<_2704,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2730, _2466, _2736) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2730=<_2466,_2466<_2736,
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2694, _2466, _2700) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2694=<_2466,_2466<_2700,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2726, _2466, _2732) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2726=<_2466,_2466<_2732,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2758, _2466, _2764) :-
     happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466),_2758=<_2466,_2466<_2764,
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2692, _2466, _2698) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2692=<_2466,_2466<_2698,
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2724, _2466, _2730) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2724=<_2466,_2466<_2730,
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2724, _2466, _2730) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2724=<_2466,_2466<_2730,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2756, _2466, _2762) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2756=<_2466,_2466<_2762,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2720, _2466, _2726) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),_2720=<_2466,_2466<_2726,
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2752, _2466, _2758) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),_2752=<_2466,_2466<_2758,
     \+holdsAtProcessedSimpleFluent(_2498,withinArea(_2498,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(pilotOps(_2496,_2498)=true, _2752, _2466, _2758) :-
     happensAtProcessedSimpleFluent(_2498,end(withinArea(_2498,nearCoast)=true),_2466),_2752=<_2466,_2466<_2758,
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(tugging(_2496,_2498)=true, _2584, _2466, _2590) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2584=<_2466,_2466<_2590,
     happensAtProcessedSimpleFluent(_2496,start(tuggingSpeed(_2496)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,start(tuggingSpeed(_2498)=true),_2466).

initiatedAt(tugging(_2496,_2498)=true, _2610, _2466, _2616) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2610=<_2466,_2466<_2616,
     happensAtProcessedSimpleFluent(_2496,start(tuggingSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,tuggingSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(tuggingSpeed(_2498)=true),_2466).

initiatedAt(tugging(_2496,_2498)=true, _2610, _2466, _2616) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2610=<_2466,_2466<_2616,
     holdsAtProcessedSimpleFluent(_2496,tuggingSpeed(_2496)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(tuggingSpeed(_2496)=true),_2466),
     happensAtProcessedSimpleFluent(_2498,start(tuggingSpeed(_2498)=true),_2466).

initiatedAt(tugging(_2496,_2498)=true, _2636, _2466, _2642) :-
     happensAtProcessedIE(_2496,start(proximity(_2496,_2498)=true),_2466),_2636=<_2466,_2466<_2642,
     holdsAtProcessedSimpleFluent(_2496,tuggingSpeed(_2496)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(tuggingSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2498,tuggingSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(tuggingSpeed(_2498)=true),_2466).

initiatedAt(tugging(_2496,_2498)=true, _2612, _2466, _2618) :-
     happensAtProcessedSimpleFluent(_2496,start(tuggingSpeed(_2496)=true),_2466),_2612=<_2466,_2466<_2618,
     happensAtProcessedSimpleFluent(_2498,start(tuggingSpeed(_2498)=true),_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466).

initiatedAt(tugging(_2496,_2498)=true, _2638, _2466, _2644) :-
     happensAtProcessedSimpleFluent(_2496,start(tuggingSpeed(_2496)=true),_2466),_2638=<_2466,_2466<_2644,
     holdsAtProcessedSimpleFluent(_2498,tuggingSpeed(_2498)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2498,end(tuggingSpeed(_2498)=true),_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466).

initiatedAt(tugging(_2496,_2498)=true, _2638, _2466, _2644) :-
     happensAtProcessedSimpleFluent(_2498,start(tuggingSpeed(_2498)=true),_2466),_2638=<_2466,_2466<_2644,
     \+happensAtProcessedSimpleFluent(_2496,end(tuggingSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,tuggingSpeed(_2496)=true,_2466),
     \+happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),
     holdsAtProcessedIE(_2496,proximity(_2496,_2498)=true,_2466).

initiatedAt(trawling(_2496)=true, _2554, _2466, _2560) :-
     happensAtProcessedSimpleFluent(_2496,start(trawlSpeed(_2496)=true),_2466),_2554=<_2466,_2466<_2560,
     happensAtProcessedSimpleFluent(_2496,start(trawlingMovement(_2496)=true),_2466).

initiatedAt(trawling(_2496)=true, _2580, _2466, _2586) :-
     happensAtProcessedSimpleFluent(_2496,start(trawlSpeed(_2496)=true),_2466),_2580=<_2466,_2466<_2586,
     holdsAtProcessedSimpleFluent(_2496,trawlingMovement(_2496)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(trawlingMovement(_2496)=true),_2466).

initiatedAt(trawling(_2496)=true, _2580, _2466, _2586) :-
     happensAtProcessedSimpleFluent(_2496,start(trawlingMovement(_2496)=true),_2466),_2580=<_2466,_2466<_2586,
     \+happensAtProcessedSimpleFluent(_2496,end(trawlSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,trawlSpeed(_2496)=true,_2466).

initiatedAt(loitering(_2496)=true, _2582, _2466, _2588) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2582=<_2466,_2466<_2588,
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(anchoredOrMoored(_2496)=true),_2466).

initiatedAt(loitering(_2496)=true, _2612, _2466, _2618) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2612=<_2466,_2466<_2618,
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,anchoredOrMoored(_2496)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(anchoredOrMoored(_2496)=true),_2466).

initiatedAt(loitering(_2496)=true, _2614, _2466, _2620) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2614=<_2466,_2466<_2620,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(anchoredOrMoored(_2496)=true),_2466).

initiatedAt(loitering(_2496)=true, _2644, _2466, _2650) :-
     happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),_2644=<_2466,_2466<_2650,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,anchoredOrMoored(_2496)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(anchoredOrMoored(_2496)=true),_2466).

initiatedAt(loitering(_2496)=true, _2608, _2466, _2614) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),_2608=<_2466,_2466<_2614,
     happensAtProcessedSimpleFluent(_2496,end(anchoredOrMoored(_2496)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(loitering(_2496)=true, _2638, _2466, _2644) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),_2638=<_2466,_2466<_2644,
     \+holdsAtProcessedSimpleFluent(_2496,anchoredOrMoored(_2496)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(anchoredOrMoored(_2496)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(loitering(_2496)=true, _2640, _2466, _2646) :-
     happensAtProcessedSimpleFluent(_2496,end(anchoredOrMoored(_2496)=true),_2466),_2640=<_2466,_2466<_2646,
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),
     holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

initiatedAt(loitering(_2496)=true, _2582, _2466, _2588) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2582=<_2466,_2466<_2588,
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(anchoredOrMoored(_2496)=true),_2466).

initiatedAt(loitering(_2496)=true, _2612, _2466, _2618) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2612=<_2466,_2466<_2618,
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,anchoredOrMoored(_2496)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(anchoredOrMoored(_2496)=true),_2466).

initiatedAt(loitering(_2496)=true, _2614, _2466, _2620) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2614=<_2466,_2466<_2620,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     happensAtProcessedSimpleFluent(_2496,end(anchoredOrMoored(_2496)=true),_2466).

initiatedAt(loitering(_2496)=true, _2644, _2466, _2650) :-
     happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466),_2644=<_2466,_2466<_2650,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,anchoredOrMoored(_2496)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(anchoredOrMoored(_2496)=true),_2466).

initiatedAt(loitering(_2496)=true, _2608, _2466, _2614) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),_2608=<_2466,_2466<_2614,
     happensAtProcessedSimpleFluent(_2496,end(anchoredOrMoored(_2496)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(loitering(_2496)=true, _2638, _2466, _2644) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),_2638=<_2466,_2466<_2644,
     \+holdsAtProcessedSimpleFluent(_2496,anchoredOrMoored(_2496)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(anchoredOrMoored(_2496)=true),_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

initiatedAt(loitering(_2496)=true, _2640, _2466, _2646) :-
     happensAtProcessedSimpleFluent(_2496,end(anchoredOrMoored(_2496)=true),_2466),_2640=<_2466,_2466<_2646,
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,nearCoast)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),
     holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466).

terminatedAt(withinArea(_2496,_2498)=true, _2528, _2466, _2534) :-
     happensAtIE(leavesArea(_2496,_2504),_2466),_2528=<_2466,_2466<_2534,
     areaType(_2504,_2498).

terminatedAt(withinArea(_2496,_2498)=true, _2514, _2466, _2520) :-
     happensAtIE(gap_start(_2496),_2466),
     _2514=<_2466,
     _2466<_2520.

terminatedAt(gap(_2496)=_2472, _2512, _2466, _2518) :-
     happensAtIE(gap_end(_2496),_2466),
     _2512=<_2466,
     _2466<_2518.

terminatedAt(stopped(_2496)=_2472, _2512, _2466, _2518) :-
     happensAtIE(stop_end(_2496),_2466),
     _2512=<_2466,
     _2466<_2518.

terminatedAt(stopped(_2496)=_2472, _2522, _2466, _2528) :-
     happensAtProcessedSimpleFluent(_2496,start(gap(_2496)=_2506),_2466),
     _2522=<_2466,
     _2466<_2528.

terminatedAt(lowSpeed(_2496)=true, _2512, _2466, _2518) :-
     happensAtIE(slow_motion_end(_2496),_2466),
     _2512=<_2466,
     _2466<_2518.

terminatedAt(lowSpeed(_2496)=true, _2522, _2466, _2528) :-
     happensAtProcessedSimpleFluent(_2496,start(gap(_2496)=_2506),_2466),
     _2522=<_2466,
     _2466<_2528.

terminatedAt(changingSpeed(_2496)=true, _2512, _2466, _2518) :-
     happensAtIE(change_in_speed_end(_2496),_2466),
     _2512=<_2466,
     _2466<_2518.

terminatedAt(changingSpeed(_2496)=true, _2522, _2466, _2528) :-
     happensAtProcessedSimpleFluent(_2496,start(gap(_2496)=_2506),_2466),
     _2522=<_2466,
     _2466<_2528.

terminatedAt(highSpeedNearCoast(_2496)=true, _2544, _2466, _2550) :-
     happensAtIE(velocity(_2496,_2502,_2504,_2506),_2466),_2544=<_2466,_2466<_2550,
     thresholds(hcNearCoastMax,_2518),
     inRange(_2502,0,_2518).

terminatedAt(highSpeedNearCoast(_2496)=true, _2524, _2466, _2530) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,nearCoast)=true),_2466),
     _2524=<_2466,
     _2466<_2530.

terminatedAt(movingSpeed(_2496)=_2472, _2548, _2466, _2554) :-
     happensAtIE(velocity(_2496,_2502,_2504,_2506),_2466),_2548=<_2466,_2466<_2554,
     thresholds(movingMin,_2518),
     \+inRange(_2502,_2518,inf).

terminatedAt(movingSpeed(_2496)=_2472, _2522, _2466, _2528) :-
     happensAtProcessedSimpleFluent(_2496,start(gap(_2496)=_2506),_2466),
     _2522=<_2466,
     _2466<_2528.

terminatedAt(drifting(_2496)=true, _2556, _2466, _2562) :-
     happensAtIE(velocity(_2496,_2502,_2504,_2506),_2466),_2556=<_2466,_2466<_2562,
     absoluteAngleDiff(_2504,_2506,_2520),
     thresholds(adriftAngThr,_2526),
     _2520=<_2526.

terminatedAt(drifting(_2496)=true, _2524, _2466, _2530) :-
     happensAtIE(velocity(_2496,_2502,_2504,511.0),_2466),
     _2524=<_2466,
     _2466<_2530.

terminatedAt(drifting(_2496)=true, _2522, _2466, _2528) :-
     happensAtProcessedSimpleFluent(_2496,end(underWay(_2496)=true),_2466),
     _2522=<_2466,
     _2466<_2528.

terminatedAt(tuggingSpeed(_2496)=true, _2560, _2466, _2566) :-
     happensAtIE(velocity(_2496,_2502,_2504,_2506),_2466),_2560=<_2466,_2466<_2566,
     thresholds(tuggingMin,_2518),
     thresholds(tuggingMax,_2524),
     \+inRange(_2502,_2518,_2524).

terminatedAt(tuggingSpeed(_2496)=true, _2522, _2466, _2528) :-
     happensAtProcessedSimpleFluent(_2496,start(gap(_2496)=_2506),_2466),
     _2522=<_2466,
     _2466<_2528.

terminatedAt(trawlSpeed(_2496)=true, _2560, _2466, _2566) :-
     happensAtIE(velocity(_2496,_2502,_2504,_2506),_2466),_2560=<_2466,_2466<_2566,
     thresholds(trawlspeedMin,_2518),
     thresholds(trawlspeedMax,_2524),
     \+inRange(_2502,_2518,_2524).

terminatedAt(trawlSpeed(_2496)=true, _2522, _2466, _2528) :-
     happensAtProcessedSimpleFluent(_2496,start(gap(_2496)=_2506),_2466),
     _2522=<_2466,
     _2466<_2528.

terminatedAt(trawlSpeed(_2496)=true, _2524, _2466, _2530) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,fishing)=true),_2466),
     _2524=<_2466,
     _2466<_2530.

terminatedAt(trawlingMovement(_2496)=true, _2524, _2466, _2530) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,fishing)=true),_2466),
     _2524=<_2466,
     _2466<_2530.

terminatedAt(sarSpeed(_2496)=true, _2544, _2466, _2550) :-
     happensAtIE(velocity(_2496,_2502,_2504,_2506),_2466),_2544=<_2466,_2466<_2550,
     thresholds(sarMinSpeed,_2518),
     inRange(_2502,0,_2518).

terminatedAt(sarSpeed(_2496)=true, _2522, _2466, _2528) :-
     happensAtProcessedSimpleFluent(_2496,start(gap(_2496)=_2506),_2466),
     _2522=<_2466,
     _2466<_2528.

terminatedAt(sarMovement(_2496)=true, _2522, _2466, _2528) :-
     happensAtProcessedSimpleFluent(_2496,start(gap(_2496)=_2506),_2466),
     _2522=<_2466,
     _2466<_2528.

terminatedAt(underWay(_2496)=true, _2580, _2466, _2586) :-
     happensAtProcessedSimpleFluent(_2496,end(movingSpeed(_2496)=below),_2466),_2580=<_2466,_2466<_2586,
     happensAtProcessedSimpleFluent(_2496,end(movingSpeed(_2496)=normal),_2466),
     happensAtProcessedSimpleFluent(_2496,end(movingSpeed(_2496)=above),_2466).

terminatedAt(underWay(_2496)=true, _2610, _2466, _2616) :-
     happensAtProcessedSimpleFluent(_2496,end(movingSpeed(_2496)=below),_2466),_2610=<_2466,_2466<_2616,
     happensAtProcessedSimpleFluent(_2496,end(movingSpeed(_2496)=normal),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,movingSpeed(_2496)=above,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(movingSpeed(_2496)=above),_2466).

terminatedAt(underWay(_2496)=true, _2610, _2466, _2616) :-
     happensAtProcessedSimpleFluent(_2496,end(movingSpeed(_2496)=below),_2466),_2610=<_2466,_2466<_2616,
     \+holdsAtProcessedSimpleFluent(_2496,movingSpeed(_2496)=normal,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(movingSpeed(_2496)=normal),_2466),
     happensAtProcessedSimpleFluent(_2496,end(movingSpeed(_2496)=above),_2466).

terminatedAt(underWay(_2496)=true, _2640, _2466, _2646) :-
     happensAtProcessedSimpleFluent(_2496,end(movingSpeed(_2496)=below),_2466),_2640=<_2466,_2466<_2646,
     \+holdsAtProcessedSimpleFluent(_2496,movingSpeed(_2496)=normal,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(movingSpeed(_2496)=normal),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,movingSpeed(_2496)=above,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(movingSpeed(_2496)=above),_2466).

terminatedAt(underWay(_2496)=true, _2610, _2466, _2616) :-
     happensAtProcessedSimpleFluent(_2496,end(movingSpeed(_2496)=normal),_2466),_2610=<_2466,_2466<_2616,
     happensAtProcessedSimpleFluent(_2496,end(movingSpeed(_2496)=above),_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(movingSpeed(_2496)=below),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,movingSpeed(_2496)=below,_2466).

terminatedAt(underWay(_2496)=true, _2640, _2466, _2646) :-
     happensAtProcessedSimpleFluent(_2496,end(movingSpeed(_2496)=normal),_2466),_2640=<_2466,_2466<_2646,
     \+holdsAtProcessedSimpleFluent(_2496,movingSpeed(_2496)=above,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(movingSpeed(_2496)=above),_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(movingSpeed(_2496)=below),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,movingSpeed(_2496)=below,_2466).

terminatedAt(underWay(_2496)=true, _2640, _2466, _2646) :-
     happensAtProcessedSimpleFluent(_2496,end(movingSpeed(_2496)=above),_2466),_2640=<_2466,_2466<_2646,
     \+happensAtProcessedSimpleFluent(_2496,start(movingSpeed(_2496)=normal),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,movingSpeed(_2496)=normal,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(movingSpeed(_2496)=below),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,movingSpeed(_2496)=below,_2466).

terminatedAt(inSAR(_2496)=true, _2528, _2466, _2534) :-
     happensAtProcessedSimpleFluent(_2496,end(sarSpeed(_2496)=true),_2466),_2528=<_2466,_2466<_2534.

terminatedAt(inSAR(_2496)=true, _2528, _2466, _2534) :-
     happensAtProcessedSimpleFluent(_2496,end(sarMovement(_2496)=true),_2466),_2528=<_2466,_2466<_2534.

terminatedAt(anchoredOrMoored(_2496)=true, _2554, _2466, _2560) :-
     happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=nearPorts),_2466),_2554=<_2466,_2466<_2560,
     happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466).

terminatedAt(anchoredOrMoored(_2496)=true, _2584, _2466, _2590) :-
     happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=nearPorts),_2466),_2584=<_2466,_2466<_2590,
     \+holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466).

terminatedAt(anchoredOrMoored(_2496)=true, _2584, _2466, _2590) :-
     happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),_2584=<_2466,_2466<_2590,
     \+happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=nearPorts),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=nearPorts,_2466).

terminatedAt(anchoredOrMoored(_2496)=true, _2556, _2466, _2562) :-
     happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=nearPorts),_2466),_2556=<_2466,_2466<_2562,
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,anchorage)=true),_2466).

terminatedAt(anchoredOrMoored(_2496)=true, _2588, _2466, _2594) :-
     happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=nearPorts),_2466),_2588=<_2466,_2466<_2594,
     \+holdsAtProcessedSimpleFluent(_2496,withinArea(_2496,anchorage)=true,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,anchorage)=true),_2466).

terminatedAt(anchoredOrMoored(_2496)=true, _2586, _2466, _2592) :-
     happensAtProcessedSimpleFluent(_2496,end(withinArea(_2496,anchorage)=true),_2466),_2586=<_2466,_2466<_2592,
     \+happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=nearPorts),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=nearPorts,_2466).

terminatedAt(pilotOps(_2496,_2498)=true, _2556, _2466, _2562) :-
     happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),_2556=<_2466,_2466<_2562,
     happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466).

terminatedAt(pilotOps(_2496,_2498)=true, _2586, _2466, _2592) :-
     happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),_2586=<_2466,_2466<_2592,
     \+holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466).

terminatedAt(pilotOps(_2496,_2498)=true, _2586, _2466, _2592) :-
     happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),_2586=<_2466,_2466<_2592,
     \+happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

terminatedAt(pilotOps(_2496,_2498)=true, _2556, _2466, _2562) :-
     happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),_2556=<_2466,_2466<_2562,
     happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466).

terminatedAt(pilotOps(_2496,_2498)=true, _2586, _2466, _2592) :-
     happensAtProcessedSimpleFluent(_2498,end(lowSpeed(_2498)=true),_2466),_2586=<_2466,_2466<_2592,
     \+holdsAtProcessedSimpleFluent(_2498,stopped(_2498)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2498,start(stopped(_2498)=farFromPorts),_2466).

terminatedAt(pilotOps(_2496,_2498)=true, _2586, _2466, _2592) :-
     happensAtProcessedSimpleFluent(_2498,end(stopped(_2498)=farFromPorts),_2466),_2586=<_2466,_2466<_2592,
     \+happensAtProcessedSimpleFluent(_2498,start(lowSpeed(_2498)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2498,lowSpeed(_2498)=true,_2466).

terminatedAt(pilotOps(_2496,_2498)=true, _2532, _2466, _2538) :-
     happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),_2532=<_2466,_2466<_2538.

terminatedAt(pilotOps(_2496,_2498)=true, _2532, _2466, _2538) :-
     happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),_2532=<_2466,_2466<_2538.

terminatedAt(pilotOps(_2496,_2498)=true, _2532, _2466, _2538) :-
     happensAtProcessedSimpleFluent(_2498,start(withinArea(_2498,nearCoast)=true),_2466),_2532=<_2466,_2466<_2538.

terminatedAt(tugging(_2496,_2498)=true, _2532, _2466, _2538) :-
     happensAtProcessedIE(_2496,end(proximity(_2496,_2498)=true),_2466),_2532=<_2466,_2466<_2538.

terminatedAt(tugging(_2496,_2498)=true, _2530, _2466, _2536) :-
     happensAtProcessedSimpleFluent(_2496,end(tuggingSpeed(_2496)=true),_2466),_2530=<_2466,_2466<_2536.

terminatedAt(tugging(_2496,_2498)=true, _2530, _2466, _2536) :-
     happensAtProcessedSimpleFluent(_2498,end(tuggingSpeed(_2498)=true),_2466),_2530=<_2466,_2466<_2536.

terminatedAt(trawling(_2496)=true, _2528, _2466, _2534) :-
     happensAtProcessedSimpleFluent(_2496,end(trawlSpeed(_2496)=true),_2466),_2528=<_2466,_2466<_2534.

terminatedAt(trawling(_2496)=true, _2528, _2466, _2534) :-
     happensAtProcessedSimpleFluent(_2496,end(trawlingMovement(_2496)=true),_2466),_2528=<_2466,_2466<_2534.

terminatedAt(loitering(_2496)=true, _2554, _2466, _2560) :-
     happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),_2554=<_2466,_2466<_2560,
     happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466).

terminatedAt(loitering(_2496)=true, _2584, _2466, _2590) :-
     happensAtProcessedSimpleFluent(_2496,end(lowSpeed(_2496)=true),_2466),_2584=<_2466,_2466<_2590,
     \+holdsAtProcessedSimpleFluent(_2496,stopped(_2496)=farFromPorts,_2466),
     \+happensAtProcessedSimpleFluent(_2496,start(stopped(_2496)=farFromPorts),_2466).

terminatedAt(loitering(_2496)=true, _2584, _2466, _2590) :-
     happensAtProcessedSimpleFluent(_2496,end(stopped(_2496)=farFromPorts),_2466),_2584=<_2466,_2466<_2590,
     \+happensAtProcessedSimpleFluent(_2496,start(lowSpeed(_2496)=true),_2466),
     \+holdsAtProcessedSimpleFluent(_2496,lowSpeed(_2496)=true,_2466).

terminatedAt(loitering(_2496)=true, _2530, _2466, _2536) :-
     happensAtProcessedSimpleFluent(_2496,start(withinArea(_2496,nearCoast)=true),_2466),_2530=<_2466,_2466<_2536.

terminatedAt(loitering(_2496)=true, _2528, _2466, _2534) :-
     happensAtProcessedSimpleFluent(_2496,start(anchoredOrMoored(_2496)=true),_2466),_2528=<_2466,_2466<_2534.

fi(trawlingMovement(_2506)=true,trawlingMovement(_2506)=false,_2468):-
     thresholds(trawlingCrs,_2468),
     grounding(trawlingMovement(_2506)=true),
     grounding(trawlingMovement(_2506)=false).

fi(sarMovement(_2500)=true,sarMovement(_2500)=false,1800):-
     grounding(sarMovement(_2500)=true),
     grounding(sarMovement(_2500)=false).

collectIntervals2(_2470, proximity(_2470,_2472)=true) :-
     vpair(_2470,_2472).

needsGrounding(_2656,_2658,_2660) :- 
     fail.

grounding(change_in_speed_start(_2838)) :- 
     vessel(_2838).

grounding(change_in_speed_end(_2838)) :- 
     vessel(_2838).

grounding(change_in_heading(_2838)) :- 
     vessel(_2838).

grounding(stop_start(_2838)) :- 
     vessel(_2838).

grounding(stop_end(_2838)) :- 
     vessel(_2838).

grounding(slow_motion_start(_2838)) :- 
     vessel(_2838).

grounding(slow_motion_end(_2838)) :- 
     vessel(_2838).

grounding(gap_start(_2838)) :- 
     vessel(_2838).

grounding(gap_end(_2838)) :- 
     vessel(_2838).

grounding(entersArea(_2838,_2840)) :- 
     vessel(_2838),areaType(_2840).

grounding(leavesArea(_2838,_2840)) :- 
     vessel(_2838),areaType(_2840).

grounding(coord(_2838,_2840,_2842)) :- 
     vessel(_2838).

grounding(velocity(_2838,_2840,_2842,_2844)) :- 
     vessel(_2838).

grounding(proximity(_2844,_2846)=true) :- 
     vpair(_2844,_2846).

grounding(gap(_2844)=_2840) :- 
     vessel(_2844),portStatus(_2840).

grounding(stopped(_2844)=_2840) :- 
     vessel(_2844),portStatus(_2840).

grounding(lowSpeed(_2844)=true) :- 
     vessel(_2844).

grounding(changingSpeed(_2844)=true) :- 
     vessel(_2844).

grounding(withinArea(_2844,_2846)=true) :- 
     vessel(_2844),areaType(_2846).

grounding(underWay(_2844)=true) :- 
     vessel(_2844).

grounding(sarSpeed(_2844)=true) :- 
     vessel(_2844),vesselType(_2844,sar).

grounding(sarMovement(_2844)=true) :- 
     vessel(_2844),vesselType(_2844,sar).

grounding(sarMovement(_2844)=false) :- 
     vessel(_2844),vesselType(_2844,sar).

grounding(inSAR(_2844)=true) :- 
     vessel(_2844).

grounding(highSpeedNearCoast(_2844)=true) :- 
     vessel(_2844).

grounding(drifting(_2844)=true) :- 
     vessel(_2844).

grounding(anchoredOrMoored(_2844)=true) :- 
     vessel(_2844).

grounding(trawlSpeed(_2844)=true) :- 
     vessel(_2844),vesselType(_2844,fishing).

grounding(movingSpeed(_2844)=_2840) :- 
     vessel(_2844),movingStatus(_2840).

grounding(pilotOps(_2844,_2846)=true) :- 
     vpair(_2844,_2846).

grounding(tuggingSpeed(_2844)=true) :- 
     vessel(_2844).

grounding(tugging(_2844,_2846)=true) :- 
     vpair(_2844,_2846).

grounding(rendezVous(_2844,_2846)=true) :- 
     vpair(_2844,_2846).

grounding(trawlingMovement(_2844)=true) :- 
     vessel(_2844),vesselType(_2844,fishing).

grounding(trawlingMovement(_2844)=false) :- 
     vessel(_2844),vesselType(_2844,fishing).

grounding(trawling(_2844)=true) :- 
     vessel(_2844).

grounding(loitering(_2844)=true) :- 
     vessel(_2844).

p(trawlingMovement(_2838)=true).

p(sarMovement(_2838)=true).

inputEntity(entersArea(_2526,_2528)).
inputEntity(gap_start(_2526)).
inputEntity(stop_start(_2526)).
inputEntity(slow_motion_start(_2526)).
inputEntity(change_in_speed_start(_2526)).
inputEntity(velocity(_2526,_2528,_2530,_2532)).
inputEntity(change_in_heading(_2526)).
inputEntity(leavesArea(_2526,_2528)).
inputEntity(gap_end(_2526)).
inputEntity(stop_end(_2526)).
inputEntity(slow_motion_end(_2526)).
inputEntity(change_in_speed_end(_2526)).
inputEntity(negation(movingSpeed(_2536)=below)).
inputEntity(negation(movingSpeed(_2536)=normal)).
inputEntity(negation(movingSpeed(_2536)=above)).
inputEntity(negation(stopped(_2536)=nearPorts)).
inputEntity(negation(stopped(_2536)=farFromPorts)).
inputEntity(negation(withinArea(_2536,_2538)=true)).
inputEntity(proximity(_2532,_2534)=true).
inputEntity(negation(proximity(_2536,_2538)=true)).
inputEntity(negation(tuggingSpeed(_2536)=true)).
inputEntity(negation(trawlSpeed(_2536)=true)).
inputEntity(negation(trawlingMovement(_2536)=true)).
inputEntity(negation(sarSpeed(_2536)=true)).
inputEntity(negation(sarMovement(_2536)=true)).
inputEntity(negation(lowSpeed(_2536)=true)).
inputEntity(coord(_2526,_2528,_2530)).
inputEntity(rendezVous(_2532,_2534)=true).

outputEntity(withinArea(_2762,_2764)=true).
outputEntity(gap(_2762)=nearPorts).
outputEntity(gap(_2762)=farFromPorts).
outputEntity(stopped(_2762)=nearPorts).
outputEntity(stopped(_2762)=farFromPorts).
outputEntity(lowSpeed(_2762)=true).
outputEntity(changingSpeed(_2762)=true).
outputEntity(highSpeedNearCoast(_2762)=true).
outputEntity(movingSpeed(_2762)=below).
outputEntity(movingSpeed(_2762)=normal).
outputEntity(movingSpeed(_2762)=above).
outputEntity(drifting(_2762)=true).
outputEntity(tuggingSpeed(_2762)=true).
outputEntity(trawlSpeed(_2762)=true).
outputEntity(trawlingMovement(_2762)=true).
outputEntity(sarSpeed(_2762)=true).
outputEntity(sarMovement(_2762)=true).
outputEntity(trawlingMovement(_2762)=false).
outputEntity(sarMovement(_2762)=false).
outputEntity(underWay(_2762)=true).
outputEntity(anchoredOrMoored(_2762)=true).
outputEntity(tugging(_2762,_2764)=true).
outputEntity(trawling(_2762)=true).
outputEntity(inSAR(_2762)=true).
outputEntity(loitering(_2762)=true).
outputEntity(pilotOps(_2762,_2764)=true).

event(entersArea(_2974,_2976)).
event(gap_start(_2974)).
event(stop_start(_2974)).
event(slow_motion_start(_2974)).
event(change_in_speed_start(_2974)).
event(velocity(_2974,_2976,_2978,_2980)).
event(change_in_heading(_2974)).
event(leavesArea(_2974,_2976)).
event(gap_end(_2974)).
event(stop_end(_2974)).
event(slow_motion_end(_2974)).
event(change_in_speed_end(_2974)).
event(coord(_2974,_2976,_2978)).

simpleFluent(withinArea(_3120,_3122)=true).
simpleFluent(gap(_3120)=nearPorts).
simpleFluent(gap(_3120)=farFromPorts).
simpleFluent(stopped(_3120)=nearPorts).
simpleFluent(stopped(_3120)=farFromPorts).
simpleFluent(lowSpeed(_3120)=true).
simpleFluent(changingSpeed(_3120)=true).
simpleFluent(highSpeedNearCoast(_3120)=true).
simpleFluent(movingSpeed(_3120)=below).
simpleFluent(movingSpeed(_3120)=normal).
simpleFluent(movingSpeed(_3120)=above).
simpleFluent(drifting(_3120)=true).
simpleFluent(tuggingSpeed(_3120)=true).
simpleFluent(trawlSpeed(_3120)=true).
simpleFluent(trawlingMovement(_3120)=true).
simpleFluent(sarSpeed(_3120)=true).
simpleFluent(sarMovement(_3120)=true).
simpleFluent(trawlingMovement(_3120)=false).
simpleFluent(sarMovement(_3120)=false).
simpleFluent(underWay(_3120)=true).
simpleFluent(inSAR(_3120)=true).
simpleFluent(anchoredOrMoored(_3120)=true).
simpleFluent(pilotOps(_3120,_3122)=true).
simpleFluent(tugging(_3120,_3122)=true).
simpleFluent(trawling(_3120)=true).
simpleFluent(loitering(_3120)=true).

translatableSF(underWay(_3338)=true).
translatableSF(inSAR(_3338)=true).
translatableSF(anchoredOrMoored(_3338)=true).
translatableSF(pilotOps(_3338,_3340)=true).
translatableSF(tugging(_3338,_3340)=true).
translatableSF(trawling(_3338)=true).
translatableSF(loitering(_3338)=true).

sDFluent(negation(movingSpeed(_3446)=below)).
sDFluent(negation(movingSpeed(_3446)=normal)).
sDFluent(negation(movingSpeed(_3446)=above)).
sDFluent(negation(stopped(_3446)=nearPorts)).
sDFluent(negation(stopped(_3446)=farFromPorts)).
sDFluent(negation(withinArea(_3446,_3448)=true)).
sDFluent(proximity(_3442,_3444)=true).
sDFluent(negation(proximity(_3446,_3448)=true)).
sDFluent(negation(tuggingSpeed(_3446)=true)).
sDFluent(negation(trawlSpeed(_3446)=true)).
sDFluent(negation(trawlingMovement(_3446)=true)).
sDFluent(negation(sarSpeed(_3446)=true)).
sDFluent(negation(sarMovement(_3446)=true)).
sDFluent(negation(lowSpeed(_3446)=true)).
sDFluent(rendezVous(_3442,_3444)=true).

index(entersArea(_3534,_3594),_3534).
index(gap_start(_3534),_3534).
index(stop_start(_3534),_3534).
index(slow_motion_start(_3534),_3534).
index(change_in_speed_start(_3534),_3534).
index(velocity(_3534,_3594,_3596,_3598),_3534).
index(change_in_heading(_3534),_3534).
index(leavesArea(_3534,_3594),_3534).
index(gap_end(_3534),_3534).
index(stop_end(_3534),_3534).
index(slow_motion_end(_3534),_3534).
index(change_in_speed_end(_3534),_3534).
index(coord(_3534,_3594,_3596),_3534).
index(withinArea(_3534,_3600)=true,_3534).
index(gap(_3534)=nearPorts,_3534).
index(gap(_3534)=farFromPorts,_3534).
index(stopped(_3534)=nearPorts,_3534).
index(stopped(_3534)=farFromPorts,_3534).
index(lowSpeed(_3534)=true,_3534).
index(changingSpeed(_3534)=true,_3534).
index(highSpeedNearCoast(_3534)=true,_3534).
index(movingSpeed(_3534)=below,_3534).
index(movingSpeed(_3534)=normal,_3534).
index(movingSpeed(_3534)=above,_3534).
index(drifting(_3534)=true,_3534).
index(tuggingSpeed(_3534)=true,_3534).
index(trawlSpeed(_3534)=true,_3534).
index(trawlingMovement(_3534)=true,_3534).
index(sarSpeed(_3534)=true,_3534).
index(sarMovement(_3534)=true,_3534).
index(trawlingMovement(_3534)=false,_3534).
index(sarMovement(_3534)=false,_3534).
index(underWay(_3534)=true,_3534).
index(inSAR(_3534)=true,_3534).
index(anchoredOrMoored(_3534)=true,_3534).
index(pilotOps(_3534,_3600)=true,_3534).
index(tugging(_3534,_3600)=true,_3534).
index(trawling(_3534)=true,_3534).
index(loitering(_3534)=true,_3534).
index(proximity(_3534,_3600)=true,_3534).
index(rendezVous(_3534,_3600)=true,_3534).


cachingOrder2(_4032, withinArea(_4032,_4034)=true) :- % level in dependency graph: 1, processing order in component: 1
     vessel(_4032),areaType(_4034).

cachingOrder2(_4266, gap(_4266)=farFromPorts) :- % level in dependency graph: 2, processing order in component: 1
     vessel(_4266),portStatus(farFromPorts).

cachingOrder2(_4282, gap(_4282)=nearPorts) :- % level in dependency graph: 2, processing order in component: 2
     vessel(_4282),portStatus(nearPorts).

cachingOrder2(_4244, highSpeedNearCoast(_4244)=true) :- % level in dependency graph: 2, processing order in component: 1
     vessel(_4244).

cachingOrder2(_4206, trawlingMovement(_4206)=true) :- % level in dependency graph: 2, processing order in component: 1
     vessel(_4206),vesselType(_4206,fishing).

cachingOrder2(_4206, trawlingMovement(_4206)=false) :- % level in dependency graph: 2, processing order in component: 2
     vessel(_4206),vesselType(_4206,fishing).

cachingOrder2(_4916, stopped(_4916)=farFromPorts) :- % level in dependency graph: 3, processing order in component: 1
     vessel(_4916),portStatus(farFromPorts).

cachingOrder2(_4932, stopped(_4932)=nearPorts) :- % level in dependency graph: 3, processing order in component: 2
     vessel(_4932),portStatus(nearPorts).

cachingOrder2(_4894, lowSpeed(_4894)=true) :- % level in dependency graph: 3, processing order in component: 1
     vessel(_4894).

cachingOrder2(_4872, changingSpeed(_4872)=true) :- % level in dependency graph: 3, processing order in component: 1
     vessel(_4872).

cachingOrder2(_4818, movingSpeed(_4818)=above) :- % level in dependency graph: 3, processing order in component: 1
     vessel(_4818),movingStatus(above).

cachingOrder2(_4834, movingSpeed(_4834)=normal) :- % level in dependency graph: 3, processing order in component: 2
     vessel(_4834),movingStatus(normal).

cachingOrder2(_4850, movingSpeed(_4850)=below) :- % level in dependency graph: 3, processing order in component: 3
     vessel(_4850),movingStatus(below).

cachingOrder2(_4796, tuggingSpeed(_4796)=true) :- % level in dependency graph: 3, processing order in component: 1
     vessel(_4796).

cachingOrder2(_4774, trawlSpeed(_4774)=true) :- % level in dependency graph: 3, processing order in component: 1
     vessel(_4774),vesselType(_4774,fishing).

cachingOrder2(_4752, sarSpeed(_4752)=true) :- % level in dependency graph: 3, processing order in component: 1
     vessel(_4752),vesselType(_4752,sar).

cachingOrder2(_5896, sarMovement(_5896)=true) :- % level in dependency graph: 4, processing order in component: 1
     vessel(_5896),vesselType(_5896,sar).

cachingOrder2(_5896, sarMovement(_5896)=false) :- % level in dependency graph: 4, processing order in component: 2
     vessel(_5896),vesselType(_5896,sar).

cachingOrder2(_5874, underWay(_5874)=true) :- % level in dependency graph: 4, processing order in component: 1
     vessel(_5874).

cachingOrder2(_5852, anchoredOrMoored(_5852)=true) :- % level in dependency graph: 4, processing order in component: 1
     vessel(_5852).

cachingOrder2(_5828, pilotOps(_5828,_5830)=true) :- % level in dependency graph: 4, processing order in component: 1
     vpair(_5828,_5830).

cachingOrder2(_5804, tugging(_5804,_5806)=true) :- % level in dependency graph: 4, processing order in component: 1
     vpair(_5804,_5806).

cachingOrder2(_5782, trawling(_5782)=true) :- % level in dependency graph: 4, processing order in component: 1
     vessel(_5782).

cachingOrder2(_6582, drifting(_6582)=true) :- % level in dependency graph: 5, processing order in component: 1
     vessel(_6582).

cachingOrder2(_6560, inSAR(_6560)=true) :- % level in dependency graph: 5, processing order in component: 1
     vessel(_6560).

cachingOrder2(_6538, loitering(_6538)=true) :- % level in dependency graph: 5, processing order in component: 1
     vessel(_6538).

collectGrounds([entersArea(_3120,_3134), gap_start(_3120), stop_start(_3120), slow_motion_start(_3120), change_in_speed_start(_3120), velocity(_3120,_3134,_3136,_3138), change_in_heading(_3120), leavesArea(_3120,_3134), gap_end(_3120), stop_end(_3120), slow_motion_end(_3120), change_in_speed_end(_3120), coord(_3120,_3134,_3136)],vessel(_3120)).

collectGrounds([proximity(_3108,_3110)=true, rendezVous(_3108,_3110)=true],vpair(_3108,_3110)).

dgrounded(withinArea(_4166,_4168)=true, vessel(_4166)).
dgrounded(gap(_4124)=nearPorts, vessel(_4124)).
dgrounded(gap(_4082)=farFromPorts, vessel(_4082)).
dgrounded(stopped(_4040)=nearPorts, vessel(_4040)).
dgrounded(stopped(_3998)=farFromPorts, vessel(_3998)).
dgrounded(lowSpeed(_3966)=true, vessel(_3966)).
dgrounded(changingSpeed(_3934)=true, vessel(_3934)).
dgrounded(highSpeedNearCoast(_3902)=true, vessel(_3902)).
dgrounded(movingSpeed(_3860)=below, vessel(_3860)).
dgrounded(movingSpeed(_3818)=normal, vessel(_3818)).
dgrounded(movingSpeed(_3776)=above, vessel(_3776)).
dgrounded(drifting(_3744)=true, vessel(_3744)).
dgrounded(tuggingSpeed(_3712)=true, vessel(_3712)).
dgrounded(trawlSpeed(_3668)=true, vessel(_3668)).
dgrounded(trawlingMovement(_3624)=true, vessel(_3624)).
dgrounded(sarSpeed(_3580)=true, vessel(_3580)).
dgrounded(sarMovement(_3536)=true, vessel(_3536)).
dgrounded(trawlingMovement(_3492)=false, vessel(_3492)).
dgrounded(sarMovement(_3448)=false, vessel(_3448)).
dgrounded(underWay(_3416)=true, vessel(_3416)).
dgrounded(anchoredOrMoored(_3384)=true, vessel(_3384)).
dgrounded(tugging(_3348,_3350)=true, vpair(_3348,_3350)).
dgrounded(trawling(_3316)=true, vessel(_3316)).
dgrounded(inSAR(_3284)=true, vessel(_3284)).
dgrounded(loitering(_3252)=true, vessel(_3252)).
dgrounded(pilotOps(_3216,_3218)=true, vpair(_3216,_3218)).
