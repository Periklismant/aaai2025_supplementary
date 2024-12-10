initiatedAt(contract(_110)=inEffect, _154, _80, _160) :-
     happensAtIE(started(_110),_80),_154=<_80,_80<_160,
     holdsAtProcessedIE(_110,contract(_110)=formed,_80).

initiatedAt(contract(_110)=inEffect, _154, _80, _160) :-
     happensAtIE(resumed(_110),_80),_154=<_80,_80<_160,
     holdsAtCyclic(_110,contract(_110)=suspended,_80).

initiatedAt(contract(_110)=suspended, _154, _80, _160) :-
     happensAtIE(suspension(_110),_80),_154=<_80,_80<_160,
     holdsAtCyclic(_110,contract(_110)=inEffect,_80).

initiatedAt(contract(_110)=rescinded, _148, _80, _154) :-
     happensAtIE(rescission(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,contract(_110)=inEffect,_80).

initiatedAt(contract(_110)=unsuccTerm, _148, _80, _154) :-
     happensAtIE(termination(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,contract(_110)=inEffect,_80).

initiatedAt(contract(_110)=unsuccTerm, _148, _80, _154) :-
     happensAtIE(termination(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,contract(_110)=suspended,_80).

initiatedAt(contract(_110)=succTerm, _148, _80, _154) :-
     happensAtIE(fulfillment(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,contract(_110)=inEffect,_80).

initiatedAt(obligation(_110)=created, _148, _80, _154) :-
     happensAtIE(trigger_conditional(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedIE(_110,obligation(_110)=none,_80).

initiatedAt(obligation(_110)=inEffect, _154, _80, _160) :-
     happensAtIE(trigger_unconditional(_110),_80),_154=<_80,_80<_160,
     holdsAtProcessedIE(_110,obligation(_110)=none,_80).

initiatedAt(obligation(_110)=discharged, _148, _80, _154) :-
     happensAtIE(expires(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,obligation(_110)=created,_80).

initiatedAt(obligation(_110)=inEffect, _154, _80, _160) :-
     happensAtIE(activate(_110),_80),_154=<_80,_80<_160,
     holdsAtProcessedSimpleFluent(_110,obligation(_110)=created,_80).

initiatedAt(obligation(_110)=discharged, _148, _80, _154) :-
     happensAtIE(discharge(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,obligation(_110)=inEffect,_80).

initiatedAt(obligation(_110)=suspendedByPower, _154, _80, _160) :-
     happensAtIE(suspendByPower(_110),_80),_154=<_80,_80<_160,
     holdsAtCyclic(_110,obligation(_110)=inEffect,_80).

initiatedAt(obligation(_110)=suspendedByContract, _154, _80, _160) :-
     happensAtIE(suspendByContract(_110),_80),_154=<_80,_80<_160,
     holdsAtCyclic(_110,obligation(_110)=inEffect,_80).

initiatedAt(obligation(_110)=fulfilled, _148, _80, _154) :-
     happensAtIE(fulfill(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,obligation(_110)=inEffect,_80).

initiatedAt(obligation(_110)=violated, _148, _80, _154) :-
     happensAtIE(violate(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,obligation(_110)=inEffect,_80).

initiatedAt(obligation(_110)=inEffect, _154, _80, _160) :-
     happensAtIE(resumeByPower(_110),_80),_154=<_80,_80<_160,
     holdsAtCyclic(_110,obligation(_110)=suspendedByPower,_80).

initiatedAt(obligation(_110)=inEffect, _154, _80, _160) :-
     happensAtIE(resumeByContract(_110),_80),_154=<_80,_80<_160,
     holdsAtCyclic(_110,obligation(_110)=suspendedByContract,_80).

initiatedAt(obligation(_110)=unsuccTerm, _148, _80, _154) :-
     happensAtIE(terminate(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,obligation(_110)=inEffect,_80).

initiatedAt(obligation(_110)=unsuccTerm, _148, _80, _154) :-
     happensAtIE(terminate(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,obligation(_110)=suspendedByPower,_80).

initiatedAt(obligation(_110)=unsuccTerm, _148, _80, _154) :-
     happensAtIE(terminate(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,obligation(_110)=suspendedByContract,_80).

initiatedAt(power(_110)=created, _148, _80, _154) :-
     happensAtIE(trigger_conditional(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedIE(_110,power(_110)=none,_80).

initiatedAt(pow(_110)=inEffect, _148, _80, _154) :-
     happensAtIE(trigger_unconditional(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedIE(_110,power(_110)=none,_80).

initiatedAt(power(_110)=unsuccTerm, _148, _80, _154) :-
     happensAtIE(expire(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,power(_110)=created,_80).

initiatedAt(power(_110)=unsuccTerm, _148, _80, _154) :-
     happensAtIE(expire(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,power(_110)=inEffect,_80).

initiatedAt(power(_110)=unsuccTerm, _148, _80, _154) :-
     happensAtIE(terminate(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,power(_110)=inEffect,_80).

initiatedAt(power(_110)=inEffect, _154, _80, _160) :-
     happensAtIE(activate(_110),_80),_154=<_80,_80<_160,
     holdsAtProcessedSimpleFluent(_110,power(_110)=created,_80).

initiatedAt(power(_110)=inEffect, _154, _80, _160) :-
     happensAtIE(resume(_110),_80),_154=<_80,_80<_160,
     holdsAtCyclic(_110,power(_110)=suspended,_80).

initiatedAt(power(_110)=suspended, _154, _80, _160) :-
     happensAtIE(suspend(_110),_80),_154=<_80,_80<_160,
     holdsAtCyclic(_110,power(_110)=inEffect,_80).

initiatedAt(power(_110)=succTerm, _148, _80, _154) :-
     happensAtIE(exert(_110),_80),_148=<_80,_80<_154,
     holdsAtProcessedSimpleFluent(_110,power(_110)=inEffect,_80).

initiatedAt(transferredR(_110)=_86, _130, _80, _136) :-
     happensAtIE(transferR(_110,_116,_86),_80),
     _130=<_80,
     _80<_136.

initiatedAt(transferredL(_110)=_86, _130, _80, _136) :-
     happensAtIE(transferL(_110,_116,_86),_80),
     _130=<_80,
     _80<_136.

initiatedAt(transferredP(_110)=_86, _130, _80, _136) :-
     happensAtIE(transferP(_110,_116,_86),_80),
     _130=<_80,
     _80<_136.

holdsForSDFluent(active_contract(_110)=true,_80) :-
     holdsForProcessedSimpleFluent(_110,contract(_110)=inEffect,_126),
     holdsForProcessedSimpleFluent(_110,contract(_110)=suspended,_142),
     holdsForProcessedIE(_110,contract(_110)=rescission,_158),
     union_all([_126,_142,_158],_80).

holdsForSDFluent(active_obligation(_110)=true,_80) :-
     holdsForProcessedSimpleFluent(_110,obligation(_110)=inEffect,_126),
     holdsForProcessedSimpleFluent(_110,obligation(_110)=suspendedByPower,_142),
     holdsForProcessedSimpleFluent(_110,obligation(_110)=suspendedByContract,_158),
     union_all([_126,_142,_158],_80).

holdsForSDFluent(active_power(_110)=true,_80) :-
     holdsForProcessedSimpleFluent(_110,power(_110)=inEffect,_126),
     holdsForProcessedSimpleFluent(_110,power(_110)=suspended,_142),
     union_all([_126,_142],_80).

holdsForSDFluent(rightHolder_obligation(_110)=_86,_80) :-
     holdsForProcessedIE(_110,creditor(_110)=_86,_126),
     holdsForProcessedSimpleFluent(_110,transferredR(_110)=none,_142),
     holdsForProcessedSDFluent(_110,active_obligation(_110)=true,_158),
     intersect_all([_126,_142,_158],_182),
     holdsForProcessedSimpleFluent(_110,transferredR(_110)=_86,_198),
     intersect_all([_198,_158],_216),
     union_all([_182,_216],_80).

holdsForSDFluent(liable_obligation(_110)=_86,_80) :-
     holdsForProcessedIE(_110,debtor(_110)=_86,_126),
     holdsForProcessedSimpleFluent(_110,transferredL(_110)=none,_142),
     holdsForProcessedSDFluent(_110,active_obligation(_110)=true,_158),
     intersect_all([_126,_142,_158],_182),
     holdsForProcessedSimpleFluent(_110,transferredL(_110)=_86,_198),
     intersect_all([_198,_158],_216),
     union_all([_182,_216],_80).

holdsForSDFluent(performer_obligation(_110)=_86,_80) :-
     holdsForProcessedIE(_110,debtor(_110)=_86,_126),
     holdsForProcessedSimpleFluent(_110,transferredP(_110)=none,_142),
     holdsForProcessedSDFluent(_110,active_obligation(_110)=true,_158),
     intersect_all([_126,_142,_158],_182),
     holdsForProcessedSimpleFluent(_110,transferredP(_110)=_86,_198),
     intersect_all([_198,_158],_216),
     union_all([_182,_216],_80).

holdsForSDFluent(rightHolder_power(_110)=_86,_80) :-
     holdsForProcessedIE(_110,creditor(_110)=_86,_126),
     holdsForProcessedSimpleFluent(_110,transferredR(_110)=none,_142),
     holdsForProcessedSDFluent(_110,active_power(_110)=true,_158),
     intersect_all([_126,_142,_158],_182),
     holdsForProcessedSimpleFluent(_110,transferredR(_110)=_86,_198),
     intersect_all([_198,_158],_216),
     union_all([_182,_216],_80).

holdsForSDFluent(performer_power(_110)=_86,_80) :-
     holdsForProcessedIE(_110,creditor(_110)=_86,_126),
     holdsForProcessedSimpleFluent(_110,transferredP(_110)=none,_142),
     holdsForProcessedSDFluent(_110,active_power(_110)=true,_158),
     intersect_all([_126,_142,_158],_182),
     holdsForProcessedSimpleFluent(_110,transferredP(_110)=_86,_198),
     intersect_all([_198,_158],_216),
     union_all([_182,_216],_80).

holdsForSDFluent(liable_power(_110)=_86,_80) :-
     holdsForProcessedIE(_110,debtor(_110)=_86,_126),
     holdsForProcessedSimpleFluent(_110,transferredL(_110)=none,_142),
     holdsForProcessedSDFluent(_110,active_power(_110)=true,_158),
     intersect_all([_126,_142,_158],_182),
     holdsForProcessedSimpleFluent(_110,transferredL(_110)=_86,_198),
     intersect_all([_198,_158],_216),
     union_all([_182,_216],_80).

grounding(started(_330)) :- 
     c(_330).

grounding(resumed(_330)) :- 
     c(_330).

grounding(suspension(_330)) :- 
     c(_330).

grounding(rescission(_330)) :- 
     c(_330).

grounding(termination(_330)) :- 
     c(_330).

grounding(fulfillment(_330)) :- 
     c(_330).

grounding(transferR(_330,_332,_334)) :- 
     o_or_pow(_330),party(_332),party(_334).

grounding(transferL(_330,_332,_334)) :- 
     o_or_pow(_330),party(_332),party(_334).

grounding(transferP(_330,_332,_334)) :- 
     o_or_pow(_330),party(_332),party(_334).

grounding(creditor(_336)=_332) :- 
     o_or_pow(_336),party(_332).

grounding(debtor(_336)=_332) :- 
     o_or_pow(_336),party(_332).

grounding(contract(_336)=formed) :- 
     c(_336).

grounding(contract(_336)=inEffect) :- 
     c(_336).

grounding(contract(_336)=suspended) :- 
     c(_336).

grounding(contract(_336)=rescinded) :- 
     c(_336).

grounding(contract(_336)=unsuccTerm) :- 
     c(_336).

grounding(contract(_336)=succTerm) :- 
     c(_336).

grounding(active_contract(_336)=true) :- 
     c(_336).

grounding(obligation(_336)=created) :- 
     o(_336).

grounding(obligation(_336)=discharged) :- 
     o(_336).

grounding(obligation(_336)=inEffect) :- 
     o(_336).

grounding(obligation(_336)=suspendedByPower) :- 
     o(_336).

grounding(obligation(_336)=suspendedByContract) :- 
     o(_336).

grounding(obligation(_336)=fulfilled) :- 
     o(_336).

grounding(obligation(_336)=violated) :- 
     o(_336).

grounding(obligation(_336)=unsuccTerm) :- 
     o(_336).

grounding(active_obligation(_336)=true) :- 
     o(_336).

grounding(power(_336)=created) :- 
     pow(_336).

grounding(power(_336)=inEffect) :- 
     pow(_336).

grounding(power(_336)=suspended) :- 
     pow(_336).

grounding(power(_336)=unsuccTerm) :- 
     pow(_336).

grounding(power(_336)=succTerm) :- 
     pow(_336).

grounding(active_power(_336)=true) :- 
     pow(_336).

grounding(transferredR(_336)=none) :- 
     o_or_pow(_336).

grounding(transferredL(_336)=none) :- 
     o_or_pow(_336).

grounding(transferredP(_336)=none) :- 
     o_or_pow(_336).

grounding(transferredR(_336)=_332) :- 
     o_or_pow(_336),party(_332).

grounding(transferredL(_336)=_332) :- 
     o_or_pow(_336),party(_332).

grounding(transferredP(_336)=_332) :- 
     o_or_pow(_336),party(_332).

grounding(rightHolder_obligation(_336)=_332) :- 
     o(_336),party(_332).

grounding(liable_obligation(_336)=_332) :- 
     o(_336),party(_332).

grounding(performer_obligation(_336)=_332) :- 
     o(_336),party(_332).

grounding(rightHolder_power(_336)=_332) :- 
     pow(_336),party(_332).

grounding(liable_power(_336)=_332) :- 
     pow(_336),party(_332).

grounding(performer_power(_336)=_332) :- 
     pow(_336),party(_332).

inputEntity(started(_140)).
inputEntity(contract(_146)=formed).
inputEntity(resumed(_140)).
inputEntity(suspension(_140)).
inputEntity(rescission(_140)).
inputEntity(termination(_140)).
inputEntity(fulfillment(_140)).
inputEntity(trigger_conditional(_140)).
inputEntity(obligation(_146)=none).
inputEntity(trigger_unconditional(_140)).
inputEntity(expires(_140)).
inputEntity(activate(_140)).
inputEntity(discharge(_140)).
inputEntity(suspendByPower(_140)).
inputEntity(suspendByContract(_140)).
inputEntity(fulfill(_140)).
inputEntity(violate(_140)).
inputEntity(resumeByPower(_140)).
inputEntity(resumeByContract(_140)).
inputEntity(terminate(_140)).
inputEntity(power(_146)=none).
inputEntity(expire(_140)).
inputEntity(resume(_140)).
inputEntity(suspend(_140)).
inputEntity(exert(_140)).
inputEntity(transferR(_140,_142,_144)).
inputEntity(transferL(_140,_142,_144)).
inputEntity(transferP(_140,_142,_144)).
inputEntity(contract(_146)=rescission).
inputEntity(negation(contract(_150)=inEffect)).
inputEntity(negation(contract(_150)=suspended)).
inputEntity(negation(contract(_150)=rescission)).
inputEntity(negation(obligation(_150)=inEffect)).
inputEntity(negation(obligation(_150)=suspendedByPower)).
inputEntity(negation(obligation(_150)=suspendedByContract)).
inputEntity(negation(power(_150)=inEffect)).
inputEntity(negation(power(_150)=suspended)).
inputEntity(creditor(_146)=_142).
inputEntity(negation(creditor(_150)=_146)).
inputEntity(negation(transferredR(_150)=_146)).
inputEntity(negation(active_obligation(_150)=true)).
inputEntity(debtor(_146)=_142).
inputEntity(negation(debtor(_150)=_146)).
inputEntity(negation(transferredL(_150)=_146)).
inputEntity(negation(transferredP(_150)=_146)).
inputEntity(negation(active_power(_150)=true)).

outputEntity(contract(_484)=inEffect).
outputEntity(contract(_484)=suspended).
outputEntity(contract(_484)=rescinded).
outputEntity(contract(_484)=unsuccTerm).
outputEntity(contract(_484)=succTerm).
outputEntity(obligation(_484)=created).
outputEntity(obligation(_484)=inEffect).
outputEntity(obligation(_484)=discharged).
outputEntity(obligation(_484)=suspendedByPower).
outputEntity(obligation(_484)=suspendedByContract).
outputEntity(obligation(_484)=fulfilled).
outputEntity(obligation(_484)=violated).
outputEntity(obligation(_484)=unsuccTerm).
outputEntity(power(_484)=created).
outputEntity(pow(_484)=inEffect).
outputEntity(power(_484)=unsuccTerm).
outputEntity(power(_484)=inEffect).
outputEntity(power(_484)=suspended).
outputEntity(power(_484)=succTerm).
outputEntity(transferredR(_484)=none).
outputEntity(transferredL(_484)=none).
outputEntity(transferredP(_484)=none).
outputEntity(active_contract(_484)=true).
outputEntity(active_obligation(_484)=true).
outputEntity(active_power(_484)=true).
outputEntity(rightHolder_obligation(_484)=_480).
outputEntity(liable_obligation(_484)=_480).
outputEntity(performer_obligation(_484)=_480).
outputEntity(rightHolder_power(_484)=_480).
outputEntity(performer_power(_484)=_480).
outputEntity(liable_power(_484)=_480).

event(started(_726)).
event(resumed(_726)).
event(suspension(_726)).
event(rescission(_726)).
event(termination(_726)).
event(fulfillment(_726)).
event(trigger_conditional(_726)).
event(trigger_unconditional(_726)).
event(expires(_726)).
event(activate(_726)).
event(discharge(_726)).
event(suspendByPower(_726)).
event(suspendByContract(_726)).
event(fulfill(_726)).
event(violate(_726)).
event(resumeByPower(_726)).
event(resumeByContract(_726)).
event(terminate(_726)).
event(expire(_726)).
event(resume(_726)).
event(suspend(_726)).
event(exert(_726)).
event(transferR(_726,_728,_730)).
event(transferL(_726,_728,_730)).
event(transferP(_726,_728,_730)).

simpleFluent(contract(_944)=inEffect).
simpleFluent(contract(_944)=suspended).
simpleFluent(contract(_944)=rescinded).
simpleFluent(contract(_944)=unsuccTerm).
simpleFluent(contract(_944)=succTerm).
simpleFluent(obligation(_944)=created).
simpleFluent(obligation(_944)=inEffect).
simpleFluent(obligation(_944)=discharged).
simpleFluent(obligation(_944)=suspendedByPower).
simpleFluent(obligation(_944)=suspendedByContract).
simpleFluent(obligation(_944)=fulfilled).
simpleFluent(obligation(_944)=violated).
simpleFluent(obligation(_944)=unsuccTerm).
simpleFluent(power(_944)=created).
simpleFluent(pow(_944)=inEffect).
simpleFluent(power(_944)=unsuccTerm).
simpleFluent(power(_944)=inEffect).
simpleFluent(power(_944)=suspended).
simpleFluent(power(_944)=succTerm).
simpleFluent(transferredR(_944)=none).
simpleFluent(transferredL(_944)=none).
simpleFluent(transferredP(_944)=none).


sDFluent(active_contract(_1200)=true).
sDFluent(active_obligation(_1200)=true).
sDFluent(active_power(_1200)=true).
sDFluent(rightHolder_obligation(_1200)=_1196).
sDFluent(liable_obligation(_1200)=_1196).
sDFluent(performer_obligation(_1200)=_1196).
sDFluent(rightHolder_power(_1200)=_1196).
sDFluent(performer_power(_1200)=_1196).
sDFluent(liable_power(_1200)=_1196).
sDFluent(contract(_1200)=formed).
sDFluent(obligation(_1200)=none).
sDFluent(power(_1200)=none).
sDFluent(contract(_1200)=rescission).
sDFluent(negation(contract(_1204)=inEffect)).
sDFluent(negation(contract(_1204)=suspended)).
sDFluent(negation(contract(_1204)=rescission)).
sDFluent(negation(obligation(_1204)=inEffect)).
sDFluent(negation(obligation(_1204)=suspendedByPower)).
sDFluent(negation(obligation(_1204)=suspendedByContract)).
sDFluent(negation(power(_1204)=inEffect)).
sDFluent(negation(power(_1204)=suspended)).
sDFluent(creditor(_1200)=_1196).
sDFluent(negation(creditor(_1204)=_1200)).
sDFluent(negation(transferredR(_1204)=_1200)).
sDFluent(negation(active_obligation(_1204)=true)).
sDFluent(debtor(_1200)=_1196).
sDFluent(negation(debtor(_1204)=_1200)).
sDFluent(negation(transferredL(_1204)=_1200)).
sDFluent(negation(transferredP(_1204)=_1200)).
sDFluent(negation(active_power(_1204)=true)).

index(started(_1382),_1382).
index(resumed(_1382),_1382).
index(suspension(_1382),_1382).
index(rescission(_1382),_1382).
index(termination(_1382),_1382).
index(fulfillment(_1382),_1382).
index(trigger_conditional(_1382),_1382).
index(trigger_unconditional(_1382),_1382).
index(expires(_1382),_1382).
index(activate(_1382),_1382).
index(discharge(_1382),_1382).
index(suspendByPower(_1382),_1382).
index(suspendByContract(_1382),_1382).
index(fulfill(_1382),_1382).
index(violate(_1382),_1382).
index(resumeByPower(_1382),_1382).
index(resumeByContract(_1382),_1382).
index(terminate(_1382),_1382).
index(expire(_1382),_1382).
index(resume(_1382),_1382).
index(suspend(_1382),_1382).
index(exert(_1382),_1382).
index(transferR(_1382,_1442,_1444),_1382).
index(transferL(_1382,_1442,_1444),_1382).
index(transferP(_1382,_1442,_1444),_1382).
index(contract(_1382)=inEffect,_1382).
index(contract(_1382)=suspended,_1382).
index(contract(_1382)=rescinded,_1382).
index(contract(_1382)=unsuccTerm,_1382).
index(contract(_1382)=succTerm,_1382).
index(obligation(_1382)=created,_1382).
index(obligation(_1382)=inEffect,_1382).
index(obligation(_1382)=discharged,_1382).
index(obligation(_1382)=suspendedByPower,_1382).
index(obligation(_1382)=suspendedByContract,_1382).
index(obligation(_1382)=fulfilled,_1382).
index(obligation(_1382)=violated,_1382).
index(obligation(_1382)=unsuccTerm,_1382).
index(power(_1382)=created,_1382).
index(pow(_1382)=inEffect,_1382).
index(power(_1382)=unsuccTerm,_1382).
index(power(_1382)=inEffect,_1382).
index(power(_1382)=suspended,_1382).
index(power(_1382)=succTerm,_1382).
index(transferredR(_1382)=none,_1382).
index(transferredL(_1382)=none,_1382).
index(transferredP(_1382)=none,_1382).
index(active_contract(_1382)=true,_1382).
index(active_obligation(_1382)=true,_1382).
index(active_power(_1382)=true,_1382).
index(rightHolder_obligation(_1382)=_1442,_1382).
index(liable_obligation(_1382)=_1442,_1382).
index(performer_obligation(_1382)=_1442,_1382).
index(rightHolder_power(_1382)=_1442,_1382).
index(performer_power(_1382)=_1442,_1382).
index(liable_power(_1382)=_1442,_1382).
index(contract(_1382)=formed,_1382).
index(obligation(_1382)=none,_1382).
index(power(_1382)=none,_1382).
index(contract(_1382)=rescission,_1382).
index(creditor(_1382)=_1442,_1382).
index(debtor(_1382)=_1442,_1382).

cyclic(contract(_1940)=inEffect).
cyclic(contract(_1940)=suspended).
cyclic(obligation(_1940)=inEffect).
cyclic(obligation(_1940)=suspendedByPower).
cyclic(obligation(_1940)=suspendedByContract).
cyclic(power(_1940)=inEffect).
cyclic(power(_1940)=suspended).

cachingOrder2(_2436, contract(_2436)=inEffect) :- % level in dependency graph: 1, processing order in component: 1
     c(_2436).

cachingOrder2(_2452, contract(_2452)=suspended) :- % level in dependency graph: 1, processing order in component: 2
     c(_2452).

cachingOrder2(_2468, contract(_2468)=rescinded) :- % level in dependency graph: 1, processing order in component: 3
     c(_2468).

cachingOrder2(_2484, contract(_2484)=unsuccTerm) :- % level in dependency graph: 1, processing order in component: 4
     c(_2484).

cachingOrder2(_2500, contract(_2500)=succTerm) :- % level in dependency graph: 1, processing order in component: 5
     c(_2500).

cachingOrder2(_2516, contract(_2516)=formed) :- % level in dependency graph: 1, processing order in component: 6
     c(_2516).

cachingOrder2(_2286, obligation(_2286)=created) :- % level in dependency graph: 1, processing order in component: 1
     o(_2286).

cachingOrder2(_2302, obligation(_2302)=inEffect) :- % level in dependency graph: 1, processing order in component: 2
     o(_2302).

cachingOrder2(_2318, obligation(_2318)=discharged) :- % level in dependency graph: 1, processing order in component: 3
     o(_2318).

cachingOrder2(_2334, obligation(_2334)=suspendedByPower) :- % level in dependency graph: 1, processing order in component: 4
     o(_2334).

cachingOrder2(_2350, obligation(_2350)=suspendedByContract) :- % level in dependency graph: 1, processing order in component: 5
     o(_2350).

cachingOrder2(_2366, obligation(_2366)=fulfilled) :- % level in dependency graph: 1, processing order in component: 6
     o(_2366).

cachingOrder2(_2382, obligation(_2382)=violated) :- % level in dependency graph: 1, processing order in component: 7
     o(_2382).

cachingOrder2(_2398, obligation(_2398)=unsuccTerm) :- % level in dependency graph: 1, processing order in component: 8
     o(_2398).

cachingOrder2(_2184, power(_2184)=created) :- % level in dependency graph: 1, processing order in component: 1
     pow(_2184).

cachingOrder2(_2200, power(_2200)=unsuccTerm) :- % level in dependency graph: 1, processing order in component: 2
     pow(_2200).

cachingOrder2(_2216, power(_2216)=inEffect) :- % level in dependency graph: 1, processing order in component: 3
     pow(_2216).

cachingOrder2(_2232, power(_2232)=suspended) :- % level in dependency graph: 1, processing order in component: 4
     pow(_2232).

cachingOrder2(_2248, power(_2248)=succTerm) :- % level in dependency graph: 1, processing order in component: 5
     pow(_2248).

cachingOrder2(_2162, transferredR(_2162)=none) :- % level in dependency graph: 1, processing order in component: 1
     o_or_pow(_2162).

cachingOrder2(_2140, transferredL(_2140)=none) :- % level in dependency graph: 1, processing order in component: 1
     o_or_pow(_2140).

cachingOrder2(_2118, transferredP(_2118)=none) :- % level in dependency graph: 1, processing order in component: 1
     o_or_pow(_2118).

cachingOrder2(_4192, active_contract(_4192)=true) :- % level in dependency graph: 2, processing order in component: 1
     c(_4192).

cachingOrder2(_4170, active_obligation(_4170)=true) :- % level in dependency graph: 2, processing order in component: 1
     o(_4170).

cachingOrder2(_4148, active_power(_4148)=true) :- % level in dependency graph: 2, processing order in component: 1
     pow(_4148).

cachingOrder2(_4610, rightHolder_obligation(_4610)=_4606) :- % level in dependency graph: 3, processing order in component: 1
     o(_4610),party(_4606).

cachingOrder2(_4588, liable_obligation(_4588)=_4584) :- % level in dependency graph: 3, processing order in component: 1
     o(_4588),party(_4584).

cachingOrder2(_4566, performer_obligation(_4566)=_4562) :- % level in dependency graph: 3, processing order in component: 1
     o(_4566),party(_4562).

cachingOrder2(_4544, rightHolder_power(_4544)=_4540) :- % level in dependency graph: 3, processing order in component: 1
     pow(_4544),party(_4540).

cachingOrder2(_4522, performer_power(_4522)=_4518) :- % level in dependency graph: 3, processing order in component: 1
     pow(_4522),party(_4518).

cachingOrder2(_4500, liable_power(_4500)=_4496) :- % level in dependency graph: 3, processing order in component: 1
     pow(_4500),party(_4496).

