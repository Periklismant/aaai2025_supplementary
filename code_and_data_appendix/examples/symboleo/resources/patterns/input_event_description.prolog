initiatedAt(contract(_14910)=inEffect, _14822) :-
     happensAt(started(_14910),_14822),
     holdsAt(contract(_14910)=formed,_14822).

initiatedAt(contract(_14910)=inEffect, _14822) :-
     happensAt(resumed(_14910),_14822),
     holdsAt(contract(_14910)=suspended,_14822).

initiatedAt(contract(_14910)=suspended, _14822) :-
     happensAt(suspension(_14910),_14822),
     holdsAt(contract(_14910)=inEffect,_14822).

initiatedAt(contract(_14910)=rescinded, _14822) :-
     happensAt(rescission(_14910),_14822),
     holdsAt(contract(_14910)=inEffect,_14822).

initiatedAt(contract(_14910)=unsuccTerm, _14822) :-
     happensAt(termination(_14910),_14822),
     holdsAt(contract(_14910)=inEffect,_14822).

initiatedAt(contract(_14910)=unsuccTerm, _14822) :-
     happensAt(termination(_14910),_14822),
     holdsAt(contract(_14910)=suspended,_14822).

initiatedAt(contract(_14910)=succTerm, _14822) :-
     happensAt(fulfillment(_14910),_14822),
     holdsAt(contract(_14910)=inEffect,_14822).

initiatedAt(obligation(_14910)=created, _14822) :-
     happensAt(trigger_conditional(_14910),_14822),
     holdsAt(obligation(_14910)=none,_14822).

initiatedAt(obligation(_14910)=inEffect, _14822) :-
     happensAt(trigger_unconditional(_14910),_14822),
     holdsAt(obligation(_14910)=none,_14822).

initiatedAt(obligation(_14910)=discharged, _14822) :-
     happensAt(expires(_14910),_14822),
     holdsAt(obligation(_14910)=created,_14822).

initiatedAt(obligation(_14910)=inEffect, _14822) :-
     happensAt(activate(_14910),_14822),
     holdsAt(obligation(_14910)=created,_14822).

initiatedAt(obligation(_14910)=discharged, _14822) :-
     happensAt(discharge(_14910),_14822),
     holdsAt(obligation(_14910)=inEffect,_14822).

initiatedAt(obligation(_14910)=suspendedByPower, _14822) :-
     happensAt(suspendByPower(_14910),_14822),
     holdsAt(obligation(_14910)=inEffect,_14822).

initiatedAt(obligation(_14910)=suspendedByContract, _14822) :-
     happensAt(suspendByContract(_14910),_14822),
     holdsAt(obligation(_14910)=inEffect,_14822).

initiatedAt(obligation(_14910)=fulfilled, _14822) :-
     happensAt(fulfill(_14910),_14822),
     holdsAt(obligation(_14910)=inEffect,_14822).

initiatedAt(obligation(_14910)=violated, _14822) :-
     happensAt(violate(_14910),_14822),
     holdsAt(obligation(_14910)=inEffect,_14822).

initiatedAt(obligation(_14910)=inEffect, _14822) :-
     happensAt(resumeByPower(_14910),_14822),
     holdsAt(obligation(_14910)=suspendedByPower,_14822).

initiatedAt(obligation(_14910)=inEffect, _14822) :-
     happensAt(resumeByContract(_14910),_14822),
     holdsAt(obligation(_14910)=suspendedByContract,_14822).

initiatedAt(obligation(_14910)=unsuccTerm, _14822) :-
     happensAt(terminate(_14910),_14822),
     holdsAt(obligation(_14910)=inEffect,_14822).

initiatedAt(obligation(_14910)=unsuccTerm, _14822) :-
     happensAt(terminate(_14910),_14822),
     holdsAt(obligation(_14910)=suspendedByPower,_14822).

initiatedAt(obligation(_14910)=unsuccTerm, _14822) :-
     happensAt(terminate(_14910),_14822),
     holdsAt(obligation(_14910)=suspendedByContract,_14822).

initiatedAt(power(_14910)=created, _14822) :-
     happensAt(trigger_conditional(_14910),_14822),
     holdsAt(power(_14910)=none,_14822).

initiatedAt(pow(_14910)=inEffect, _14822) :-
     happensAt(trigger_unconditional(_14910),_14822),
     holdsAt(power(_14910)=none,_14822).

initiatedAt(power(_14910)=unsuccTerm, _14822) :-
     happensAt(expire(_14910),_14822),
     holdsAt(power(_14910)=created,_14822).

initiatedAt(power(_14910)=unsuccTerm, _14822) :-
     happensAt(expire(_14910),_14822),
     holdsAt(power(_14910)=inEffect,_14822).

initiatedAt(power(_14910)=unsuccTerm, _14822) :-
     happensAt(terminate(_14910),_14822),
     holdsAt(power(_14910)=inEffect,_14822).

initiatedAt(power(_14910)=inEffect, _14822) :-
     happensAt(activate(_14910),_14822),
     holdsAt(power(_14910)=created,_14822).

initiatedAt(power(_14910)=inEffect, _14822) :-
     happensAt(resume(_14910),_14822),
     holdsAt(power(_14910)=suspended,_14822).

initiatedAt(power(_14910)=suspended, _14822) :-
     happensAt(suspend(_14910),_14822),
     holdsAt(power(_14910)=inEffect,_14822).

initiatedAt(power(_14910)=succTerm, _14822) :-
     happensAt(exert(_14910),_14822),
     holdsAt(power(_14910)=inEffect,_14822).

initiatedAt(transferredR(_14910)=_14828, _14822) :-
     happensAt(transferR(_14910,_14916,_14828),_14822).

initiatedAt(transferredL(_14910)=_14828, _14822) :-
     happensAt(transferL(_14910,_14916,_14828),_14822).

initiatedAt(transferredP(_14910)=_14828, _14822) :-
     happensAt(transferP(_14910,_14916,_14828),_14822).

initiatedAt(active_contract(_14910)=true, _14822) :-
     happensAt(start(contract(_14910)=inEffect),_14822).

initiatedAt(active_contract(_14910)=true, _14822) :-
     happensAt(start(contract(_14910)=suspended),_14822).

initiatedAt(active_contract(_14910)=true, _14822) :-
     happensAt(start(contract(_14910)=rescission),_14822).

initiatedAt(active_obligation(_14910)=true, _14822) :-
     happensAt(start(obligation(_14910)=inEffect),_14822).

initiatedAt(active_obligation(_14910)=true, _14822) :-
     happensAt(start(obligation(_14910)=suspendedByPower),_14822).

initiatedAt(active_obligation(_14910)=true, _14822) :-
     happensAt(start(obligation(_14910)=suspendedByContract),_14822).

initiatedAt(active_power(_14910)=true, _14822) :-
     happensAt(start(power(_14910)=inEffect),_14822).

initiatedAt(active_power(_14910)=true, _14822) :-
     happensAt(start(power(_14910)=suspended),_14822).

initiatedAt(rightHolder_obligation(_14910)=_14828, _14822) :-
     happensAt(start(creditor(_14910)=_14828),_14822),
     happensAt(start(transferredR(_14910)=none),_14822),
     happensAt(start(active_obligation(_14910)=true),_14822).

initiatedAt(rightHolder_obligation(_14910)=_14828, _14822) :-
     happensAt(start(creditor(_14910)=_14828),_14822),
     happensAt(start(transferredR(_14910)=none),_14822),
     holdsAt(active_obligation(_14910)=true,_14822),
     \+happensAt(end(active_obligation(_14910)=true),_14822).

initiatedAt(rightHolder_obligation(_14910)=_14828, _14822) :-
     happensAt(start(creditor(_14910)=_14828),_14822),
     holdsAt(transferredR(_14910)=none,_14822),
     \+happensAt(end(transferredR(_14910)=none),_14822),
     happensAt(start(active_obligation(_14910)=true),_14822).

initiatedAt(rightHolder_obligation(_14910)=_14828, _14822) :-
     happensAt(start(creditor(_14910)=_14828),_14822),
     holdsAt(transferredR(_14910)=none,_14822),
     \+happensAt(end(transferredR(_14910)=none),_14822),
     holdsAt(active_obligation(_14910)=true,_14822),
     \+happensAt(end(active_obligation(_14910)=true),_14822).

initiatedAt(rightHolder_obligation(_14910)=_14828, _14822) :-
     happensAt(start(transferredR(_14910)=none),_14822),
     happensAt(start(active_obligation(_14910)=true),_14822),
     \+happensAt(end(creditor(_14910)=_14828),_14822),
     holdsAt(creditor(_14910)=_14828,_14822).

initiatedAt(rightHolder_obligation(_14910)=_14828, _14822) :-
     happensAt(start(transferredR(_14910)=none),_14822),
     holdsAt(active_obligation(_14910)=true,_14822),
     \+happensAt(end(active_obligation(_14910)=true),_14822),
     \+happensAt(end(creditor(_14910)=_14828),_14822),
     holdsAt(creditor(_14910)=_14828,_14822).

initiatedAt(rightHolder_obligation(_14910)=_14828, _14822) :-
     happensAt(start(active_obligation(_14910)=true),_14822),
     \+happensAt(end(transferredR(_14910)=none),_14822),
     holdsAt(transferredR(_14910)=none,_14822),
     \+happensAt(end(creditor(_14910)=_14828),_14822),
     holdsAt(creditor(_14910)=_14828,_14822).

initiatedAt(rightHolder_obligation(_14910)=_14828, _14822) :-
     happensAt(start(transferredR(_14910)=_14828),_14822),
     happensAt(start(active_obligation(_14910)=true),_14822).

initiatedAt(rightHolder_obligation(_14910)=_14828, _14822) :-
     happensAt(start(transferredR(_14910)=_14828),_14822),
     holdsAt(active_obligation(_14910)=true,_14822),
     \+happensAt(end(active_obligation(_14910)=true),_14822).

initiatedAt(rightHolder_obligation(_14910)=_14828, _14822) :-
     happensAt(start(active_obligation(_14910)=true),_14822),
     \+happensAt(end(transferredR(_14910)=_14828),_14822),
     holdsAt(transferredR(_14910)=_14828,_14822).

initiatedAt(liable_obligation(_14910)=_14828, _14822) :-
     happensAt(start(debtor(_14910)=_14828),_14822),
     happensAt(start(transferredL(_14910)=none),_14822),
     happensAt(start(active_obligation(_14910)=true),_14822).

initiatedAt(liable_obligation(_14910)=_14828, _14822) :-
     happensAt(start(debtor(_14910)=_14828),_14822),
     happensAt(start(transferredL(_14910)=none),_14822),
     holdsAt(active_obligation(_14910)=true,_14822),
     \+happensAt(end(active_obligation(_14910)=true),_14822).

initiatedAt(liable_obligation(_14910)=_14828, _14822) :-
     happensAt(start(debtor(_14910)=_14828),_14822),
     holdsAt(transferredL(_14910)=none,_14822),
     \+happensAt(end(transferredL(_14910)=none),_14822),
     happensAt(start(active_obligation(_14910)=true),_14822).

initiatedAt(liable_obligation(_14910)=_14828, _14822) :-
     happensAt(start(debtor(_14910)=_14828),_14822),
     holdsAt(transferredL(_14910)=none,_14822),
     \+happensAt(end(transferredL(_14910)=none),_14822),
     holdsAt(active_obligation(_14910)=true,_14822),
     \+happensAt(end(active_obligation(_14910)=true),_14822).

initiatedAt(liable_obligation(_14910)=_14828, _14822) :-
     happensAt(start(transferredL(_14910)=none),_14822),
     happensAt(start(active_obligation(_14910)=true),_14822),
     \+happensAt(end(debtor(_14910)=_14828),_14822),
     holdsAt(debtor(_14910)=_14828,_14822).

initiatedAt(liable_obligation(_14910)=_14828, _14822) :-
     happensAt(start(transferredL(_14910)=none),_14822),
     holdsAt(active_obligation(_14910)=true,_14822),
     \+happensAt(end(active_obligation(_14910)=true),_14822),
     \+happensAt(end(debtor(_14910)=_14828),_14822),
     holdsAt(debtor(_14910)=_14828,_14822).

initiatedAt(liable_obligation(_14910)=_14828, _14822) :-
     happensAt(start(active_obligation(_14910)=true),_14822),
     \+happensAt(end(transferredL(_14910)=none),_14822),
     holdsAt(transferredL(_14910)=none,_14822),
     \+happensAt(end(debtor(_14910)=_14828),_14822),
     holdsAt(debtor(_14910)=_14828,_14822).

initiatedAt(liable_obligation(_14910)=_14828, _14822) :-
     happensAt(start(transferredL(_14910)=_14828),_14822),
     happensAt(start(active_obligation(_14910)=true),_14822).

initiatedAt(liable_obligation(_14910)=_14828, _14822) :-
     happensAt(start(transferredL(_14910)=_14828),_14822),
     holdsAt(active_obligation(_14910)=true,_14822),
     \+happensAt(end(active_obligation(_14910)=true),_14822).

initiatedAt(liable_obligation(_14910)=_14828, _14822) :-
     happensAt(start(active_obligation(_14910)=true),_14822),
     \+happensAt(end(transferredL(_14910)=_14828),_14822),
     holdsAt(transferredL(_14910)=_14828,_14822).

initiatedAt(performer_obligation(_14910)=_14828, _14822) :-
     happensAt(start(debtor(_14910)=_14828),_14822),
     happensAt(start(transferredP(_14910)=none),_14822),
     happensAt(start(active_obligation(_14910)=true),_14822).

initiatedAt(performer_obligation(_14910)=_14828, _14822) :-
     happensAt(start(debtor(_14910)=_14828),_14822),
     happensAt(start(transferredP(_14910)=none),_14822),
     holdsAt(active_obligation(_14910)=true,_14822),
     \+happensAt(end(active_obligation(_14910)=true),_14822).

initiatedAt(performer_obligation(_14910)=_14828, _14822) :-
     happensAt(start(debtor(_14910)=_14828),_14822),
     holdsAt(transferredP(_14910)=none,_14822),
     \+happensAt(end(transferredP(_14910)=none),_14822),
     happensAt(start(active_obligation(_14910)=true),_14822).

initiatedAt(performer_obligation(_14910)=_14828, _14822) :-
     happensAt(start(debtor(_14910)=_14828),_14822),
     holdsAt(transferredP(_14910)=none,_14822),
     \+happensAt(end(transferredP(_14910)=none),_14822),
     holdsAt(active_obligation(_14910)=true,_14822),
     \+happensAt(end(active_obligation(_14910)=true),_14822).

initiatedAt(performer_obligation(_14910)=_14828, _14822) :-
     happensAt(start(transferredP(_14910)=none),_14822),
     happensAt(start(active_obligation(_14910)=true),_14822),
     \+happensAt(end(debtor(_14910)=_14828),_14822),
     holdsAt(debtor(_14910)=_14828,_14822).

initiatedAt(performer_obligation(_14910)=_14828, _14822) :-
     happensAt(start(transferredP(_14910)=none),_14822),
     holdsAt(active_obligation(_14910)=true,_14822),
     \+happensAt(end(active_obligation(_14910)=true),_14822),
     \+happensAt(end(debtor(_14910)=_14828),_14822),
     holdsAt(debtor(_14910)=_14828,_14822).

initiatedAt(performer_obligation(_14910)=_14828, _14822) :-
     happensAt(start(active_obligation(_14910)=true),_14822),
     \+happensAt(end(transferredP(_14910)=none),_14822),
     holdsAt(transferredP(_14910)=none,_14822),
     \+happensAt(end(debtor(_14910)=_14828),_14822),
     holdsAt(debtor(_14910)=_14828,_14822).

initiatedAt(performer_obligation(_14910)=_14828, _14822) :-
     happensAt(start(transferredP(_14910)=_14828),_14822),
     happensAt(start(active_obligation(_14910)=true),_14822).

initiatedAt(performer_obligation(_14910)=_14828, _14822) :-
     happensAt(start(transferredP(_14910)=_14828),_14822),
     holdsAt(active_obligation(_14910)=true,_14822),
     \+happensAt(end(active_obligation(_14910)=true),_14822).

initiatedAt(performer_obligation(_14910)=_14828, _14822) :-
     happensAt(start(active_obligation(_14910)=true),_14822),
     \+happensAt(end(transferredP(_14910)=_14828),_14822),
     holdsAt(transferredP(_14910)=_14828,_14822).

initiatedAt(rightHolder_power(_14910)=_14828, _14822) :-
     happensAt(start(creditor(_14910)=_14828),_14822),
     happensAt(start(transferredR(_14910)=none),_14822),
     happensAt(start(active_power(_14910)=true),_14822).

initiatedAt(rightHolder_power(_14910)=_14828, _14822) :-
     happensAt(start(creditor(_14910)=_14828),_14822),
     happensAt(start(transferredR(_14910)=none),_14822),
     holdsAt(active_power(_14910)=true,_14822),
     \+happensAt(end(active_power(_14910)=true),_14822).

initiatedAt(rightHolder_power(_14910)=_14828, _14822) :-
     happensAt(start(creditor(_14910)=_14828),_14822),
     holdsAt(transferredR(_14910)=none,_14822),
     \+happensAt(end(transferredR(_14910)=none),_14822),
     happensAt(start(active_power(_14910)=true),_14822).

initiatedAt(rightHolder_power(_14910)=_14828, _14822) :-
     happensAt(start(creditor(_14910)=_14828),_14822),
     holdsAt(transferredR(_14910)=none,_14822),
     \+happensAt(end(transferredR(_14910)=none),_14822),
     holdsAt(active_power(_14910)=true,_14822),
     \+happensAt(end(active_power(_14910)=true),_14822).

initiatedAt(rightHolder_power(_14910)=_14828, _14822) :-
     happensAt(start(transferredR(_14910)=none),_14822),
     happensAt(start(active_power(_14910)=true),_14822),
     \+happensAt(end(creditor(_14910)=_14828),_14822),
     holdsAt(creditor(_14910)=_14828,_14822).

initiatedAt(rightHolder_power(_14910)=_14828, _14822) :-
     happensAt(start(transferredR(_14910)=none),_14822),
     holdsAt(active_power(_14910)=true,_14822),
     \+happensAt(end(active_power(_14910)=true),_14822),
     \+happensAt(end(creditor(_14910)=_14828),_14822),
     holdsAt(creditor(_14910)=_14828,_14822).

initiatedAt(rightHolder_power(_14910)=_14828, _14822) :-
     happensAt(start(active_power(_14910)=true),_14822),
     \+happensAt(end(transferredR(_14910)=none),_14822),
     holdsAt(transferredR(_14910)=none,_14822),
     \+happensAt(end(creditor(_14910)=_14828),_14822),
     holdsAt(creditor(_14910)=_14828,_14822).

initiatedAt(rightHolder_power(_14910)=_14828, _14822) :-
     happensAt(start(transferredR(_14910)=_14828),_14822),
     happensAt(start(active_power(_14910)=true),_14822).

initiatedAt(rightHolder_power(_14910)=_14828, _14822) :-
     happensAt(start(transferredR(_14910)=_14828),_14822),
     holdsAt(active_power(_14910)=true,_14822),
     \+happensAt(end(active_power(_14910)=true),_14822).

initiatedAt(rightHolder_power(_14910)=_14828, _14822) :-
     happensAt(start(active_power(_14910)=true),_14822),
     \+happensAt(end(transferredR(_14910)=_14828),_14822),
     holdsAt(transferredR(_14910)=_14828,_14822).

initiatedAt(liable_power(_14910)=_14828, _14822) :-
     happensAt(start(debtor(_14910)=_14828),_14822),
     happensAt(start(transferredL(_14910)=none),_14822),
     happensAt(start(active_power(_14910)=true),_14822).

initiatedAt(liable_power(_14910)=_14828, _14822) :-
     happensAt(start(debtor(_14910)=_14828),_14822),
     happensAt(start(transferredL(_14910)=none),_14822),
     holdsAt(active_power(_14910)=true,_14822),
     \+happensAt(end(active_power(_14910)=true),_14822).

initiatedAt(liable_power(_14910)=_14828, _14822) :-
     happensAt(start(debtor(_14910)=_14828),_14822),
     holdsAt(transferredL(_14910)=none,_14822),
     \+happensAt(end(transferredL(_14910)=none),_14822),
     happensAt(start(active_power(_14910)=true),_14822).

initiatedAt(liable_power(_14910)=_14828, _14822) :-
     happensAt(start(debtor(_14910)=_14828),_14822),
     holdsAt(transferredL(_14910)=none,_14822),
     \+happensAt(end(transferredL(_14910)=none),_14822),
     holdsAt(active_power(_14910)=true,_14822),
     \+happensAt(end(active_power(_14910)=true),_14822).

initiatedAt(liable_power(_14910)=_14828, _14822) :-
     happensAt(start(transferredL(_14910)=none),_14822),
     happensAt(start(active_power(_14910)=true),_14822),
     \+happensAt(end(debtor(_14910)=_14828),_14822),
     holdsAt(debtor(_14910)=_14828,_14822).

initiatedAt(liable_power(_14910)=_14828, _14822) :-
     happensAt(start(transferredL(_14910)=none),_14822),
     holdsAt(active_power(_14910)=true,_14822),
     \+happensAt(end(active_power(_14910)=true),_14822),
     \+happensAt(end(debtor(_14910)=_14828),_14822),
     holdsAt(debtor(_14910)=_14828,_14822).

initiatedAt(liable_power(_14910)=_14828, _14822) :-
     happensAt(start(active_power(_14910)=true),_14822),
     \+happensAt(end(transferredL(_14910)=none),_14822),
     holdsAt(transferredL(_14910)=none,_14822),
     \+happensAt(end(debtor(_14910)=_14828),_14822),
     holdsAt(debtor(_14910)=_14828,_14822).

initiatedAt(liable_power(_14910)=_14828, _14822) :-
     happensAt(start(transferredL(_14910)=_14828),_14822),
     happensAt(start(active_power(_14910)=true),_14822).

initiatedAt(liable_power(_14910)=_14828, _14822) :-
     happensAt(start(transferredL(_14910)=_14828),_14822),
     holdsAt(active_power(_14910)=true,_14822),
     \+happensAt(end(active_power(_14910)=true),_14822).

initiatedAt(liable_power(_14910)=_14828, _14822) :-
     happensAt(start(active_power(_14910)=true),_14822),
     \+happensAt(end(transferredL(_14910)=_14828),_14822),
     holdsAt(transferredL(_14910)=_14828,_14822).

initiatedAt(performer_power(_14910)=_14828, _14822) :-
     happensAt(start(creditor(_14910)=_14828),_14822),
     happensAt(start(transferredP(_14910)=none),_14822),
     happensAt(start(active_power(_14910)=true),_14822).

initiatedAt(performer_power(_14910)=_14828, _14822) :-
     happensAt(start(creditor(_14910)=_14828),_14822),
     happensAt(start(transferredP(_14910)=none),_14822),
     holdsAt(active_power(_14910)=true,_14822),
     \+happensAt(end(active_power(_14910)=true),_14822).

initiatedAt(performer_power(_14910)=_14828, _14822) :-
     happensAt(start(creditor(_14910)=_14828),_14822),
     holdsAt(transferredP(_14910)=none,_14822),
     \+happensAt(end(transferredP(_14910)=none),_14822),
     happensAt(start(active_power(_14910)=true),_14822).

initiatedAt(performer_power(_14910)=_14828, _14822) :-
     happensAt(start(creditor(_14910)=_14828),_14822),
     holdsAt(transferredP(_14910)=none,_14822),
     \+happensAt(end(transferredP(_14910)=none),_14822),
     holdsAt(active_power(_14910)=true,_14822),
     \+happensAt(end(active_power(_14910)=true),_14822).

initiatedAt(performer_power(_14910)=_14828, _14822) :-
     happensAt(start(transferredP(_14910)=none),_14822),
     happensAt(start(active_power(_14910)=true),_14822),
     \+happensAt(end(creditor(_14910)=_14828),_14822),
     holdsAt(creditor(_14910)=_14828,_14822).

initiatedAt(performer_power(_14910)=_14828, _14822) :-
     happensAt(start(transferredP(_14910)=none),_14822),
     holdsAt(active_power(_14910)=true,_14822),
     \+happensAt(end(active_power(_14910)=true),_14822),
     \+happensAt(end(creditor(_14910)=_14828),_14822),
     holdsAt(creditor(_14910)=_14828,_14822).

initiatedAt(performer_power(_14910)=_14828, _14822) :-
     happensAt(start(active_power(_14910)=true),_14822),
     \+happensAt(end(transferredP(_14910)=none),_14822),
     holdsAt(transferredP(_14910)=none,_14822),
     \+happensAt(end(creditor(_14910)=_14828),_14822),
     holdsAt(creditor(_14910)=_14828,_14822).

initiatedAt(performer_power(_14910)=_14828, _14822) :-
     happensAt(start(transferredP(_14910)=_14828),_14822),
     happensAt(start(active_power(_14910)=true),_14822).

initiatedAt(performer_power(_14910)=_14828, _14822) :-
     happensAt(start(transferredP(_14910)=_14828),_14822),
     holdsAt(active_power(_14910)=true,_14822),
     \+happensAt(end(active_power(_14910)=true),_14822).

initiatedAt(performer_power(_14910)=_14828, _14822) :-
     happensAt(start(active_power(_14910)=true),_14822),
     \+happensAt(end(transferredP(_14910)=_14828),_14822),
     holdsAt(transferredP(_14910)=_14828,_14822).

terminatedAt(active_contract(_15600)=true, _14822) :-
     happensAt(end(contract(_15600)=inEffect),_14822),
     happensAt(end(contract(_15600)=suspended),_14822),
     happensAt(end(contract(_15600)=rescission),_14822).

terminatedAt(active_contract(_15600)=true, _14822) :-
     happensAt(end(contract(_15600)=inEffect),_14822),
     happensAt(end(contract(_15600)=suspended),_14822),
     \+holdsAt(contract(_15600)=rescission,_14822),
     \+happensAt(start(contract(_15600)=rescission),_14822).

terminatedAt(active_contract(_15600)=true, _14822) :-
     happensAt(end(contract(_15600)=inEffect),_14822),
     \+holdsAt(contract(_15600)=suspended,_14822),
     \+happensAt(start(contract(_15600)=suspended),_14822),
     happensAt(end(contract(_15600)=rescission),_14822).

terminatedAt(active_contract(_15600)=true, _14822) :-
     happensAt(end(contract(_15600)=inEffect),_14822),
     \+holdsAt(contract(_15600)=suspended,_14822),
     \+happensAt(start(contract(_15600)=suspended),_14822),
     \+holdsAt(contract(_15600)=rescission,_14822),
     \+happensAt(start(contract(_15600)=rescission),_14822).

terminatedAt(active_contract(_15600)=true, _14822) :-
     happensAt(end(contract(_15600)=suspended),_14822),
     happensAt(end(contract(_15600)=rescission),_14822),
     \+happensAt(start(contract(_15600)=inEffect),_14822),
     \+holdsAt(contract(_15600)=inEffect,_14822).

terminatedAt(active_contract(_15600)=true, _14822) :-
     happensAt(end(contract(_15600)=suspended),_14822),
     \+holdsAt(contract(_15600)=rescission,_14822),
     \+happensAt(start(contract(_15600)=rescission),_14822),
     \+happensAt(start(contract(_15600)=inEffect),_14822),
     \+holdsAt(contract(_15600)=inEffect,_14822).

terminatedAt(active_contract(_15600)=true, _14822) :-
     happensAt(end(contract(_15600)=rescission),_14822),
     \+happensAt(start(contract(_15600)=suspended),_14822),
     \+holdsAt(contract(_15600)=suspended,_14822),
     \+happensAt(start(contract(_15600)=inEffect),_14822),
     \+holdsAt(contract(_15600)=inEffect,_14822).

terminatedAt(active_obligation(_15600)=true, _14822) :-
     happensAt(end(obligation(_15600)=inEffect),_14822),
     happensAt(end(obligation(_15600)=suspendedByPower),_14822),
     happensAt(end(obligation(_15600)=suspendedByContract),_14822).

terminatedAt(active_obligation(_15600)=true, _14822) :-
     happensAt(end(obligation(_15600)=inEffect),_14822),
     happensAt(end(obligation(_15600)=suspendedByPower),_14822),
     \+holdsAt(obligation(_15600)=suspendedByContract,_14822),
     \+happensAt(start(obligation(_15600)=suspendedByContract),_14822).

terminatedAt(active_obligation(_15600)=true, _14822) :-
     happensAt(end(obligation(_15600)=inEffect),_14822),
     \+holdsAt(obligation(_15600)=suspendedByPower,_14822),
     \+happensAt(start(obligation(_15600)=suspendedByPower),_14822),
     happensAt(end(obligation(_15600)=suspendedByContract),_14822).

terminatedAt(active_obligation(_15600)=true, _14822) :-
     happensAt(end(obligation(_15600)=inEffect),_14822),
     \+holdsAt(obligation(_15600)=suspendedByPower,_14822),
     \+happensAt(start(obligation(_15600)=suspendedByPower),_14822),
     \+holdsAt(obligation(_15600)=suspendedByContract,_14822),
     \+happensAt(start(obligation(_15600)=suspendedByContract),_14822).

terminatedAt(active_obligation(_15600)=true, _14822) :-
     happensAt(end(obligation(_15600)=suspendedByPower),_14822),
     happensAt(end(obligation(_15600)=suspendedByContract),_14822),
     \+happensAt(start(obligation(_15600)=inEffect),_14822),
     \+holdsAt(obligation(_15600)=inEffect,_14822).

terminatedAt(active_obligation(_15600)=true, _14822) :-
     happensAt(end(obligation(_15600)=suspendedByPower),_14822),
     \+holdsAt(obligation(_15600)=suspendedByContract,_14822),
     \+happensAt(start(obligation(_15600)=suspendedByContract),_14822),
     \+happensAt(start(obligation(_15600)=inEffect),_14822),
     \+holdsAt(obligation(_15600)=inEffect,_14822).

terminatedAt(active_obligation(_15600)=true, _14822) :-
     happensAt(end(obligation(_15600)=suspendedByContract),_14822),
     \+happensAt(start(obligation(_15600)=suspendedByPower),_14822),
     \+holdsAt(obligation(_15600)=suspendedByPower,_14822),
     \+happensAt(start(obligation(_15600)=inEffect),_14822),
     \+holdsAt(obligation(_15600)=inEffect,_14822).

terminatedAt(active_power(_15600)=true, _14822) :-
     happensAt(end(power(_15600)=inEffect),_14822),
     happensAt(end(power(_15600)=suspended),_14822).

terminatedAt(active_power(_15600)=true, _14822) :-
     happensAt(end(power(_15600)=inEffect),_14822),
     \+holdsAt(power(_15600)=suspended,_14822),
     \+happensAt(start(power(_15600)=suspended),_14822).

terminatedAt(active_power(_15600)=true, _14822) :-
     happensAt(end(power(_15600)=suspended),_14822),
     \+happensAt(start(power(_15600)=inEffect),_14822),
     \+holdsAt(power(_15600)=inEffect,_14822).

terminatedAt(rightHolder_obligation(_15600)=_14828, _14822) :-
     happensAt(end(active_obligation(_15600)=true),_14822).

terminatedAt(rightHolder_obligation(_15600)=_14828, _14822) :-
     happensAt(end(creditor(_15600)=_14828),_14822),
     happensAt(end(transferredR(_15600)=_14828),_14822).

terminatedAt(rightHolder_obligation(_15600)=_14828, _14822) :-
     happensAt(end(creditor(_15600)=_14828),_14822),
     \+holdsAt(transferredR(_15600)=_14828,_14822),
     \+happensAt(start(transferredR(_15600)=_14828),_14822).

terminatedAt(rightHolder_obligation(_15600)=_14828, _14822) :-
     happensAt(end(transferredR(_15600)=_14828),_14822),
     \+happensAt(start(creditor(_15600)=_14828),_14822),
     \+holdsAt(creditor(_15600)=_14828,_14822).

terminatedAt(rightHolder_obligation(_15600)=_14828, _14822) :-
     happensAt(end(transferredR(_15600)=none),_14822),
     happensAt(end(transferredR(_15600)=_14828),_14822).

terminatedAt(rightHolder_obligation(_15600)=_14828, _14822) :-
     happensAt(end(transferredR(_15600)=none),_14822),
     \+holdsAt(transferredR(_15600)=_14828,_14822),
     \+happensAt(start(transferredR(_15600)=_14828),_14822).

terminatedAt(rightHolder_obligation(_15600)=_14828, _14822) :-
     happensAt(end(transferredR(_15600)=_14828),_14822),
     \+happensAt(start(transferredR(_15600)=none),_14822),
     \+holdsAt(transferredR(_15600)=none,_14822).

terminatedAt(liable_obligation(_15600)=_14828, _14822) :-
     happensAt(end(active_obligation(_15600)=true),_14822).

terminatedAt(liable_obligation(_15600)=_14828, _14822) :-
     happensAt(end(debtor(_15600)=_14828),_14822),
     happensAt(end(transferredL(_15600)=_14828),_14822).

terminatedAt(liable_obligation(_15600)=_14828, _14822) :-
     happensAt(end(debtor(_15600)=_14828),_14822),
     \+holdsAt(transferredL(_15600)=_14828,_14822),
     \+happensAt(start(transferredL(_15600)=_14828),_14822).

terminatedAt(liable_obligation(_15600)=_14828, _14822) :-
     happensAt(end(transferredL(_15600)=_14828),_14822),
     \+happensAt(start(debtor(_15600)=_14828),_14822),
     \+holdsAt(debtor(_15600)=_14828,_14822).

terminatedAt(liable_obligation(_15600)=_14828, _14822) :-
     happensAt(end(transferredL(_15600)=none),_14822),
     happensAt(end(transferredL(_15600)=_14828),_14822).

terminatedAt(liable_obligation(_15600)=_14828, _14822) :-
     happensAt(end(transferredL(_15600)=none),_14822),
     \+holdsAt(transferredL(_15600)=_14828,_14822),
     \+happensAt(start(transferredL(_15600)=_14828),_14822).

terminatedAt(liable_obligation(_15600)=_14828, _14822) :-
     happensAt(end(transferredL(_15600)=_14828),_14822),
     \+happensAt(start(transferredL(_15600)=none),_14822),
     \+holdsAt(transferredL(_15600)=none,_14822).

terminatedAt(performer_obligation(_15600)=_14828, _14822) :-
     happensAt(end(active_obligation(_15600)=true),_14822).

terminatedAt(performer_obligation(_15600)=_14828, _14822) :-
     happensAt(end(debtor(_15600)=_14828),_14822),
     happensAt(end(transferredP(_15600)=_14828),_14822).

terminatedAt(performer_obligation(_15600)=_14828, _14822) :-
     happensAt(end(debtor(_15600)=_14828),_14822),
     \+holdsAt(transferredP(_15600)=_14828,_14822),
     \+happensAt(start(transferredP(_15600)=_14828),_14822).

terminatedAt(performer_obligation(_15600)=_14828, _14822) :-
     happensAt(end(transferredP(_15600)=_14828),_14822),
     \+happensAt(start(debtor(_15600)=_14828),_14822),
     \+holdsAt(debtor(_15600)=_14828,_14822).

terminatedAt(performer_obligation(_15600)=_14828, _14822) :-
     happensAt(end(transferredP(_15600)=none),_14822),
     happensAt(end(transferredP(_15600)=_14828),_14822).

terminatedAt(performer_obligation(_15600)=_14828, _14822) :-
     happensAt(end(transferredP(_15600)=none),_14822),
     \+holdsAt(transferredP(_15600)=_14828,_14822),
     \+happensAt(start(transferredP(_15600)=_14828),_14822).

terminatedAt(performer_obligation(_15600)=_14828, _14822) :-
     happensAt(end(transferredP(_15600)=_14828),_14822),
     \+happensAt(start(transferredP(_15600)=none),_14822),
     \+holdsAt(transferredP(_15600)=none,_14822).

terminatedAt(rightHolder_power(_15600)=_14828, _14822) :-
     happensAt(end(active_power(_15600)=true),_14822).

terminatedAt(rightHolder_power(_15600)=_14828, _14822) :-
     happensAt(end(creditor(_15600)=_14828),_14822),
     happensAt(end(transferredR(_15600)=_14828),_14822).

terminatedAt(rightHolder_power(_15600)=_14828, _14822) :-
     happensAt(end(creditor(_15600)=_14828),_14822),
     \+holdsAt(transferredR(_15600)=_14828,_14822),
     \+happensAt(start(transferredR(_15600)=_14828),_14822).

terminatedAt(rightHolder_power(_15600)=_14828, _14822) :-
     happensAt(end(transferredR(_15600)=_14828),_14822),
     \+happensAt(start(creditor(_15600)=_14828),_14822),
     \+holdsAt(creditor(_15600)=_14828,_14822).

terminatedAt(rightHolder_power(_15600)=_14828, _14822) :-
     happensAt(end(transferredR(_15600)=none),_14822),
     happensAt(end(transferredR(_15600)=_14828),_14822).

terminatedAt(rightHolder_power(_15600)=_14828, _14822) :-
     happensAt(end(transferredR(_15600)=none),_14822),
     \+holdsAt(transferredR(_15600)=_14828,_14822),
     \+happensAt(start(transferredR(_15600)=_14828),_14822).

terminatedAt(rightHolder_power(_15600)=_14828, _14822) :-
     happensAt(end(transferredR(_15600)=_14828),_14822),
     \+happensAt(start(transferredR(_15600)=none),_14822),
     \+holdsAt(transferredR(_15600)=none,_14822).

terminatedAt(liable_power(_15600)=_14828, _14822) :-
     happensAt(end(active_power(_15600)=true),_14822).

terminatedAt(liable_power(_15600)=_14828, _14822) :-
     happensAt(end(debtor(_15600)=_14828),_14822),
     happensAt(end(transferredL(_15600)=_14828),_14822).

terminatedAt(liable_power(_15600)=_14828, _14822) :-
     happensAt(end(debtor(_15600)=_14828),_14822),
     \+holdsAt(transferredL(_15600)=_14828,_14822),
     \+happensAt(start(transferredL(_15600)=_14828),_14822).

terminatedAt(liable_power(_15600)=_14828, _14822) :-
     happensAt(end(transferredL(_15600)=_14828),_14822),
     \+happensAt(start(debtor(_15600)=_14828),_14822),
     \+holdsAt(debtor(_15600)=_14828,_14822).

terminatedAt(liable_power(_15600)=_14828, _14822) :-
     happensAt(end(transferredL(_15600)=none),_14822),
     happensAt(end(transferredL(_15600)=_14828),_14822).

terminatedAt(liable_power(_15600)=_14828, _14822) :-
     happensAt(end(transferredL(_15600)=none),_14822),
     \+holdsAt(transferredL(_15600)=_14828,_14822),
     \+happensAt(start(transferredL(_15600)=_14828),_14822).

terminatedAt(liable_power(_15600)=_14828, _14822) :-
     happensAt(end(transferredL(_15600)=_14828),_14822),
     \+happensAt(start(transferredL(_15600)=none),_14822),
     \+holdsAt(transferredL(_15600)=none,_14822).

terminatedAt(performer_power(_15600)=_14828, _14822) :-
     happensAt(end(active_power(_15600)=true),_14822).

terminatedAt(performer_power(_15600)=_14828, _14822) :-
     happensAt(end(creditor(_15600)=_14828),_14822),
     happensAt(end(transferredP(_15600)=_14828),_14822).

terminatedAt(performer_power(_15600)=_14828, _14822) :-
     happensAt(end(creditor(_15600)=_14828),_14822),
     \+holdsAt(transferredP(_15600)=_14828,_14822),
     \+happensAt(start(transferredP(_15600)=_14828),_14822).

terminatedAt(performer_power(_15600)=_14828, _14822) :-
     happensAt(end(transferredP(_15600)=_14828),_14822),
     \+happensAt(start(creditor(_15600)=_14828),_14822),
     \+holdsAt(creditor(_15600)=_14828,_14822).

terminatedAt(performer_power(_15600)=_14828, _14822) :-
     happensAt(end(transferredP(_15600)=none),_14822),
     happensAt(end(transferredP(_15600)=_14828),_14822).

terminatedAt(performer_power(_15600)=_14828, _14822) :-
     happensAt(end(transferredP(_15600)=none),_14822),
     \+holdsAt(transferredP(_15600)=_14828,_14822),
     \+happensAt(start(transferredP(_15600)=_14828),_14822).

terminatedAt(performer_power(_15600)=_14828, _14822) :-
     happensAt(end(transferredP(_15600)=_14828),_14822),
     \+happensAt(start(transferredP(_15600)=none),_14822),
     \+holdsAt(transferredP(_15600)=none,_14822).

% Grounding of input entities 
grounding(started(C)) :- c(C).
grounding(resumed(C)) :- c(C).
grounding(suspension(C)) :- c(C).
grounding(rescission(C)) :- c(C).
grounding(termination(C)) :- c(C).
grounding(fulfillment(C)) :- c(C).
grounding(transferR(X, P1, P2)) :- o_or_pow(X), party(P1), party(P2).
grounding(transferL(X, P1, P2)) :- o_or_pow(X), party(P1), party(P2).
grounding(transferP(X, P1, P2)) :- o_or_pow(X), party(P1), party(P2).
grounding(creditor(X)=Prt):- o_or_pow(X), party(Prt).
grounding(debtor(X)=Prt):- o_or_pow(X), party(Prt).

% Grounding of output entities
grounding(contract(C)=formed):- c(C).
grounding(contract(C)=inEffect):- c(C).
grounding(contract(C)=suspended):- c(C).
grounding(contract(C)=rescinded):- c(C).
grounding(contract(C)=unsuccTerm):- c(C).
grounding(contract(C)=succTerm):- c(C).
grounding(active_contract(C)=true):- c(C).

grounding(obligation(O)=created):- o(O).
grounding(obligation(O)=discharged):- o(O).
grounding(obligation(O)=inEffect):- o(O).
grounding(obligation(O)=suspendedByPower):- o(O).
grounding(obligation(O)=suspendedByContract):- o(O).
grounding(obligation(O)=fulfilled):- o(O).
grounding(obligation(O)=violated):- o(O).
grounding(obligation(O)=unsuccTerm):- o(O).
grounding(active_obligation(O)=true):- o(O).

grounding(power(Pow)=created):- pow(Pow).
grounding(power(Pow)=inEffect):- pow(Pow).
grounding(power(Pow)=suspended):- pow(Pow).
grounding(power(Pow)=unsuccTerm):- pow(Pow).
grounding(power(Pow)=succTerm):- pow(Pow).
grounding(active_power(Pow)=true):- pow(Pow).

grounding(transferredR(X)=none):- o_or_pow(X).
grounding(transferredL(X)=none):- o_or_pow(X).
grounding(transferredP(X)=none):- o_or_pow(X).
grounding(transferredR(X)=Prt):- o_or_pow(X), party(Prt).
grounding(transferredL(X)=Prt):- o_or_pow(X), party(Prt).
grounding(transferredP(X)=Prt):- o_or_pow(X), party(Prt).
grounding(rightHolder_obligation(O)=Prt):- o(O), party(Prt).
grounding(liable_obligation(O)=Prt):- o(O), party(Prt).
grounding(performer_obligation(O)=Prt):- o(O), party(Prt).
grounding(rightHolder_power(Pow)=Prt):- pow(Pow), party(Prt).
grounding(liable_power(Pow)=Prt):- pow(Pow), party(Prt).
grounding(performer_power(Pow)=Prt):- pow(Pow), party(Prt).


