initiatedAt(person(_27790)=true, _27702) :-
     happensAt(start(walking(_27790)=true),_27702),
     \+happensAt(disappear(_27790),_27702).

initiatedAt(person(_27790)=true, _27702) :-
     happensAt(start(running(_27790)=true),_27702),
     \+happensAt(disappear(_27790),_27702).

initiatedAt(person(_27790)=true, _27702) :-
     happensAt(start(active(_27790)=true),_27702),
     \+happensAt(disappear(_27790),_27702).

initiatedAt(person(_27790)=true, _27702) :-
     happensAt(start(abrupt(_27790)=true),_27702),
     \+happensAt(disappear(_27790),_27702).

initiatedAt(person(_27790)=false, _27702) :-
     happensAt(disappear(_27790),_27702).

initiatedAt(leaving_object(_27790,_27792)=true, _27702) :-
     happensAt(appear(_27792),_27702),
     holdsAt(inactive(_27792)=true,_27702),
     holdsAt(person(_27790)=true,_27702),
     holdsAt(closeSymmetric30(_27790,_27792)=true,_27702).

initiatedAt(leaving_object(_27790,_27792)=false, _27702) :-
     happensAt(disappear(_27792),_27702).

initiatedAt(close24(_27790,_27792)=true, _27702) :-
     happensAt(start(distance(_27790,_27792,24)=true),_27702).

initiatedAt(close25(_27790,_27792)=true, _27702) :-
     happensAt(start(close24(_27790,_27792)=true),_27702).

initiatedAt(close25(_27790,_27792)=true, _27702) :-
     happensAt(start(distance(_27790,_27792,25)=true),_27702).

initiatedAt(close30(_27790,_27792)=true, _27702) :-
     happensAt(start(close25(_27790,_27792)=true),_27702).

initiatedAt(close30(_27790,_27792)=true, _27702) :-
     happensAt(start(distance(_27790,_27792,30)=true),_27702).

initiatedAt(close34(_27790,_27792)=true, _27702) :-
     happensAt(start(close30(_27790,_27792)=true),_27702).

initiatedAt(close34(_27790,_27792)=true, _27702) :-
     happensAt(start(distance(_27790,_27792,34)=true),_27702).

initiatedAt(closeSymmetric30(_27790,_27792)=true, _27702) :-
     happensAt(start(close30(_27790,_27792)=true),_27702).

initiatedAt(closeSymmetric30(_27790,_27792)=true, _27702) :-
     happensAt(start(close30(_27792,_27790)=true),_27702).

initiatedAt(activeOrInactivePerson(_27790)=true, _27702) :-
     happensAt(start(active(_27790)=true),_27702).

initiatedAt(activeOrInactivePerson(_27790)=true, _27702) :-
     happensAt(start(inactive(_27790)=true),_27702),
     happensAt(start(person(_27790)=true),_27702).

initiatedAt(activeOrInactivePerson(_27790)=true, _27702) :-
     happensAt(start(inactive(_27790)=true),_27702),
     holdsAt(person(_27790)=true,_27702),
     \+happensAt(end(person(_27790)=true),_27702).

initiatedAt(activeOrInactivePerson(_27790)=true, _27702) :-
     happensAt(start(person(_27790)=true),_27702),
     \+happensAt(end(inactive(_27790)=true),_27702),
     holdsAt(inactive(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     happensAt(start(close25(_27790,_27792)=true),_27702),
     happensAt(start(person(_27792)=true),_27702),
     happensAt(end(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     happensAt(start(close25(_27790,_27792)=true),_27702),
     happensAt(start(person(_27792)=true),_27702),
     happensAt(end(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     happensAt(start(close25(_27790,_27792)=true),_27702),
     happensAt(start(person(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     happensAt(start(close25(_27790,_27792)=true),_27702),
     happensAt(start(person(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     happensAt(start(close25(_27790,_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     happensAt(end(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     happensAt(start(close25(_27790,_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     happensAt(end(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     happensAt(start(close25(_27790,_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     happensAt(start(close25(_27790,_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     happensAt(start(person(_27792)=true),_27702),
     happensAt(end(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     happensAt(start(person(_27792)=true),_27702),
     happensAt(end(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     happensAt(start(person(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     happensAt(start(person(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     happensAt(end(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     happensAt(end(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(close25(_27790,_27792)=true),_27702),
     happensAt(start(person(_27792)=true),_27702),
     happensAt(end(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(close25(_27790,_27792)=true),_27702),
     happensAt(start(person(_27792)=true),_27702),
     happensAt(end(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(close25(_27790,_27792)=true),_27702),
     happensAt(start(person(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(close25(_27790,_27792)=true),_27702),
     happensAt(start(person(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(close25(_27790,_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     happensAt(end(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(close25(_27790,_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     happensAt(end(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(close25(_27790,_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(close25(_27790,_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(person(_27792)=true),_27702),
     happensAt(end(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(person(_27792)=true),_27702),
     happensAt(end(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(person(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(start(person(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(end(running(_27792)=true),_27702),
     happensAt(end(abrupt(_27792)=true),_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(end(running(_27792)=true),_27702),
     \+holdsAt(abrupt(_27792)=true,_27702),
     \+happensAt(start(abrupt(_27792)=true),_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting1(_27790,_27792)=true, _27702) :-
     happensAt(end(abrupt(_27792)=true),_27702),
     \+happensAt(start(running(_27792)=true),_27702),
     \+holdsAt(running(_27792)=true,_27702),
     \+happensAt(end(person(_27792)=true),_27702),
     holdsAt(person(_27792)=true,_27702),
     \+happensAt(end(close25(_27790,_27792)=true),_27702),
     holdsAt(close25(_27790,_27792)=true,_27702),
     \+happensAt(end(activeOrInactivePerson(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27790)=true,_27702).

initiatedAt(greeting2(_27790,_27792)=true, _27702) :-
     happensAt(start(walking(_27790)=true),_27702),
     happensAt(start(activeOrInactivePerson(_27792)=true),_27702),
     happensAt(start(close25(_27792,_27790)=true),_27702).

initiatedAt(greeting2(_27790,_27792)=true, _27702) :-
     happensAt(start(walking(_27790)=true),_27702),
     happensAt(start(activeOrInactivePerson(_27792)=true),_27702),
     holdsAt(close25(_27792,_27790)=true,_27702),
     \+happensAt(end(close25(_27792,_27790)=true),_27702).

initiatedAt(greeting2(_27790,_27792)=true, _27702) :-
     happensAt(start(walking(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27792)=true,_27702),
     \+happensAt(end(activeOrInactivePerson(_27792)=true),_27702),
     happensAt(start(close25(_27792,_27790)=true),_27702).

initiatedAt(greeting2(_27790,_27792)=true, _27702) :-
     happensAt(start(walking(_27790)=true),_27702),
     holdsAt(activeOrInactivePerson(_27792)=true,_27702),
     \+happensAt(end(activeOrInactivePerson(_27792)=true),_27702),
     holdsAt(close25(_27792,_27790)=true,_27702),
     \+happensAt(end(close25(_27792,_27790)=true),_27702).

initiatedAt(greeting2(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27792)=true),_27702),
     happensAt(start(close25(_27792,_27790)=true),_27702),
     \+happensAt(end(walking(_27790)=true),_27702),
     holdsAt(walking(_27790)=true,_27702).

initiatedAt(greeting2(_27790,_27792)=true, _27702) :-
     happensAt(start(activeOrInactivePerson(_27792)=true),_27702),
     holdsAt(close25(_27792,_27790)=true,_27702),
     \+happensAt(end(close25(_27792,_27790)=true),_27702),
     \+happensAt(end(walking(_27790)=true),_27702),
     holdsAt(walking(_27790)=true,_27702).

initiatedAt(greeting2(_27790,_27792)=true, _27702) :-
     happensAt(start(close25(_27792,_27790)=true),_27702),
     \+happensAt(end(activeOrInactivePerson(_27792)=true),_27702),
     holdsAt(activeOrInactivePerson(_27792)=true,_27702),
     \+happensAt(end(walking(_27790)=true),_27702),
     holdsAt(walking(_27790)=true,_27702).

initiatedAt(moving(_27790,_27792)=true, _27702) :-
     happensAt(start(walking(_27790)=true),_27702),
     happensAt(start(walking(_27792)=true),_27702),
     happensAt(start(close34(_27790,_27792)=true),_27702).

initiatedAt(moving(_27790,_27792)=true, _27702) :-
     happensAt(start(walking(_27790)=true),_27702),
     happensAt(start(walking(_27792)=true),_27702),
     holdsAt(close34(_27790,_27792)=true,_27702),
     \+happensAt(end(close34(_27790,_27792)=true),_27702).

initiatedAt(moving(_27790,_27792)=true, _27702) :-
     happensAt(start(walking(_27790)=true),_27702),
     holdsAt(walking(_27792)=true,_27702),
     \+happensAt(end(walking(_27792)=true),_27702),
     happensAt(start(close34(_27790,_27792)=true),_27702).

initiatedAt(moving(_27790,_27792)=true, _27702) :-
     happensAt(start(walking(_27790)=true),_27702),
     holdsAt(walking(_27792)=true,_27702),
     \+happensAt(end(walking(_27792)=true),_27702),
     holdsAt(close34(_27790,_27792)=true,_27702),
     \+happensAt(end(close34(_27790,_27792)=true),_27702).

initiatedAt(moving(_27790,_27792)=true, _27702) :-
     happensAt(start(walking(_27792)=true),_27702),
     happensAt(start(close34(_27790,_27792)=true),_27702),
     \+happensAt(end(walking(_27790)=true),_27702),
     holdsAt(walking(_27790)=true,_27702).

initiatedAt(moving(_27790,_27792)=true, _27702) :-
     happensAt(start(walking(_27792)=true),_27702),
     holdsAt(close34(_27790,_27792)=true,_27702),
     \+happensAt(end(close34(_27790,_27792)=true),_27702),
     \+happensAt(end(walking(_27790)=true),_27702),
     holdsAt(walking(_27790)=true,_27702).

initiatedAt(moving(_27790,_27792)=true, _27702) :-
     happensAt(start(close34(_27790,_27792)=true),_27702),
     \+happensAt(end(walking(_27792)=true),_27702),
     holdsAt(walking(_27792)=true,_27702),
     \+happensAt(end(walking(_27790)=true),_27702),
     holdsAt(walking(_27790)=true,_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27790)=true),_27702),
     happensAt(start(close24(_27790,_27792)=true),_27702),
     happensAt(end(inactive(_27790)=true),_27702),
     happensAt(end(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27790)=true),_27702),
     happensAt(start(close24(_27790,_27792)=true),_27702),
     happensAt(end(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27792)=true,_27702),
     \+happensAt(start(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27790)=true),_27702),
     happensAt(start(close24(_27790,_27792)=true),_27702),
     \+holdsAt(inactive(_27790)=true,_27702),
     \+happensAt(start(inactive(_27790)=true),_27702),
     happensAt(end(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27790)=true),_27702),
     happensAt(start(close24(_27790,_27792)=true),_27702),
     \+holdsAt(inactive(_27790)=true,_27702),
     \+happensAt(start(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27792)=true,_27702),
     \+happensAt(start(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27790)=true),_27702),
     holdsAt(close24(_27790,_27792)=true,_27702),
     \+happensAt(end(close24(_27790,_27792)=true),_27702),
     happensAt(end(inactive(_27790)=true),_27702),
     happensAt(end(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27790)=true),_27702),
     holdsAt(close24(_27790,_27792)=true,_27702),
     \+happensAt(end(close24(_27790,_27792)=true),_27702),
     happensAt(end(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27792)=true,_27702),
     \+happensAt(start(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27790)=true),_27702),
     holdsAt(close24(_27790,_27792)=true,_27702),
     \+happensAt(end(close24(_27790,_27792)=true),_27702),
     \+holdsAt(inactive(_27790)=true,_27702),
     \+happensAt(start(inactive(_27790)=true),_27702),
     happensAt(end(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27790)=true),_27702),
     holdsAt(close24(_27790,_27792)=true,_27702),
     \+happensAt(end(close24(_27790,_27792)=true),_27702),
     \+holdsAt(inactive(_27790)=true,_27702),
     \+happensAt(start(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27792)=true,_27702),
     \+happensAt(start(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(close24(_27790,_27792)=true),_27702),
     happensAt(end(inactive(_27790)=true),_27702),
     happensAt(end(inactive(_27792)=true),_27702),
     \+happensAt(end(abrupt(_27790)=true),_27702),
     holdsAt(abrupt(_27790)=true,_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(close24(_27790,_27792)=true),_27702),
     happensAt(end(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27792)=true,_27702),
     \+happensAt(start(inactive(_27792)=true),_27702),
     \+happensAt(end(abrupt(_27790)=true),_27702),
     holdsAt(abrupt(_27790)=true,_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(close24(_27790,_27792)=true),_27702),
     \+holdsAt(inactive(_27790)=true,_27702),
     \+happensAt(start(inactive(_27790)=true),_27702),
     happensAt(end(inactive(_27792)=true),_27702),
     \+happensAt(end(abrupt(_27790)=true),_27702),
     holdsAt(abrupt(_27790)=true,_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(close24(_27790,_27792)=true),_27702),
     \+holdsAt(inactive(_27790)=true,_27702),
     \+happensAt(start(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27792)=true,_27702),
     \+happensAt(start(inactive(_27792)=true),_27702),
     \+happensAt(end(abrupt(_27790)=true),_27702),
     holdsAt(abrupt(_27790)=true,_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(end(inactive(_27790)=true),_27702),
     happensAt(end(inactive(_27792)=true),_27702),
     \+happensAt(end(close24(_27790,_27792)=true),_27702),
     holdsAt(close24(_27790,_27792)=true,_27702),
     \+happensAt(end(abrupt(_27790)=true),_27702),
     holdsAt(abrupt(_27790)=true,_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(end(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27792)=true,_27702),
     \+happensAt(start(inactive(_27792)=true),_27702),
     \+happensAt(end(close24(_27790,_27792)=true),_27702),
     holdsAt(close24(_27790,_27792)=true,_27702),
     \+happensAt(end(abrupt(_27790)=true),_27702),
     holdsAt(abrupt(_27790)=true,_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(end(inactive(_27792)=true),_27702),
     \+happensAt(start(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27790)=true,_27702),
     \+happensAt(end(close24(_27790,_27792)=true),_27702),
     holdsAt(close24(_27790,_27792)=true,_27702),
     \+happensAt(end(abrupt(_27790)=true),_27702),
     holdsAt(abrupt(_27790)=true,_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27792)=true),_27702),
     happensAt(start(close24(_27790,_27792)=true),_27702),
     happensAt(end(inactive(_27790)=true),_27702),
     happensAt(end(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27792)=true),_27702),
     happensAt(start(close24(_27790,_27792)=true),_27702),
     happensAt(end(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27792)=true,_27702),
     \+happensAt(start(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27792)=true),_27702),
     happensAt(start(close24(_27790,_27792)=true),_27702),
     \+holdsAt(inactive(_27790)=true,_27702),
     \+happensAt(start(inactive(_27790)=true),_27702),
     happensAt(end(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27792)=true),_27702),
     happensAt(start(close24(_27790,_27792)=true),_27702),
     \+holdsAt(inactive(_27790)=true,_27702),
     \+happensAt(start(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27792)=true,_27702),
     \+happensAt(start(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27792)=true),_27702),
     holdsAt(close24(_27790,_27792)=true,_27702),
     \+happensAt(end(close24(_27790,_27792)=true),_27702),
     happensAt(end(inactive(_27790)=true),_27702),
     happensAt(end(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27792)=true),_27702),
     holdsAt(close24(_27790,_27792)=true,_27702),
     \+happensAt(end(close24(_27790,_27792)=true),_27702),
     happensAt(end(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27792)=true,_27702),
     \+happensAt(start(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27792)=true),_27702),
     holdsAt(close24(_27790,_27792)=true,_27702),
     \+happensAt(end(close24(_27790,_27792)=true),_27702),
     \+holdsAt(inactive(_27790)=true,_27702),
     \+happensAt(start(inactive(_27790)=true),_27702),
     happensAt(end(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(abrupt(_27792)=true),_27702),
     holdsAt(close24(_27790,_27792)=true,_27702),
     \+happensAt(end(close24(_27790,_27792)=true),_27702),
     \+holdsAt(inactive(_27790)=true,_27702),
     \+happensAt(start(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27792)=true,_27702),
     \+happensAt(start(inactive(_27792)=true),_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(close24(_27790,_27792)=true),_27702),
     happensAt(end(inactive(_27790)=true),_27702),
     happensAt(end(inactive(_27792)=true),_27702),
     \+happensAt(end(abrupt(_27792)=true),_27702),
     holdsAt(abrupt(_27792)=true,_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(close24(_27790,_27792)=true),_27702),
     happensAt(end(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27792)=true,_27702),
     \+happensAt(start(inactive(_27792)=true),_27702),
     \+happensAt(end(abrupt(_27792)=true),_27702),
     holdsAt(abrupt(_27792)=true,_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(close24(_27790,_27792)=true),_27702),
     \+holdsAt(inactive(_27790)=true,_27702),
     \+happensAt(start(inactive(_27790)=true),_27702),
     happensAt(end(inactive(_27792)=true),_27702),
     \+happensAt(end(abrupt(_27792)=true),_27702),
     holdsAt(abrupt(_27792)=true,_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(start(close24(_27790,_27792)=true),_27702),
     \+holdsAt(inactive(_27790)=true,_27702),
     \+happensAt(start(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27792)=true,_27702),
     \+happensAt(start(inactive(_27792)=true),_27702),
     \+happensAt(end(abrupt(_27792)=true),_27702),
     holdsAt(abrupt(_27792)=true,_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(end(inactive(_27790)=true),_27702),
     happensAt(end(inactive(_27792)=true),_27702),
     \+happensAt(end(close24(_27790,_27792)=true),_27702),
     holdsAt(close24(_27790,_27792)=true,_27702),
     \+happensAt(end(abrupt(_27792)=true),_27702),
     holdsAt(abrupt(_27792)=true,_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(end(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27792)=true,_27702),
     \+happensAt(start(inactive(_27792)=true),_27702),
     \+happensAt(end(close24(_27790,_27792)=true),_27702),
     holdsAt(close24(_27790,_27792)=true,_27702),
     \+happensAt(end(abrupt(_27792)=true),_27702),
     holdsAt(abrupt(_27792)=true,_27702).

initiatedAt(fighting(_27790,_27792)=true, _27702) :-
     happensAt(end(inactive(_27792)=true),_27702),
     \+happensAt(start(inactive(_27790)=true),_27702),
     \+holdsAt(inactive(_27790)=true,_27702),
     \+happensAt(end(close24(_27790,_27792)=true),_27702),
     holdsAt(close24(_27790,_27792)=true,_27702),
     \+happensAt(end(abrupt(_27792)=true),_27702),
     holdsAt(abrupt(_27792)=true,_27702).

terminatedAt(close24(_28444,_28446)=true, _27702) :-
     happensAt(end(distance(_28444,_28446,24)=true),_27702).

terminatedAt(close25(_28444,_28446)=true, _27702) :-
     happensAt(end(close24(_28444,_28446)=true),_27702),
     happensAt(end(distance(_28444,_28446,25)=true),_27702).

terminatedAt(close25(_28444,_28446)=true, _27702) :-
     happensAt(end(close24(_28444,_28446)=true),_27702),
     \+holdsAt(distance(_28444,_28446,25)=true,_27702),
     \+happensAt(start(distance(_28444,_28446,25)=true),_27702).

terminatedAt(close25(_28444,_28446)=true, _27702) :-
     happensAt(end(distance(_28444,_28446,25)=true),_27702),
     \+happensAt(start(close24(_28444,_28446)=true),_27702),
     \+holdsAt(close24(_28444,_28446)=true,_27702).

terminatedAt(close30(_28444,_28446)=true, _27702) :-
     happensAt(end(close25(_28444,_28446)=true),_27702),
     happensAt(end(distance(_28444,_28446,30)=true),_27702).

terminatedAt(close30(_28444,_28446)=true, _27702) :-
     happensAt(end(close25(_28444,_28446)=true),_27702),
     \+holdsAt(distance(_28444,_28446,30)=true,_27702),
     \+happensAt(start(distance(_28444,_28446,30)=true),_27702).

terminatedAt(close30(_28444,_28446)=true, _27702) :-
     happensAt(end(distance(_28444,_28446,30)=true),_27702),
     \+happensAt(start(close25(_28444,_28446)=true),_27702),
     \+holdsAt(close25(_28444,_28446)=true,_27702).

terminatedAt(close34(_28444,_28446)=true, _27702) :-
     happensAt(end(close30(_28444,_28446)=true),_27702),
     happensAt(end(distance(_28444,_28446,34)=true),_27702).

terminatedAt(close34(_28444,_28446)=true, _27702) :-
     happensAt(end(close30(_28444,_28446)=true),_27702),
     \+holdsAt(distance(_28444,_28446,34)=true,_27702),
     \+happensAt(start(distance(_28444,_28446,34)=true),_27702).

terminatedAt(close34(_28444,_28446)=true, _27702) :-
     happensAt(end(distance(_28444,_28446,34)=true),_27702),
     \+happensAt(start(close30(_28444,_28446)=true),_27702),
     \+holdsAt(close30(_28444,_28446)=true,_27702).

terminatedAt(closeSymmetric30(_28444,_28446)=true, _27702) :-
     happensAt(end(close30(_28444,_28446)=true),_27702),
     happensAt(end(close30(_28446,_28444)=true),_27702).

terminatedAt(closeSymmetric30(_28444,_28446)=true, _27702) :-
     happensAt(end(close30(_28444,_28446)=true),_27702),
     \+holdsAt(close30(_28446,_28444)=true,_27702),
     \+happensAt(start(close30(_28446,_28444)=true),_27702).

terminatedAt(closeSymmetric30(_28444,_28446)=true, _27702) :-
     happensAt(end(close30(_28446,_28444)=true),_27702),
     \+happensAt(start(close30(_28444,_28446)=true),_27702),
     \+holdsAt(close30(_28444,_28446)=true,_27702).

terminatedAt(activeOrInactivePerson(_28444)=true, _27702) :-
     happensAt(end(active(_28444)=true),_27702),
     happensAt(end(inactive(_28444)=true),_27702).

terminatedAt(activeOrInactivePerson(_28444)=true, _27702) :-
     happensAt(end(active(_28444)=true),_27702),
     \+holdsAt(inactive(_28444)=true,_27702),
     \+happensAt(start(inactive(_28444)=true),_27702).

terminatedAt(activeOrInactivePerson(_28444)=true, _27702) :-
     happensAt(end(inactive(_28444)=true),_27702),
     \+happensAt(start(active(_28444)=true),_27702),
     \+holdsAt(active(_28444)=true,_27702).

terminatedAt(activeOrInactivePerson(_28444)=true, _27702) :-
     happensAt(end(active(_28444)=true),_27702),
     happensAt(end(person(_28444)=true),_27702).

terminatedAt(activeOrInactivePerson(_28444)=true, _27702) :-
     happensAt(end(active(_28444)=true),_27702),
     \+holdsAt(person(_28444)=true,_27702),
     \+happensAt(start(person(_28444)=true),_27702).

terminatedAt(activeOrInactivePerson(_28444)=true, _27702) :-
     happensAt(end(person(_28444)=true),_27702),
     \+happensAt(start(active(_28444)=true),_27702),
     \+holdsAt(active(_28444)=true,_27702).

terminatedAt(greeting1(_28444,_28446)=true, _27702) :-
     happensAt(end(activeOrInactivePerson(_28444)=true),_27702).

terminatedAt(greeting1(_28444,_28446)=true, _27702) :-
     happensAt(end(person(_28446)=true),_27702).

terminatedAt(greeting1(_28444,_28446)=true, _27702) :-
     happensAt(end(close25(_28444,_28446)=true),_27702).

terminatedAt(greeting1(_28444,_28446)=true, _27702) :-
     happensAt(start(running(_28446)=true),_27702).

terminatedAt(greeting1(_28444,_28446)=true, _27702) :-
     happensAt(start(abrupt(_28446)=true),_27702).

terminatedAt(greeting2(_28444,_28446)=true, _27702) :-
     happensAt(end(walking(_28444)=true),_27702).

terminatedAt(greeting2(_28444,_28446)=true, _27702) :-
     happensAt(end(activeOrInactivePerson(_28446)=true),_27702).

terminatedAt(greeting2(_28444,_28446)=true, _27702) :-
     happensAt(end(close25(_28446,_28444)=true),_27702).

terminatedAt(moving(_28444,_28446)=true, _27702) :-
     happensAt(end(walking(_28444)=true),_27702).

terminatedAt(moving(_28444,_28446)=true, _27702) :-
     happensAt(end(walking(_28446)=true),_27702).

terminatedAt(moving(_28444,_28446)=true, _27702) :-
     happensAt(end(close34(_28444,_28446)=true),_27702).

terminatedAt(fighting(_28444,_28446)=true, _27702) :-
     happensAt(end(abrupt(_28444)=true),_27702),
     happensAt(end(abrupt(_28446)=true),_27702).

terminatedAt(fighting(_28444,_28446)=true, _27702) :-
     happensAt(end(abrupt(_28444)=true),_27702),
     \+holdsAt(abrupt(_28446)=true,_27702),
     \+happensAt(start(abrupt(_28446)=true),_27702).

terminatedAt(fighting(_28444,_28446)=true, _27702) :-
     happensAt(end(abrupt(_28446)=true),_27702),
     \+happensAt(start(abrupt(_28444)=true),_27702),
     \+holdsAt(abrupt(_28444)=true,_27702).

terminatedAt(fighting(_28444,_28446)=true, _27702) :-
     happensAt(end(close24(_28444,_28446)=true),_27702).

terminatedAt(fighting(_28352,_28354)=true, _27610) :-
     happensAt(start(inactive(_28352)=true),_27610).

terminatedAt(fighting(_28352,_28354)=true, _27610) :-
     happensAt(start(inactive(_28354)=true),_27610).

% The elements of these domains are derived from the ground arguments of input entitites
dynamicDomain(id(_P)).

% Grounding of input entities:
grounding(appear(P)):-
	id(P).
grounding(disappear(P)):-
	id(P).
grounding(orientation(P)=_):-
	id(P).
grounding(appearance(P)=_):-
	id(P).
grounding(coord(P,_,_)=_):-
	id(P).
grounding(walking(P)=_):-
	id(P).
grounding(active(P)=_):-
	id(P).
grounding(inactive(P)=_):-
	id(P).
grounding(running(P)=_):-
	id(P).
grounding(abrupt(P)=_):-
	id(P).

grounding(close24(P1,P2)=true) :- id(P1), id(P2), P1@<P2.
grounding(close25(P1,P2)=true) :- id(P1), id(P2), P1@<P2.	
grounding(close30(P1,P2)=true) :- id(P1), id(P2), P1@<P2.	
grounding(close34(P1,P2)=true) :- id(P1), id(P2), P1@<P2.
% we are only interesting in caching close=false with respect to the 34 threshold
% we don't need any other thresholds for this fluent in the CAVIAR event description
%grounding(close(P1,P2,34)=false) :-	id(P1), id(P2), P1@<P2.
% similarly we are only interesting in caching closeSymmetric=true with respect to the 30 threshold
grounding(closeSymmetric30(P1,P2)=true) :- id(P1), id(P2), P1@<P2.
grounding(walking(P)=true) :- id(P). 
grounding(active(P)=true) :- id(P). 
grounding(inactive(P)=true) :- id(P).
grounding(abrupt(P)=true) :- id(P).
grounding(running(P)=true) :- id(P).
grounding(person(P)=true) :- id(P).
grounding(activeOrInactivePerson(P)=true) :- id(P).	
grounding(greeting1(P1,P2)=true) :- id(P1), id(P2), P1@<P2.
grounding(greeting2(P1,P2)=true) :- id(P1), id(P2), P1@<P2.
grounding(leaving_object(P,O)=true) :- id(P), id(O), P@<O.
%grounding(meeting(P1,P2)=true) :- id(P1), id(P2), P1@<P2.
grounding(moving(P1,P2)=true) :- id(P1), id(P2), P1@<P2.
grounding(fighting(P1,P2)=true) :- id(P1), id(P2), P1@<P2.

% For input entities expressed as statically determined fluents, state whether 
% the fluent instances will be reported as time-points (points/1) or intervals.
% By default, RTEC assumes that fluent instances are reported as intervals
% (in this case no declarations are necessary).
% This part of the declarations is used by the data loader.

points(orientation(_)=_).
points(appearance(_)=_).
points(coord(_,_,_)=true).
points(walking(_)=true).
points(active(_)=true).
points(inactive(_)=true).
points(running(_)=true).
points(abrupt(_)=true).


% For input entities expressed as statically determined fluents, state whether 
% the list of intervals of the input entity will be constructed by 
% collecting individual intervals (collectIntervals/1), or built from 
% time-points (buildFromPoints/1). If no declarations are provided for some,
% input entity, then the input entity may not participate in the specification of 
% output entities. 	 

buildFromPoints(walking(_)=true).
buildFromPoints(active(_)=true).
buildFromPoints(inactive(_)=true).
buildFromPoints(running(_)=true).
buildFromPoints(abrupt(_)=true).

