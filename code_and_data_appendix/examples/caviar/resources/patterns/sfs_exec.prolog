:- dynamic id/1.

initiatedAt(person(_7552)=true, _7598, _7522, _7604) :-
     happensAtProcessedIE(_7552,start(walking(_7552)=true),_7522),_7598=<_7522,_7522<_7604,
     \+happensAtIE(disappear(_7552),_7522).

initiatedAt(person(_7552)=true, _7598, _7522, _7604) :-
     happensAtProcessedIE(_7552,start(running(_7552)=true),_7522),_7598=<_7522,_7522<_7604,
     \+happensAtIE(disappear(_7552),_7522).

initiatedAt(person(_7552)=true, _7598, _7522, _7604) :-
     happensAtProcessedIE(_7552,start(active(_7552)=true),_7522),_7598=<_7522,_7522<_7604,
     \+happensAtIE(disappear(_7552),_7522).

initiatedAt(person(_7552)=true, _7598, _7522, _7604) :-
     happensAtProcessedIE(_7552,start(abrupt(_7552)=true),_7522),_7598=<_7522,_7522<_7604,
     \+happensAtIE(disappear(_7552),_7522).

initiatedAt(person(_7552)=false, _7568, _7522, _7574) :-
     happensAtIE(disappear(_7552),_7522),
     _7568=<_7522,
     _7522<_7574.

initiatedAt(leaving_object(_7552,_7554)=true, _7638, _7522, _7644) :-
     happensAtIE(appear(_7554),_7522),_7638=<_7522,_7522<_7644,
     holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     holdsAtProcessedSimpleFluent(_7552,person(_7552)=true,_7522),
     holdsAtProcessedSimpleFluent(_7552,closeSymmetric30(_7552,_7554)=true,_7522).

initiatedAt(leaving_object(_7552,_7554)=false, _7570, _7522, _7576) :-
     happensAtIE(disappear(_7554),_7522),
     _7570=<_7522,
     _7522<_7576.

initiatedAt(close24(_7552,_7554)=true, _7590, _7522, _7596) :-
     happensAtProcessedIE(_7552,start(distance(_7552,_7554,24)=true),_7522),_7590=<_7522,_7522<_7596.

initiatedAt(close25(_7552,_7554)=true, _7588, _7522, _7594) :-
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),_7588=<_7522,_7522<_7594.

initiatedAt(close25(_7552,_7554)=true, _7590, _7522, _7596) :-
     happensAtProcessedIE(_7552,start(distance(_7552,_7554,25)=true),_7522),_7590=<_7522,_7522<_7596.

initiatedAt(close30(_7552,_7554)=true, _7588, _7522, _7594) :-
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),_7588=<_7522,_7522<_7594.

initiatedAt(close30(_7552,_7554)=true, _7590, _7522, _7596) :-
     happensAtProcessedIE(_7552,start(distance(_7552,_7554,30)=true),_7522),_7590=<_7522,_7522<_7596.

initiatedAt(close34(_7552,_7554)=true, _7588, _7522, _7594) :-
     happensAtProcessedSimpleFluent(_7552,start(close30(_7552,_7554)=true),_7522),_7588=<_7522,_7522<_7594.

initiatedAt(close34(_7552,_7554)=true, _7590, _7522, _7596) :-
     happensAtProcessedIE(_7552,start(distance(_7552,_7554,34)=true),_7522),_7590=<_7522,_7522<_7596.

initiatedAt(closeSymmetric30(_7552,_7554)=true, _7588, _7522, _7594) :-
     happensAtProcessedSimpleFluent(_7552,start(close30(_7552,_7554)=true),_7522),_7588=<_7522,_7522<_7594.

initiatedAt(closeSymmetric30(_7552,_7554)=true, _7588, _7522, _7594) :-
     happensAtProcessedSimpleFluent(_7554,start(close30(_7554,_7552)=true),_7522),_7588=<_7522,_7522<_7594.

initiatedAt(activeOrInactivePerson(_7552)=true, _7584, _7522, _7590) :-
     happensAtProcessedIE(_7552,start(active(_7552)=true),_7522),_7584=<_7522,_7522<_7590.

initiatedAt(activeOrInactivePerson(_7552)=true, _7610, _7522, _7616) :-
     happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),_7610=<_7522,_7522<_7616,
     happensAtProcessedSimpleFluent(_7552,start(person(_7552)=true),_7522).

initiatedAt(activeOrInactivePerson(_7552)=true, _7636, _7522, _7642) :-
     happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),_7636=<_7522,_7522<_7642,
     holdsAtProcessedSimpleFluent(_7552,person(_7552)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(person(_7552)=true),_7522).

initiatedAt(activeOrInactivePerson(_7552)=true, _7636, _7522, _7642) :-
     happensAtProcessedSimpleFluent(_7552,start(person(_7552)=true),_7522),_7636=<_7522,_7522<_7642,
     \+happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),
     holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7692, _7522, _7698) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7692=<_7522,_7522<_7698,
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7722, _7522, _7728) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7722=<_7522,_7522<_7728,
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7722, _7522, _7728) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7722=<_7522,_7522<_7728,
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7752, _7522, _7758) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7752=<_7522,_7522<_7758,
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7718, _7522, _7724) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7718=<_7522,_7522<_7724,
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7748, _7522, _7754) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7748=<_7522,_7522<_7754,
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7748, _7522, _7754) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7748=<_7522,_7522<_7754,
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7778, _7522, _7784) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7778=<_7522,_7522<_7784,
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7720, _7522, _7726) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7720=<_7522,_7522<_7726,
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7750, _7522, _7756) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7750=<_7522,_7522<_7756,
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7750, _7522, _7756) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7750=<_7522,_7522<_7756,
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7780, _7522, _7786) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7780=<_7522,_7522<_7786,
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7746, _7522, _7752) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7746=<_7522,_7522<_7752,
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7776, _7522, _7782) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7776=<_7522,_7522<_7782,
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7776, _7522, _7782) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7776=<_7522,_7522<_7782,
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7806, _7522, _7812) :-
     happensAtProcessedSimpleFluent(_7552,start(activeOrInactivePerson(_7552)=true),_7522),_7806=<_7522,_7522<_7812,
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7718, _7522, _7724) :-
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),_7718=<_7522,_7522<_7724,
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7748, _7522, _7754) :-
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),_7748=<_7522,_7522<_7754,
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7748, _7522, _7754) :-
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),_7748=<_7522,_7522<_7754,
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7778, _7522, _7784) :-
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),_7778=<_7522,_7522<_7784,
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7744, _7522, _7750) :-
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),_7744=<_7522,_7522<_7750,
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7774, _7522, _7780) :-
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),_7774=<_7522,_7522<_7780,
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7774, _7522, _7780) :-
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),_7774=<_7522,_7522<_7780,
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7804, _7522, _7810) :-
     happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),_7804=<_7522,_7522<_7810,
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7746, _7522, _7752) :-
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),_7746=<_7522,_7522<_7752,
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7776, _7522, _7782) :-
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),_7776=<_7522,_7522<_7782,
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7776, _7522, _7782) :-
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),_7776=<_7522,_7522<_7782,
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7806, _7522, _7812) :-
     happensAtProcessedSimpleFluent(_7554,start(person(_7554)=true),_7522),_7806=<_7522,_7522<_7812,
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7772, _7522, _7778) :-
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),_7772=<_7522,_7522<_7778,
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7802, _7522, _7808) :-
     happensAtProcessedIE(_7554,end(running(_7554)=true),_7522),_7802=<_7522,_7522<_7808,
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting1(_7552,_7554)=true, _7802, _7522, _7808) :-
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),_7802=<_7522,_7522<_7808,
     \+happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),
     \+holdsAtProcessedIE(_7554,running(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7554,person(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,activeOrInactivePerson(_7552)=true,_7522).

initiatedAt(greeting2(_7552,_7554)=true, _7640, _7522, _7646) :-
     happensAtProcessedIE(_7552,start(walking(_7552)=true),_7522),_7640=<_7522,_7522<_7646,
     happensAtProcessedSimpleFluent(_7554,start(activeOrInactivePerson(_7554)=true),_7522),
     happensAtProcessedSimpleFluent(_7554,start(close25(_7554,_7552)=true),_7522).

initiatedAt(greeting2(_7552,_7554)=true, _7668, _7522, _7674) :-
     happensAtProcessedIE(_7552,start(walking(_7552)=true),_7522),_7668=<_7522,_7522<_7674,
     happensAtProcessedSimpleFluent(_7554,start(activeOrInactivePerson(_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7554,close25(_7554,_7552)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(close25(_7554,_7552)=true),_7522).

initiatedAt(greeting2(_7552,_7554)=true, _7666, _7522, _7672) :-
     happensAtProcessedIE(_7552,start(walking(_7552)=true),_7522),_7666=<_7522,_7522<_7672,
     holdsAtProcessedSimpleFluent(_7554,activeOrInactivePerson(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(activeOrInactivePerson(_7554)=true),_7522),
     happensAtProcessedSimpleFluent(_7554,start(close25(_7554,_7552)=true),_7522).

initiatedAt(greeting2(_7552,_7554)=true, _7694, _7522, _7700) :-
     happensAtProcessedIE(_7552,start(walking(_7552)=true),_7522),_7694=<_7522,_7522<_7700,
     holdsAtProcessedSimpleFluent(_7554,activeOrInactivePerson(_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(activeOrInactivePerson(_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7554,close25(_7554,_7552)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(close25(_7554,_7552)=true),_7522).

initiatedAt(greeting2(_7552,_7554)=true, _7666, _7522, _7672) :-
     happensAtProcessedSimpleFluent(_7554,start(activeOrInactivePerson(_7554)=true),_7522),_7666=<_7522,_7522<_7672,
     happensAtProcessedSimpleFluent(_7554,start(close25(_7554,_7552)=true),_7522),
     \+happensAtProcessedIE(_7552,end(walking(_7552)=true),_7522),
     holdsAtProcessedIE(_7552,walking(_7552)=true,_7522).

initiatedAt(greeting2(_7552,_7554)=true, _7694, _7522, _7700) :-
     happensAtProcessedSimpleFluent(_7554,start(activeOrInactivePerson(_7554)=true),_7522),_7694=<_7522,_7522<_7700,
     holdsAtProcessedSimpleFluent(_7554,close25(_7554,_7552)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,end(close25(_7554,_7552)=true),_7522),
     \+happensAtProcessedIE(_7552,end(walking(_7552)=true),_7522),
     holdsAtProcessedIE(_7552,walking(_7552)=true,_7522).

initiatedAt(greeting2(_7552,_7554)=true, _7692, _7522, _7698) :-
     happensAtProcessedSimpleFluent(_7554,start(close25(_7554,_7552)=true),_7522),_7692=<_7522,_7522<_7698,
     \+happensAtProcessedSimpleFluent(_7554,end(activeOrInactivePerson(_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7554,activeOrInactivePerson(_7554)=true,_7522),
     \+happensAtProcessedIE(_7552,end(walking(_7552)=true),_7522),
     holdsAtProcessedIE(_7552,walking(_7552)=true,_7522).

initiatedAt(moving(_7552,_7554)=true, _7640, _7522, _7646) :-
     happensAtProcessedIE(_7552,start(walking(_7552)=true),_7522),_7640=<_7522,_7522<_7646,
     happensAtProcessedIE(_7554,start(walking(_7554)=true),_7522),
     happensAtProcessedSimpleFluent(_7552,start(close34(_7552,_7554)=true),_7522).

initiatedAt(moving(_7552,_7554)=true, _7668, _7522, _7674) :-
     happensAtProcessedIE(_7552,start(walking(_7552)=true),_7522),_7668=<_7522,_7522<_7674,
     happensAtProcessedIE(_7554,start(walking(_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close34(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close34(_7552,_7554)=true),_7522).

initiatedAt(moving(_7552,_7554)=true, _7666, _7522, _7672) :-
     happensAtProcessedIE(_7552,start(walking(_7552)=true),_7522),_7666=<_7522,_7522<_7672,
     holdsAtProcessedIE(_7554,walking(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,end(walking(_7554)=true),_7522),
     happensAtProcessedSimpleFluent(_7552,start(close34(_7552,_7554)=true),_7522).

initiatedAt(moving(_7552,_7554)=true, _7694, _7522, _7700) :-
     happensAtProcessedIE(_7552,start(walking(_7552)=true),_7522),_7694=<_7522,_7522<_7700,
     holdsAtProcessedIE(_7554,walking(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,end(walking(_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close34(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close34(_7552,_7554)=true),_7522).

initiatedAt(moving(_7552,_7554)=true, _7666, _7522, _7672) :-
     happensAtProcessedIE(_7554,start(walking(_7554)=true),_7522),_7666=<_7522,_7522<_7672,
     happensAtProcessedSimpleFluent(_7552,start(close34(_7552,_7554)=true),_7522),
     \+happensAtProcessedIE(_7552,end(walking(_7552)=true),_7522),
     holdsAtProcessedIE(_7552,walking(_7552)=true,_7522).

initiatedAt(moving(_7552,_7554)=true, _7694, _7522, _7700) :-
     happensAtProcessedIE(_7554,start(walking(_7554)=true),_7522),_7694=<_7522,_7522<_7700,
     holdsAtProcessedSimpleFluent(_7552,close34(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close34(_7552,_7554)=true),_7522),
     \+happensAtProcessedIE(_7552,end(walking(_7552)=true),_7522),
     holdsAtProcessedIE(_7552,walking(_7552)=true,_7522).

initiatedAt(moving(_7552,_7554)=true, _7692, _7522, _7698) :-
     happensAtProcessedSimpleFluent(_7552,start(close34(_7552,_7554)=true),_7522),_7692=<_7522,_7522<_7698,
     \+happensAtProcessedIE(_7554,end(walking(_7554)=true),_7522),
     holdsAtProcessedIE(_7554,walking(_7554)=true,_7522),
     \+happensAtProcessedIE(_7552,end(walking(_7552)=true),_7522),
     holdsAtProcessedIE(_7552,walking(_7552)=true,_7522).

initiatedAt(fighting(_7552,_7554)=true, _7666, _7522, _7672) :-
     happensAtProcessedIE(_7552,start(abrupt(_7552)=true),_7522),_7666=<_7522,_7522<_7672,
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7696, _7522, _7702) :-
     happensAtProcessedIE(_7552,start(abrupt(_7552)=true),_7522),_7696=<_7522,_7522<_7702,
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7696, _7522, _7702) :-
     happensAtProcessedIE(_7552,start(abrupt(_7552)=true),_7522),_7696=<_7522,_7522<_7702,
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7726, _7522, _7732) :-
     happensAtProcessedIE(_7552,start(abrupt(_7552)=true),_7522),_7726=<_7522,_7522<_7732,
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7694, _7522, _7700) :-
     happensAtProcessedIE(_7552,start(abrupt(_7552)=true),_7522),_7694=<_7522,_7522<_7700,
     holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7724, _7522, _7730) :-
     happensAtProcessedIE(_7552,start(abrupt(_7552)=true),_7522),_7724=<_7522,_7522<_7730,
     holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7724, _7522, _7730) :-
     happensAtProcessedIE(_7552,start(abrupt(_7552)=true),_7522),_7724=<_7522,_7522<_7730,
     holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7754, _7522, _7760) :-
     happensAtProcessedIE(_7552,start(abrupt(_7552)=true),_7522),_7754=<_7522,_7522<_7760,
     holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7692, _7522, _7698) :-
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),_7692=<_7522,_7522<_7698,
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522),
     \+happensAtProcessedIE(_7552,end(abrupt(_7552)=true),_7522),
     holdsAtProcessedIE(_7552,abrupt(_7552)=true,_7522).

initiatedAt(fighting(_7552,_7554)=true, _7722, _7522, _7728) :-
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),_7722=<_7522,_7522<_7728,
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(inactive(_7554)=true),_7522),
     \+happensAtProcessedIE(_7552,end(abrupt(_7552)=true),_7522),
     holdsAtProcessedIE(_7552,abrupt(_7552)=true,_7522).

initiatedAt(fighting(_7552,_7554)=true, _7722, _7522, _7728) :-
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),_7722=<_7522,_7522<_7728,
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522),
     \+happensAtProcessedIE(_7552,end(abrupt(_7552)=true),_7522),
     holdsAtProcessedIE(_7552,abrupt(_7552)=true,_7522).

initiatedAt(fighting(_7552,_7554)=true, _7752, _7522, _7758) :-
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),_7752=<_7522,_7522<_7758,
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(inactive(_7554)=true),_7522),
     \+happensAtProcessedIE(_7552,end(abrupt(_7552)=true),_7522),
     holdsAtProcessedIE(_7552,abrupt(_7552)=true,_7522).

initiatedAt(fighting(_7552,_7554)=true, _7720, _7522, _7726) :-
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),_7720=<_7522,_7522<_7726,
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522),
     \+happensAtProcessedIE(_7552,end(abrupt(_7552)=true),_7522),
     holdsAtProcessedIE(_7552,abrupt(_7552)=true,_7522).

initiatedAt(fighting(_7552,_7554)=true, _7750, _7522, _7756) :-
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),_7750=<_7522,_7522<_7756,
     \+holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(inactive(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522),
     \+happensAtProcessedIE(_7552,end(abrupt(_7552)=true),_7522),
     holdsAtProcessedIE(_7552,abrupt(_7552)=true,_7522).

initiatedAt(fighting(_7552,_7554)=true, _7750, _7522, _7756) :-
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522),_7750=<_7522,_7522<_7756,
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522),
     \+happensAtProcessedIE(_7552,end(abrupt(_7552)=true),_7522),
     holdsAtProcessedIE(_7552,abrupt(_7552)=true,_7522).

initiatedAt(fighting(_7552,_7554)=true, _7666, _7522, _7672) :-
     happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),_7666=<_7522,_7522<_7672,
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7696, _7522, _7702) :-
     happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),_7696=<_7522,_7522<_7702,
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7696, _7522, _7702) :-
     happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),_7696=<_7522,_7522<_7702,
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7726, _7522, _7732) :-
     happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),_7726=<_7522,_7522<_7732,
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7694, _7522, _7700) :-
     happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),_7694=<_7522,_7522<_7700,
     holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7724, _7522, _7730) :-
     happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),_7724=<_7522,_7522<_7730,
     holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7724, _7522, _7730) :-
     happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),_7724=<_7522,_7522<_7730,
     holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7754, _7522, _7760) :-
     happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),_7754=<_7522,_7522<_7760,
     holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(inactive(_7554)=true),_7522).

initiatedAt(fighting(_7552,_7554)=true, _7692, _7522, _7698) :-
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),_7692=<_7522,_7522<_7698,
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522),
     \+happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),
     holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522).

initiatedAt(fighting(_7552,_7554)=true, _7722, _7522, _7728) :-
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),_7722=<_7522,_7522<_7728,
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(inactive(_7554)=true),_7522),
     \+happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),
     holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522).

initiatedAt(fighting(_7552,_7554)=true, _7722, _7522, _7728) :-
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),_7722=<_7522,_7522<_7728,
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522),
     \+happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),
     holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522).

initiatedAt(fighting(_7552,_7554)=true, _7752, _7522, _7758) :-
     happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),_7752=<_7522,_7522<_7758,
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(inactive(_7554)=true),_7522),
     \+happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),
     holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522).

initiatedAt(fighting(_7552,_7554)=true, _7720, _7522, _7726) :-
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),_7720=<_7522,_7522<_7726,
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),
     holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522).

initiatedAt(fighting(_7552,_7554)=true, _7750, _7522, _7756) :-
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),_7750=<_7522,_7522<_7756,
     \+holdsAtProcessedIE(_7554,inactive(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(inactive(_7554)=true),_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),
     holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522).

initiatedAt(fighting(_7552,_7554)=true, _7750, _7522, _7756) :-
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522),_7750=<_7522,_7522<_7756,
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),
     holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),
     holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522).

terminatedAt(close24(_7552,_7554)=true, _7590, _7522, _7596) :-
     happensAtProcessedIE(_7552,end(distance(_7552,_7554,24)=true),_7522),_7590=<_7522,_7522<_7596.

terminatedAt(close25(_7552,_7554)=true, _7618, _7522, _7624) :-
     happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),_7618=<_7522,_7522<_7624,
     happensAtProcessedIE(_7552,end(distance(_7552,_7554,25)=true),_7522).

terminatedAt(close25(_7552,_7554)=true, _7652, _7522, _7658) :-
     happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),_7652=<_7522,_7522<_7658,
     \+holdsAtProcessedIE(_7552,distance(_7552,_7554,25)=true,_7522),
     \+happensAtProcessedIE(_7552,start(distance(_7552,_7554,25)=true),_7522).

terminatedAt(close25(_7552,_7554)=true, _7650, _7522, _7656) :-
     happensAtProcessedIE(_7552,end(distance(_7552,_7554,25)=true),_7522),_7650=<_7522,_7522<_7656,
     \+happensAtProcessedSimpleFluent(_7552,start(close24(_7552,_7554)=true),_7522),
     \+holdsAtProcessedSimpleFluent(_7552,close24(_7552,_7554)=true,_7522).

terminatedAt(close30(_7552,_7554)=true, _7618, _7522, _7624) :-
     happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),_7618=<_7522,_7522<_7624,
     happensAtProcessedIE(_7552,end(distance(_7552,_7554,30)=true),_7522).

terminatedAt(close30(_7552,_7554)=true, _7652, _7522, _7658) :-
     happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),_7652=<_7522,_7522<_7658,
     \+holdsAtProcessedIE(_7552,distance(_7552,_7554,30)=true,_7522),
     \+happensAtProcessedIE(_7552,start(distance(_7552,_7554,30)=true),_7522).

terminatedAt(close30(_7552,_7554)=true, _7650, _7522, _7656) :-
     happensAtProcessedIE(_7552,end(distance(_7552,_7554,30)=true),_7522),_7650=<_7522,_7522<_7656,
     \+happensAtProcessedSimpleFluent(_7552,start(close25(_7552,_7554)=true),_7522),
     \+holdsAtProcessedSimpleFluent(_7552,close25(_7552,_7554)=true,_7522).

terminatedAt(close34(_7552,_7554)=true, _7618, _7522, _7624) :-
     happensAtProcessedSimpleFluent(_7552,end(close30(_7552,_7554)=true),_7522),_7618=<_7522,_7522<_7624,
     happensAtProcessedIE(_7552,end(distance(_7552,_7554,34)=true),_7522).

terminatedAt(close34(_7552,_7554)=true, _7652, _7522, _7658) :-
     happensAtProcessedSimpleFluent(_7552,end(close30(_7552,_7554)=true),_7522),_7652=<_7522,_7522<_7658,
     \+holdsAtProcessedIE(_7552,distance(_7552,_7554,34)=true,_7522),
     \+happensAtProcessedIE(_7552,start(distance(_7552,_7554,34)=true),_7522).

terminatedAt(close34(_7552,_7554)=true, _7650, _7522, _7656) :-
     happensAtProcessedIE(_7552,end(distance(_7552,_7554,34)=true),_7522),_7650=<_7522,_7522<_7656,
     \+happensAtProcessedSimpleFluent(_7552,start(close30(_7552,_7554)=true),_7522),
     \+holdsAtProcessedSimpleFluent(_7552,close30(_7552,_7554)=true,_7522).

terminatedAt(closeSymmetric30(_7552,_7554)=true, _7616, _7522, _7622) :-
     happensAtProcessedSimpleFluent(_7552,end(close30(_7552,_7554)=true),_7522),_7616=<_7522,_7522<_7622,
     happensAtProcessedSimpleFluent(_7554,end(close30(_7554,_7552)=true),_7522).

terminatedAt(closeSymmetric30(_7552,_7554)=true, _7648, _7522, _7654) :-
     happensAtProcessedSimpleFluent(_7552,end(close30(_7552,_7554)=true),_7522),_7648=<_7522,_7522<_7654,
     \+holdsAtProcessedSimpleFluent(_7554,close30(_7554,_7552)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7554,start(close30(_7554,_7552)=true),_7522).

terminatedAt(closeSymmetric30(_7552,_7554)=true, _7648, _7522, _7654) :-
     happensAtProcessedSimpleFluent(_7554,end(close30(_7554,_7552)=true),_7522),_7648=<_7522,_7522<_7654,
     \+happensAtProcessedSimpleFluent(_7552,start(close30(_7552,_7554)=true),_7522),
     \+holdsAtProcessedSimpleFluent(_7552,close30(_7552,_7554)=true,_7522).

terminatedAt(activeOrInactivePerson(_7552)=true, _7610, _7522, _7616) :-
     happensAtProcessedIE(_7552,end(active(_7552)=true),_7522),_7610=<_7522,_7522<_7616,
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522).

terminatedAt(activeOrInactivePerson(_7552)=true, _7640, _7522, _7646) :-
     happensAtProcessedIE(_7552,end(active(_7552)=true),_7522),_7640=<_7522,_7522<_7646,
     \+holdsAtProcessedIE(_7552,inactive(_7552)=true,_7522),
     \+happensAtProcessedIE(_7552,start(inactive(_7552)=true),_7522).

terminatedAt(activeOrInactivePerson(_7552)=true, _7640, _7522, _7646) :-
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),_7640=<_7522,_7522<_7646,
     \+happensAtProcessedIE(_7552,start(active(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7552,active(_7552)=true,_7522).

terminatedAt(activeOrInactivePerson(_7552)=true, _7610, _7522, _7616) :-
     happensAtProcessedIE(_7552,end(active(_7552)=true),_7522),_7610=<_7522,_7522<_7616,
     happensAtProcessedSimpleFluent(_7552,end(person(_7552)=true),_7522).

terminatedAt(activeOrInactivePerson(_7552)=true, _7640, _7522, _7646) :-
     happensAtProcessedIE(_7552,end(active(_7552)=true),_7522),_7640=<_7522,_7522<_7646,
     \+holdsAtProcessedSimpleFluent(_7552,person(_7552)=true,_7522),
     \+happensAtProcessedSimpleFluent(_7552,start(person(_7552)=true),_7522).

terminatedAt(activeOrInactivePerson(_7552)=true, _7640, _7522, _7646) :-
     happensAtProcessedSimpleFluent(_7552,end(person(_7552)=true),_7522),_7640=<_7522,_7522<_7646,
     \+happensAtProcessedIE(_7552,start(active(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7552,active(_7552)=true,_7522).

terminatedAt(greeting1(_7552,_7554)=true, _7586, _7522, _7592) :-
     happensAtProcessedSimpleFluent(_7552,end(activeOrInactivePerson(_7552)=true),_7522),_7586=<_7522,_7522<_7592.

terminatedAt(greeting1(_7552,_7554)=true, _7586, _7522, _7592) :-
     happensAtProcessedSimpleFluent(_7554,end(person(_7554)=true),_7522),_7586=<_7522,_7522<_7592.

terminatedAt(greeting1(_7552,_7554)=true, _7588, _7522, _7594) :-
     happensAtProcessedSimpleFluent(_7552,end(close25(_7552,_7554)=true),_7522),_7588=<_7522,_7522<_7594.

terminatedAt(greeting1(_7552,_7554)=true, _7586, _7522, _7592) :-
     happensAtProcessedIE(_7554,start(running(_7554)=true),_7522),_7586=<_7522,_7522<_7592.

terminatedAt(greeting1(_7552,_7554)=true, _7586, _7522, _7592) :-
     happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522),_7586=<_7522,_7522<_7592.

terminatedAt(greeting2(_7552,_7554)=true, _7586, _7522, _7592) :-
     happensAtProcessedIE(_7552,end(walking(_7552)=true),_7522),_7586=<_7522,_7522<_7592.

terminatedAt(greeting2(_7552,_7554)=true, _7586, _7522, _7592) :-
     happensAtProcessedSimpleFluent(_7554,end(activeOrInactivePerson(_7554)=true),_7522),_7586=<_7522,_7522<_7592.

terminatedAt(greeting2(_7552,_7554)=true, _7588, _7522, _7594) :-
     happensAtProcessedSimpleFluent(_7554,end(close25(_7554,_7552)=true),_7522),_7588=<_7522,_7522<_7594.

terminatedAt(moving(_7552,_7554)=true, _7586, _7522, _7592) :-
     happensAtProcessedIE(_7552,end(walking(_7552)=true),_7522),_7586=<_7522,_7522<_7592.

terminatedAt(moving(_7552,_7554)=true, _7586, _7522, _7592) :-
     happensAtProcessedIE(_7554,end(walking(_7554)=true),_7522),_7586=<_7522,_7522<_7592.

terminatedAt(moving(_7552,_7554)=true, _7588, _7522, _7594) :-
     happensAtProcessedSimpleFluent(_7552,end(close34(_7552,_7554)=true),_7522),_7588=<_7522,_7522<_7594.

terminatedAt(fighting(_7552,_7554)=true, _7612, _7522, _7618) :-
     happensAtProcessedIE(_7552,end(abrupt(_7552)=true),_7522),_7612=<_7522,_7522<_7618,
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522).

terminatedAt(fighting(_7552,_7554)=true, _7642, _7522, _7648) :-
     happensAtProcessedIE(_7552,end(abrupt(_7552)=true),_7522),_7642=<_7522,_7522<_7648,
     \+holdsAtProcessedIE(_7554,abrupt(_7554)=true,_7522),
     \+happensAtProcessedIE(_7554,start(abrupt(_7554)=true),_7522).

terminatedAt(fighting(_7552,_7554)=true, _7642, _7522, _7648) :-
     happensAtProcessedIE(_7554,end(abrupt(_7554)=true),_7522),_7642=<_7522,_7522<_7648,
     \+happensAtProcessedIE(_7552,start(abrupt(_7552)=true),_7522),
     \+holdsAtProcessedIE(_7552,abrupt(_7552)=true,_7522).

terminatedAt(fighting(_7552,_7554)=true, _7588, _7522, _7594) :-
     happensAtProcessedSimpleFluent(_7552,end(close24(_7552,_7554)=true),_7522),_7588=<_7522,_7522<_7594.

terminatedAt(fighting(_7552,_7554)=true, _7586, _7522, _7592) :-
     happensAtProcessedIE(_7552,end(inactive(_7552)=true),_7522),_7586=<_7522,_7522<_7592.

terminatedAt(fighting(_7552,_7554)=true, _7586, _7522, _7592) :-
     happensAtProcessedIE(_7554,end(inactive(_7554)=true),_7522),_7586=<_7522,_7522<_7592.

buildFromPoints2(_7526, walking(_7526)=true) :-
     id(_7526).

buildFromPoints2(_7526, active(_7526)=true) :-
     id(_7526).

buildFromPoints2(_7526, inactive(_7526)=true) :-
     id(_7526).

buildFromPoints2(_7526, running(_7526)=true) :-
     id(_7526).

buildFromPoints2(_7526, abrupt(_7526)=true) :-
     id(_7526).

points(orientation(_7820)=_7816).

points(appearance(_7820)=_7816).

points(coord(_7820,_7822,_7824)=true).

points(walking(_7820)=true).

points(active(_7820)=true).

points(inactive(_7820)=true).

points(running(_7820)=true).

points(abrupt(_7820)=true).

grounding(appear(_7820)) :- 
     id(_7820).

grounding(disappear(_7820)) :- 
     id(_7820).

grounding(orientation(_7826)=_7822) :- 
     id(_7826).

grounding(appearance(_7826)=_7822) :- 
     id(_7826).

grounding(coord(_7826,_7828,_7830)=_7822) :- 
     id(_7826).

grounding(walking(_7826)=_7822) :- 
     id(_7826).

grounding(active(_7826)=_7822) :- 
     id(_7826).

grounding(inactive(_7826)=_7822) :- 
     id(_7826).

grounding(running(_7826)=_7822) :- 
     id(_7826).

grounding(abrupt(_7826)=_7822) :- 
     id(_7826).

grounding(close24(_7826,_7828)=true) :- 
     id(_7826),id(_7828),_7826@<_7828.

grounding(close25(_7826,_7828)=true) :- 
     id(_7826),id(_7828),_7826@<_7828.

grounding(close30(_7826,_7828)=true) :- 
     id(_7826),id(_7828),_7826@<_7828.

grounding(close34(_7826,_7828)=true) :- 
     id(_7826),id(_7828),_7826@<_7828.

grounding(closeSymmetric30(_7826,_7828)=true) :- 
     id(_7826),id(_7828),_7826@<_7828.

grounding(walking(_7826)=true) :- 
     id(_7826).

grounding(active(_7826)=true) :- 
     id(_7826).

grounding(inactive(_7826)=true) :- 
     id(_7826).

grounding(abrupt(_7826)=true) :- 
     id(_7826).

grounding(running(_7826)=true) :- 
     id(_7826).

grounding(person(_7826)=true) :- 
     id(_7826).

grounding(activeOrInactivePerson(_7826)=true) :- 
     id(_7826).

grounding(greeting1(_7826,_7828)=true) :- 
     id(_7826),id(_7828),_7826@<_7828.

grounding(greeting2(_7826,_7828)=true) :- 
     id(_7826),id(_7828),_7826@<_7828.

grounding(leaving_object(_7826,_7828)=true) :- 
     id(_7826),id(_7828),_7826@<_7828.

grounding(moving(_7826,_7828)=true) :- 
     id(_7826),id(_7828),_7826@<_7828.

grounding(fighting(_7826,_7828)=true) :- 
     id(_7826),id(_7828),_7826@<_7828.

inputEntity(walking(_7588)=true).
inputEntity(disappear(_7582)).
inputEntity(running(_7588)=true).
inputEntity(active(_7588)=true).
inputEntity(abrupt(_7588)=true).
inputEntity(appear(_7582)).
inputEntity(inactive(_7588)=true).
inputEntity(distance(_7588,_7590,_7592)=true).
inputEntity(negation(distance(_7592,_7594,_7596)=true)).
inputEntity(negation(close24(_7592,_7594)=true)).
inputEntity(negation(close25(_7592,_7594)=true)).
inputEntity(negation(close30(_7592,_7594)=true)).
inputEntity(negation(activeOrInactivePerson(_7592)=true)).
inputEntity(negation(person(_7592)=true)).
inputEntity(negation(walking(_7592)=true)).
inputEntity(negation(active(_7592)=true)).
inputEntity(negation(inactive(_7592)=true)).
inputEntity(negation(close34(_7592,_7594)=true)).
inputEntity(negation(abrupt(_7592)=true)).
inputEntity(orientation(_7588)=_7584).
inputEntity(appearance(_7588)=_7584).
inputEntity(coord(_7588,_7590,_7592)=_7584).

outputEntity(person(_7782)=true).
outputEntity(person(_7782)=false).
outputEntity(leaving_object(_7782,_7784)=true).
outputEntity(leaving_object(_7782,_7784)=false).
outputEntity(close24(_7782,_7784)=true).
outputEntity(close25(_7782,_7784)=true).
outputEntity(close30(_7782,_7784)=true).
outputEntity(close34(_7782,_7784)=true).
outputEntity(closeSymmetric30(_7782,_7784)=true).
outputEntity(greeting1(_7782,_7784)=true).
outputEntity(greeting2(_7782,_7784)=true).
outputEntity(activeOrInactivePerson(_7782)=true).
outputEntity(moving(_7782,_7784)=true).
outputEntity(fighting(_7782,_7784)=true).

event(disappear(_7922)).
event(appear(_7922)).

simpleFluent(person(_8002)=true).
simpleFluent(person(_8002)=false).
simpleFluent(leaving_object(_8002,_8004)=true).
simpleFluent(leaving_object(_8002,_8004)=false).
simpleFluent(close24(_8002,_8004)=true).
simpleFluent(close25(_8002,_8004)=true).
simpleFluent(close30(_8002,_8004)=true).
simpleFluent(close34(_8002,_8004)=true).
simpleFluent(closeSymmetric30(_8002,_8004)=true).
simpleFluent(activeOrInactivePerson(_8002)=true).
simpleFluent(greeting1(_8002,_8004)=true).
simpleFluent(greeting2(_8002,_8004)=true).
simpleFluent(moving(_8002,_8004)=true).
simpleFluent(fighting(_8002,_8004)=true).

sDFluent(walking(_8148)=true).
sDFluent(running(_8148)=true).
sDFluent(active(_8148)=true).
sDFluent(abrupt(_8148)=true).
sDFluent(inactive(_8148)=true).
sDFluent(distance(_8148,_8150,_8152)=true).
sDFluent(negation(distance(_8152,_8154,_8156)=true)).
sDFluent(negation(close24(_8152,_8154)=true)).
sDFluent(negation(close25(_8152,_8154)=true)).
sDFluent(negation(close30(_8152,_8154)=true)).
sDFluent(negation(activeOrInactivePerson(_8152)=true)).
sDFluent(negation(person(_8152)=true)).
sDFluent(negation(walking(_8152)=true)).
sDFluent(negation(active(_8152)=true)).
sDFluent(negation(inactive(_8152)=true)).
sDFluent(negation(close34(_8152,_8154)=true)).
sDFluent(negation(abrupt(_8152)=true)).
sDFluent(orientation(_8148)=_8144).
sDFluent(appearance(_8148)=_8144).
sDFluent(coord(_8148,_8150,_8152)=_8144).

index(disappear(_8270),_8270).
index(appear(_8270),_8270).
index(person(_8270)=true,_8270).
index(person(_8270)=false,_8270).
index(leaving_object(_8270,_8336)=true,_8270).
index(leaving_object(_8270,_8336)=false,_8270).
index(close24(_8270,_8336)=true,_8270).
index(close25(_8270,_8336)=true,_8270).
index(close30(_8270,_8336)=true,_8270).
index(close34(_8270,_8336)=true,_8270).
index(closeSymmetric30(_8270,_8336)=true,_8270).
index(activeOrInactivePerson(_8270)=true,_8270).
index(greeting1(_8270,_8336)=true,_8270).
index(greeting2(_8270,_8336)=true,_8270).
index(moving(_8270,_8336)=true,_8270).
index(fighting(_8270,_8336)=true,_8270).
index(walking(_8270)=true,_8270).
index(running(_8270)=true,_8270).
index(active(_8270)=true,_8270).
index(abrupt(_8270)=true,_8270).
index(inactive(_8270)=true,_8270).
index(distance(_8270,_8336,_8338)=true,_8270).
index(orientation(_8270)=_8330,_8270).
index(appearance(_8270)=_8330,_8270).
index(coord(_8270,_8336,_8338)=_8330,_8270).


cachingOrder2(_8712, person(_8712)=true) :- % level in dependency graph: 1, processing order in component: 1
     id(_8712).

cachingOrder2(_8672, close24(_8672,_8674)=true) :- % level in dependency graph: 1, processing order in component: 1
     id(_8672),id(_8674),_8672@<_8674.

cachingOrder2(_9012, close25(_9012,_9014)=true) :- % level in dependency graph: 2, processing order in component: 1
     id(_9012),id(_9014),_9012@<_9014.

cachingOrder2(_8990, activeOrInactivePerson(_8990)=true) :- % level in dependency graph: 2, processing order in component: 1
     id(_8990).

cachingOrder2(_8966, fighting(_8966,_8968)=true) :- % level in dependency graph: 2, processing order in component: 1
     id(_8966),id(_8968),_8966@<_8968.

cachingOrder2(_9424, close30(_9424,_9426)=true) :- % level in dependency graph: 3, processing order in component: 1
     id(_9424),id(_9426),_9424@<_9426.

cachingOrder2(_9400, greeting1(_9400,_9402)=true) :- % level in dependency graph: 3, processing order in component: 1
     id(_9400),id(_9402),_9400@<_9402.

cachingOrder2(_9376, greeting2(_9376,_9378)=true) :- % level in dependency graph: 3, processing order in component: 1
     id(_9376),id(_9378),_9376@<_9378.

cachingOrder2(_9850, close34(_9850,_9852)=true) :- % level in dependency graph: 4, processing order in component: 1
     id(_9850),id(_9852),_9850@<_9852.

cachingOrder2(_9826, closeSymmetric30(_9826,_9828)=true) :- % level in dependency graph: 4, processing order in component: 1
     id(_9826),id(_9828),_9826@<_9828.

cachingOrder2(_10186, leaving_object(_10186,_10188)=true) :- % level in dependency graph: 5, processing order in component: 1
     id(_10186),id(_10188),_10186@<_10188.

cachingOrder2(_10144, moving(_10144,_10146)=true) :- % level in dependency graph: 5, processing order in component: 1
     id(_10144),id(_10146),_10144@<_10146.

collectGrounds([walking(_8192)=true, walking(_8192)=true, disappear(_8192), running(_8192)=true, running(_8192)=true, active(_8192)=true, active(_8192)=true, abrupt(_8192)=true, abrupt(_8192)=true, appear(_8192), inactive(_8192)=true, inactive(_8192)=true, orientation(_8192)=_8206, appearance(_8192)=_8206, coord(_8192,_8212,_8214)=_8206],id(_8192)).

dgrounded(person(_8880)=true, id(_8880)).
dgrounded(leaving_object(_8824,_8826)=true, id(_8824)).
dgrounded(leaving_object(_8824,_8826)=true, id(_8826)).
dgrounded(close24(_8768,_8770)=true, id(_8768)).
dgrounded(close24(_8768,_8770)=true, id(_8770)).
dgrounded(close25(_8712,_8714)=true, id(_8712)).
dgrounded(close25(_8712,_8714)=true, id(_8714)).
dgrounded(close30(_8656,_8658)=true, id(_8656)).
dgrounded(close30(_8656,_8658)=true, id(_8658)).
dgrounded(close34(_8600,_8602)=true, id(_8600)).
dgrounded(close34(_8600,_8602)=true, id(_8602)).
dgrounded(closeSymmetric30(_8544,_8546)=true, id(_8544)).
dgrounded(closeSymmetric30(_8544,_8546)=true, id(_8546)).
dgrounded(greeting1(_8488,_8490)=true, id(_8488)).
dgrounded(greeting1(_8488,_8490)=true, id(_8490)).
dgrounded(greeting2(_8432,_8434)=true, id(_8432)).
dgrounded(greeting2(_8432,_8434)=true, id(_8434)).
dgrounded(activeOrInactivePerson(_8400)=true, id(_8400)).
dgrounded(moving(_8344,_8346)=true, id(_8344)).
dgrounded(moving(_8344,_8346)=true, id(_8346)).
dgrounded(fighting(_8288,_8290)=true, id(_8288)).
dgrounded(fighting(_8288,_8290)=true, id(_8290)).
