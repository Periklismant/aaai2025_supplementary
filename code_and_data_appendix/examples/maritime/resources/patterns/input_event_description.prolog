initiatedAt(withinArea(_37132,_37134)=true, _37044) :-
     happensAt(entersArea(_37132,_37140),_37044),
     areaType(_37140,_37134).

initiatedAt(gap(_37132)=nearPorts, _37044) :-
     happensAt(gap_start(_37132),_37044),
     holdsAt(withinArea(_37132,nearPorts)=true,_37044).

initiatedAt(gap(_37132)=farFromPorts, _37044) :-
     happensAt(gap_start(_37132),_37044),
     \+holdsAt(withinArea(_37132,nearPorts)=true,_37044).

initiatedAt(stopped(_37132)=nearPorts, _37044) :-
     happensAt(stop_start(_37132),_37044),
     holdsAt(withinArea(_37132,nearPorts)=true,_37044).

initiatedAt(stopped(_37132)=farFromPorts, _37044) :-
     happensAt(stop_start(_37132),_37044),
     \+holdsAt(withinArea(_37132,nearPorts)=true,_37044).

initiatedAt(lowSpeed(_37132)=true, _37044) :-
     happensAt(slow_motion_start(_37132),_37044).

initiatedAt(changingSpeed(_37132)=true, _37044) :-
     happensAt(change_in_speed_start(_37132),_37044).

initiatedAt(highSpeedNearCoast(_37132)=true, _37044) :-
     happensAt(velocity(_37132,_37138,_37140,_37142),_37044),
     thresholds(hcNearCoastMax,_37154),
     \+inRange(_37138,0,_37154),
     holdsAt(withinArea(_37132,nearCoast)=true,_37044).

initiatedAt(movingSpeed(_37132)=below, _37044) :-
     happensAt(velocity(_37132,_37138,_37140,_37142),_37044),
     vesselType(_37132,_37154),
     typeSpeed(_37154,_37160,_37162,_37164),
     thresholds(movingMin,_37170),
     inRange(_37138,_37170,_37160).

initiatedAt(movingSpeed(_37132)=normal, _37044) :-
     happensAt(velocity(_37132,_37138,_37140,_37142),_37044),
     vesselType(_37132,_37154),
     typeSpeed(_37154,_37160,_37162,_37164),
     inRange(_37138,_37160,_37162).

initiatedAt(movingSpeed(_37132)=above, _37044) :-
     happensAt(velocity(_37132,_37138,_37140,_37142),_37044),
     vesselType(_37132,_37154),
     typeSpeed(_37154,_37160,_37162,_37164),
     inRange(_37138,_37162,inf).

initiatedAt(drifting(_37132)=true, _37044) :-
     happensAt(velocity(_37132,_37138,_37140,_37142),_37044),
     _37142=\=511.0,
     absoluteAngleDiff(_37140,_37142,_37168),
     thresholds(adriftAngThr,_37174),
     _37168>_37174,
     holdsAt(underWay(_37132)=true,_37044).

initiatedAt(tuggingSpeed(_37132)=true, _37044) :-
     happensAt(velocity(_37132,_37138,_37140,_37142),_37044),
     thresholds(tuggingMin,_37154),
     thresholds(tuggingMax,_37160),
     inRange(_37138,_37154,_37160).

initiatedAt(trawlSpeed(_37132)=true, _37044) :-
     happensAt(velocity(_37132,_37138,_37140,_37142),_37044),
     thresholds(trawlspeedMin,_37154),
     thresholds(trawlspeedMax,_37160),
     inRange(_37138,_37154,_37160),
     holdsAt(withinArea(_37132,fishing)=true,_37044).

initiatedAt(trawlingMovement(_37132)=true, _37044) :-
     happensAt(change_in_heading(_37132),_37044),
     holdsAt(withinArea(_37132,fishing)=true,_37044).

initiatedAt(sarSpeed(_37132)=true, _37044) :-
     happensAt(velocity(_37132,_37138,_37140,_37142),_37044),
     thresholds(sarMinSpeed,_37154),
     inRange(_37138,_37154,inf).

initiatedAt(sarMovement(_37132)=true, _37044) :-
     happensAt(change_in_heading(_37132),_37044).

initiatedAt(sarMovement(_37132)=true, _37044) :-
     happensAt(start(changingSpeed(_37132)=true),_37044).

initiatedAt(underWay(_37132)=true, _37044) :-
     happensAt(start(movingSpeed(_37132)=below),_37044).

initiatedAt(underWay(_37132)=true, _37044) :-
     happensAt(start(movingSpeed(_37132)=normal),_37044).

initiatedAt(underWay(_37132)=true, _37044) :-
     happensAt(start(movingSpeed(_37132)=above),_37044).

initiatedAt(inSAR(_37132)=true, _37044) :-
     happensAt(start(sarSpeed(_37132)=true),_37044),
     happensAt(start(sarMovement(_37132)=true),_37044).

initiatedAt(inSAR(_37132)=true, _37044) :-
     happensAt(start(sarSpeed(_37132)=true),_37044),
     holdsAt(sarMovement(_37132)=true,_37044),
     \+happensAt(end(sarMovement(_37132)=true),_37044).

initiatedAt(inSAR(_37132)=true, _37044) :-
     happensAt(start(sarMovement(_37132)=true),_37044),
     \+happensAt(end(sarSpeed(_37132)=true),_37044),
     holdsAt(sarSpeed(_37132)=true,_37044).

initiatedAt(anchoredOrMoored(_37132)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(withinArea(_37132,anchorage)=true),_37044).

initiatedAt(anchoredOrMoored(_37132)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(withinArea(_37132,anchorage)=true,_37044),
     \+happensAt(end(withinArea(_37132,anchorage)=true),_37044).

initiatedAt(anchoredOrMoored(_37132)=true, _37044) :-
     happensAt(start(withinArea(_37132,anchorage)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(anchoredOrMoored(_37132)=true, _37044) :-
     happensAt(start(stopped(_37132)=nearPorts),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(lowSpeed(_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(lowSpeed(_37134)=true),_37044),
     holdsAt(lowSpeed(_37134)=true,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(stopped(_37134)=farFromPorts),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37134,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(pilotOps(_37132,_37134)=true, _37044) :-
     happensAt(end(withinArea(_37134,nearCoast)=true),_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044),
     \+happensAt(end(stopped(_37134)=farFromPorts),_37044),
     holdsAt(stopped(_37134)=farFromPorts,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(tugging(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(start(tuggingSpeed(_37132)=true),_37044),
     happensAt(start(tuggingSpeed(_37134)=true),_37044).

initiatedAt(tugging(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     happensAt(start(tuggingSpeed(_37132)=true),_37044),
     holdsAt(tuggingSpeed(_37134)=true,_37044),
     \+happensAt(end(tuggingSpeed(_37134)=true),_37044).

initiatedAt(tugging(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     holdsAt(tuggingSpeed(_37132)=true,_37044),
     \+happensAt(end(tuggingSpeed(_37132)=true),_37044),
     happensAt(start(tuggingSpeed(_37134)=true),_37044).

initiatedAt(tugging(_37132,_37134)=true, _37044) :-
     happensAt(start(proximity(_37132,_37134)=true),_37044),
     holdsAt(tuggingSpeed(_37132)=true,_37044),
     \+happensAt(end(tuggingSpeed(_37132)=true),_37044),
     holdsAt(tuggingSpeed(_37134)=true,_37044),
     \+happensAt(end(tuggingSpeed(_37134)=true),_37044).

initiatedAt(tugging(_37132,_37134)=true, _37044) :-
     happensAt(start(tuggingSpeed(_37132)=true),_37044),
     happensAt(start(tuggingSpeed(_37134)=true),_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044).

initiatedAt(tugging(_37132,_37134)=true, _37044) :-
     happensAt(start(tuggingSpeed(_37132)=true),_37044),
     holdsAt(tuggingSpeed(_37134)=true,_37044),
     \+happensAt(end(tuggingSpeed(_37134)=true),_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044).

initiatedAt(tugging(_37132,_37134)=true, _37044) :-
     happensAt(start(tuggingSpeed(_37134)=true),_37044),
     \+happensAt(end(tuggingSpeed(_37132)=true),_37044),
     holdsAt(tuggingSpeed(_37132)=true,_37044),
     \+happensAt(end(proximity(_37132,_37134)=true),_37044),
     holdsAt(proximity(_37132,_37134)=true,_37044).

initiatedAt(trawling(_37132)=true, _37044) :-
     happensAt(start(trawlSpeed(_37132)=true),_37044),
     happensAt(start(trawlingMovement(_37132)=true),_37044).

initiatedAt(trawling(_37132)=true, _37044) :-
     happensAt(start(trawlSpeed(_37132)=true),_37044),
     holdsAt(trawlingMovement(_37132)=true,_37044),
     \+happensAt(end(trawlingMovement(_37132)=true),_37044).

initiatedAt(trawling(_37132)=true, _37044) :-
     happensAt(start(trawlingMovement(_37132)=true),_37044),
     \+happensAt(end(trawlSpeed(_37132)=true),_37044),
     holdsAt(trawlSpeed(_37132)=true,_37044).

initiatedAt(loitering(_37132)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(anchoredOrMoored(_37132)=true),_37044).

initiatedAt(loitering(_37132)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(anchoredOrMoored(_37132)=true,_37044),
     \+happensAt(start(anchoredOrMoored(_37132)=true),_37044).

initiatedAt(loitering(_37132)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(anchoredOrMoored(_37132)=true),_37044).

initiatedAt(loitering(_37132)=true, _37044) :-
     happensAt(start(lowSpeed(_37132)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(anchoredOrMoored(_37132)=true,_37044),
     \+happensAt(start(anchoredOrMoored(_37132)=true),_37044).

initiatedAt(loitering(_37132)=true, _37044) :-
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(anchoredOrMoored(_37132)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(loitering(_37132)=true, _37044) :-
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(anchoredOrMoored(_37132)=true,_37044),
     \+happensAt(start(anchoredOrMoored(_37132)=true),_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(loitering(_37132)=true, _37044) :-
     happensAt(end(anchoredOrMoored(_37132)=true),_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(end(lowSpeed(_37132)=true),_37044),
     holdsAt(lowSpeed(_37132)=true,_37044).

initiatedAt(loitering(_37132)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(anchoredOrMoored(_37132)=true),_37044).

initiatedAt(loitering(_37132)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(anchoredOrMoored(_37132)=true,_37044),
     \+happensAt(start(anchoredOrMoored(_37132)=true),_37044).

initiatedAt(loitering(_37132)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(anchoredOrMoored(_37132)=true),_37044).

initiatedAt(loitering(_37132)=true, _37044) :-
     happensAt(start(stopped(_37132)=farFromPorts),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(anchoredOrMoored(_37132)=true,_37044),
     \+happensAt(start(anchoredOrMoored(_37132)=true),_37044).

initiatedAt(loitering(_37132)=true, _37044) :-
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     happensAt(end(anchoredOrMoored(_37132)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(loitering(_37132)=true, _37044) :-
     happensAt(end(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(anchoredOrMoored(_37132)=true,_37044),
     \+happensAt(start(anchoredOrMoored(_37132)=true),_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

initiatedAt(loitering(_37132)=true, _37044) :-
     happensAt(end(anchoredOrMoored(_37132)=true),_37044),
     \+happensAt(start(withinArea(_37132,nearCoast)=true),_37044),
     \+holdsAt(withinArea(_37132,nearCoast)=true,_37044),
     \+happensAt(end(stopped(_37132)=farFromPorts),_37044),
     holdsAt(stopped(_37132)=farFromPorts,_37044).

terminatedAt(withinArea(_38272,_38274)=true, _37044) :-
     happensAt(leavesArea(_38272,_38280),_37044),
     areaType(_38280,_38274).

terminatedAt(withinArea(_38272,_38274)=true, _37044) :-
     happensAt(gap_start(_38272),_37044).

terminatedAt(gap(_38272)=_37050, _37044) :-
     happensAt(gap_end(_38272),_37044).

terminatedAt(stopped(_38272)=_37050, _37044) :-
     happensAt(stop_end(_38272),_37044).

terminatedAt(stopped(_38272)=_37050, _37044) :-
     happensAt(start(gap(_38272)=_38282),_37044).

terminatedAt(lowSpeed(_38272)=true, _37044) :-
     happensAt(slow_motion_end(_38272),_37044).

terminatedAt(lowSpeed(_38272)=true, _37044) :-
     happensAt(start(gap(_38272)=_38282),_37044).

terminatedAt(changingSpeed(_38272)=true, _37044) :-
     happensAt(change_in_speed_end(_38272),_37044).

terminatedAt(changingSpeed(_38272)=true, _37044) :-
     happensAt(start(gap(_38272)=_38282),_37044).

terminatedAt(highSpeedNearCoast(_38272)=true, _37044) :-
     happensAt(velocity(_38272,_38278,_38280,_38282),_37044),
     thresholds(hcNearCoastMax,_38294),
     inRange(_38278,0,_38294).

terminatedAt(highSpeedNearCoast(_38272)=true, _37044) :-
     happensAt(end(withinArea(_38272,nearCoast)=true),_37044).

terminatedAt(movingSpeed(_38272)=_37050, _37044) :-
     happensAt(velocity(_38272,_38278,_38280,_38282),_37044),
     thresholds(movingMin,_38294),
     \+inRange(_38278,_38294,inf).

terminatedAt(movingSpeed(_38272)=_37050, _37044) :-
     happensAt(start(gap(_38272)=_38282),_37044).

terminatedAt(drifting(_38272)=true, _37044) :-
     happensAt(velocity(_38272,_38278,_38280,_38282),_37044),
     absoluteAngleDiff(_38280,_38282,_38296),
     thresholds(adriftAngThr,_38302),
     _38296=<_38302.

terminatedAt(drifting(_38272)=true, _37044) :-
     happensAt(velocity(_38272,_38278,_38280,511.0),_37044).

terminatedAt(drifting(_38272)=true, _37044) :-
     happensAt(end(underWay(_38272)=true),_37044).

terminatedAt(tuggingSpeed(_38272)=true, _37044) :-
     happensAt(velocity(_38272,_38278,_38280,_38282),_37044),
     thresholds(tuggingMin,_38294),
     thresholds(tuggingMax,_38300),
     \+inRange(_38278,_38294,_38300).

terminatedAt(tuggingSpeed(_38272)=true, _37044) :-
     happensAt(start(gap(_38272)=_38282),_37044).

terminatedAt(trawlSpeed(_38272)=true, _37044) :-
     happensAt(velocity(_38272,_38278,_38280,_38282),_37044),
     thresholds(trawlspeedMin,_38294),
     thresholds(trawlspeedMax,_38300),
     \+inRange(_38278,_38294,_38300).

terminatedAt(trawlSpeed(_38272)=true, _37044) :-
     happensAt(start(gap(_38272)=_38282),_37044).

terminatedAt(trawlSpeed(_38272)=true, _37044) :-
     happensAt(end(withinArea(_38272,fishing)=true),_37044).

terminatedAt(trawlingMovement(_38272)=true, _37044) :-
     happensAt(end(withinArea(_38272,fishing)=true),_37044).

terminatedAt(sarSpeed(_38272)=true, _37044) :-
     happensAt(velocity(_38272,_38278,_38280,_38282),_37044),
     thresholds(sarMinSpeed,_38294),
     inRange(_38278,0,_38294).

terminatedAt(sarSpeed(_38272)=true, _37044) :-
     happensAt(start(gap(_38272)=_38282),_37044).

terminatedAt(sarMovement(_38272)=true, _37044) :-
     happensAt(start(gap(_38272)=_38282),_37044).

terminatedAt(underWay(_38272)=true, _37044) :-
     happensAt(end(movingSpeed(_38272)=below),_37044),
     happensAt(end(movingSpeed(_38272)=normal),_37044),
     happensAt(end(movingSpeed(_38272)=above),_37044).

terminatedAt(underWay(_38272)=true, _37044) :-
     happensAt(end(movingSpeed(_38272)=below),_37044),
     happensAt(end(movingSpeed(_38272)=normal),_37044),
     \+holdsAt(movingSpeed(_38272)=above,_37044),
     \+happensAt(start(movingSpeed(_38272)=above),_37044).

terminatedAt(underWay(_38272)=true, _37044) :-
     happensAt(end(movingSpeed(_38272)=below),_37044),
     \+holdsAt(movingSpeed(_38272)=normal,_37044),
     \+happensAt(start(movingSpeed(_38272)=normal),_37044),
     happensAt(end(movingSpeed(_38272)=above),_37044).

terminatedAt(underWay(_38272)=true, _37044) :-
     happensAt(end(movingSpeed(_38272)=below),_37044),
     \+holdsAt(movingSpeed(_38272)=normal,_37044),
     \+happensAt(start(movingSpeed(_38272)=normal),_37044),
     \+holdsAt(movingSpeed(_38272)=above,_37044),
     \+happensAt(start(movingSpeed(_38272)=above),_37044).

terminatedAt(underWay(_38272)=true, _37044) :-
     happensAt(end(movingSpeed(_38272)=normal),_37044),
     happensAt(end(movingSpeed(_38272)=above),_37044),
     \+happensAt(start(movingSpeed(_38272)=below),_37044),
     \+holdsAt(movingSpeed(_38272)=below,_37044).

terminatedAt(underWay(_38272)=true, _37044) :-
     happensAt(end(movingSpeed(_38272)=normal),_37044),
     \+holdsAt(movingSpeed(_38272)=above,_37044),
     \+happensAt(start(movingSpeed(_38272)=above),_37044),
     \+happensAt(start(movingSpeed(_38272)=below),_37044),
     \+holdsAt(movingSpeed(_38272)=below,_37044).

terminatedAt(underWay(_38272)=true, _37044) :-
     happensAt(end(movingSpeed(_38272)=above),_37044),
     \+happensAt(start(movingSpeed(_38272)=normal),_37044),
     \+holdsAt(movingSpeed(_38272)=normal,_37044),
     \+happensAt(start(movingSpeed(_38272)=below),_37044),
     \+holdsAt(movingSpeed(_38272)=below,_37044).

terminatedAt(inSAR(_38272)=true, _37044) :-
     happensAt(end(sarSpeed(_38272)=true),_37044).

terminatedAt(inSAR(_38272)=true, _37044) :-
     happensAt(end(sarMovement(_38272)=true),_37044).

terminatedAt(anchoredOrMoored(_38272)=true, _37044) :-
     happensAt(end(stopped(_38272)=nearPorts),_37044),
     happensAt(end(stopped(_38272)=farFromPorts),_37044).

terminatedAt(anchoredOrMoored(_38272)=true, _37044) :-
     happensAt(end(stopped(_38272)=nearPorts),_37044),
     \+holdsAt(stopped(_38272)=farFromPorts,_37044),
     \+happensAt(start(stopped(_38272)=farFromPorts),_37044).

terminatedAt(anchoredOrMoored(_38272)=true, _37044) :-
     happensAt(end(stopped(_38272)=farFromPorts),_37044),
     \+happensAt(start(stopped(_38272)=nearPorts),_37044),
     \+holdsAt(stopped(_38272)=nearPorts,_37044).

terminatedAt(anchoredOrMoored(_38272)=true, _37044) :-
     happensAt(end(stopped(_38272)=nearPorts),_37044),
     happensAt(end(withinArea(_38272,anchorage)=true),_37044).

terminatedAt(anchoredOrMoored(_38272)=true, _37044) :-
     happensAt(end(stopped(_38272)=nearPorts),_37044),
     \+holdsAt(withinArea(_38272,anchorage)=true,_37044),
     \+happensAt(start(withinArea(_38272,anchorage)=true),_37044).

terminatedAt(anchoredOrMoored(_38272)=true, _37044) :-
     happensAt(end(withinArea(_38272,anchorage)=true),_37044),
     \+happensAt(start(stopped(_38272)=nearPorts),_37044),
     \+holdsAt(stopped(_38272)=nearPorts,_37044).

terminatedAt(pilotOps(_38272,_38274)=true, _37044) :-
     happensAt(end(lowSpeed(_38272)=true),_37044),
     happensAt(end(stopped(_38272)=farFromPorts),_37044).

terminatedAt(pilotOps(_38272,_38274)=true, _37044) :-
     happensAt(end(lowSpeed(_38272)=true),_37044),
     \+holdsAt(stopped(_38272)=farFromPorts,_37044),
     \+happensAt(start(stopped(_38272)=farFromPorts),_37044).

terminatedAt(pilotOps(_38272,_38274)=true, _37044) :-
     happensAt(end(stopped(_38272)=farFromPorts),_37044),
     \+happensAt(start(lowSpeed(_38272)=true),_37044),
     \+holdsAt(lowSpeed(_38272)=true,_37044).

terminatedAt(pilotOps(_38272,_38274)=true, _37044) :-
     happensAt(end(lowSpeed(_38274)=true),_37044),
     happensAt(end(stopped(_38274)=farFromPorts),_37044).

terminatedAt(pilotOps(_38272,_38274)=true, _37044) :-
     happensAt(end(lowSpeed(_38274)=true),_37044),
     \+holdsAt(stopped(_38274)=farFromPorts,_37044),
     \+happensAt(start(stopped(_38274)=farFromPorts),_37044).

terminatedAt(pilotOps(_38272,_38274)=true, _37044) :-
     happensAt(end(stopped(_38274)=farFromPorts),_37044),
     \+happensAt(start(lowSpeed(_38274)=true),_37044),
     \+holdsAt(lowSpeed(_38274)=true,_37044).

terminatedAt(pilotOps(_38272,_38274)=true, _37044) :-
     happensAt(end(proximity(_38272,_38274)=true),_37044).

terminatedAt(pilotOps(_38272,_38274)=true, _37044) :-
     happensAt(start(withinArea(_38272,nearCoast)=true),_37044).

terminatedAt(pilotOps(_38272,_38274)=true, _37044) :-
     happensAt(start(withinArea(_38274,nearCoast)=true),_37044).

terminatedAt(tugging(_38272,_38274)=true, _37044) :-
     happensAt(end(proximity(_38272,_38274)=true),_37044).

terminatedAt(tugging(_38272,_38274)=true, _37044) :-
     happensAt(end(tuggingSpeed(_38272)=true),_37044).

terminatedAt(tugging(_38272,_38274)=true, _37044) :-
     happensAt(end(tuggingSpeed(_38274)=true),_37044).

terminatedAt(trawling(_38272)=true, _37044) :-
     happensAt(end(trawlSpeed(_38272)=true),_37044).

terminatedAt(trawling(_38272)=true, _37044) :-
     happensAt(end(trawlingMovement(_38272)=true),_37044).

terminatedAt(loitering(_38272)=true, _37044) :-
     happensAt(end(lowSpeed(_38272)=true),_37044),
     happensAt(end(stopped(_38272)=farFromPorts),_37044).

terminatedAt(loitering(_38272)=true, _37044) :-
     happensAt(end(lowSpeed(_38272)=true),_37044),
     \+holdsAt(stopped(_38272)=farFromPorts,_37044),
     \+happensAt(start(stopped(_38272)=farFromPorts),_37044).

terminatedAt(loitering(_38272)=true, _37044) :-
     happensAt(end(stopped(_38272)=farFromPorts),_37044),
     \+happensAt(start(lowSpeed(_38272)=true),_37044),
     \+holdsAt(lowSpeed(_38272)=true,_37044).

terminatedAt(loitering(_38272)=true, _37044) :-
     happensAt(start(withinArea(_38272,nearCoast)=true),_37044).

terminatedAt(loitering(_38272)=true, _37044) :-
     happensAt(start(anchoredOrMoored(_38272)=true),_37044).

% proximity is an input statically determined fluent.
% its instances arrive in the form of intervals.
collectIntervals(proximity(_,_)=true).

% The elements of these domains are derived from the ground arguments of input entitites
dynamicDomain(vessel(_Vessel)).
dynamicDomain(vpair(_Vessel1,_Vessel2)).

% Groundings of input entities
grounding(change_in_speed_start(V)):- vessel(V).
grounding(change_in_speed_end(V)):- vessel(V).
grounding(change_in_heading(V)):- vessel(V).
grounding(stop_start(V)):- vessel(V).
grounding(stop_end(V)):- vessel(V).
grounding(slow_motion_start(V)):- vessel(V).
grounding(slow_motion_end(V)):- vessel(V).
grounding(gap_start(V)):- vessel(V).
grounding(gap_end(V)):- vessel(V).
grounding(entersArea(V,Area)):- vessel(V), areaType(Area).
grounding(leavesArea(V,Area)):- vessel(V), areaType(Area).
grounding(coord(V,_,_)):- vessel(V).
grounding(velocity(V,_,_,_)):- vessel(V).
grounding(proximity(Vessel1, Vessel2)=true):- vpair(Vessel1, Vessel2).

% Groundings of output entities
grounding(gap(Vessel)=PortStatus):-
	vessel(Vessel), portStatus(PortStatus).
grounding(stopped(Vessel)=PortStatus):-
	vessel(Vessel), portStatus(PortStatus).
grounding(lowSpeed(Vessel)=true):-
	vessel(Vessel).
grounding(changingSpeed(Vessel)=true):-
	vessel(Vessel).
grounding(withinArea(Vessel, AreaType)=true):-
	vessel(Vessel), areaType(AreaType).
grounding(underWay(Vessel)=true):-
	vessel(Vessel).
grounding(sarSpeed(Vessel)=true):-
	vessel(Vessel), vesselType(Vessel,sar).
grounding(sarMovement(Vessel)=true):-
	vessel(Vessel), vesselType(Vessel,sar).
grounding(sarMovement(Vessel)=false):-
	vessel(Vessel), vesselType(Vessel,sar).
grounding(inSAR(Vessel)=true):-
	vessel(Vessel).
grounding(highSpeedNearCoast(Vessel)=true):-
	vessel(Vessel).
grounding(drifting(Vessel)=true):-
	vessel(Vessel).
grounding(anchoredOrMoored(Vessel)=true):-
	vessel(Vessel).
grounding(trawlSpeed(Vessel)=true):-
	vessel(Vessel), vesselType(Vessel,fishing).
grounding(movingSpeed(Vessel)=Status):-
	vessel(Vessel), movingStatus(Status).
grounding(pilotOps(Vessel1, Vessel2)=true):-
	vpair(Vessel1, Vessel2).
grounding(tuggingSpeed(Vessel)=true):-
	vessel(Vessel).
grounding(tugging(Vessel1, Vessel2)=true):-
	vpair(Vessel1, Vessel2).
grounding(rendezVous(Vessel1, Vessel2)=true):-
	vpair(Vessel1, Vessel2).
grounding(trawlingMovement(Vessel)=true):-
	vessel(Vessel), vesselType(Vessel,fishing).
grounding(trawlingMovement(Vessel)=false):-
	vessel(Vessel), vesselType(Vessel,fishing).
grounding(trawling(Vessel)=true):-
	vessel(Vessel).
grounding(loitering(Vessel)=true):-
	vessel(Vessel).

needsGrounding(_, _, _) :-
	fail.
buildFromPoints(_) :-
	fail.
