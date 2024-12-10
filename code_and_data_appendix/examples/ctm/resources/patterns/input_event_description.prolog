initiatedAt(punctuality(_32544,_32546)=punctual, _32456) :-
     happensAt(stop_enter(_32544,_32546,_32554,scheduled),_32456).

initiatedAt(punctuality(_32544,_32546)=punctual, _32456) :-
     happensAt(stop_enter(_32544,_32546,_32554,early),_32456).

initiatedAt(punctuality(_32544,_32546)=non_punctual, _32456) :-
     happensAt(stop_enter(_32544,_32546,_32554,late),_32456).

initiatedAt(punctuality(_32544,_32546)=non_punctual, _32456) :-
     happensAt(stop_leave(_32544,_32546,_32554,early),_32456).

initiatedAt(punctuality(_32544,_32546)=non_punctual, _32456) :-
     happensAt(stop_leave(_32544,_32546,_32554,late),_32456).

initiatedAt(unsafe_driving_style(_32544,_32546)=true, _32456) :-
     happensAt(start(sharp_turn(_32544,_32546)=very_sharp),_32456).

initiatedAt(unsafe_driving_style(_32544,_32546)=true, _32456) :-
     happensAt(start(abrupt_acceleration(_32544,_32546)=very_abrupt),_32456).

initiatedAt(unsafe_driving_style(_32544,_32546)=true, _32456) :-
     happensAt(start(abrupt_deceleration(_32544,_32546)=very_abrupt),_32456).

initiatedAt(uncomfortable_driving_style(_32544,_32546)=true, _32456) :-
     happensAt(start(sharp_turn(_32544,_32546)=sharp),_32456),
     happensAt(end(abrupt_acceleration(_32544,_32546)=very_abrupt),_32456),
     happensAt(end(abrupt_deceleration(_32544,_32546)=very_abrupt),_32456).

initiatedAt(uncomfortable_driving_style(_32544,_32546)=true, _32456) :-
     happensAt(start(sharp_turn(_32544,_32546)=sharp),_32456),
     happensAt(end(abrupt_acceleration(_32544,_32546)=very_abrupt),_32456),
     \+holdsAt(abrupt_deceleration(_32544,_32546)=very_abrupt,_32456),
     \+happensAt(start(abrupt_deceleration(_32544,_32546)=very_abrupt),_32456).

initiatedAt(uncomfortable_driving_style(_32544,_32546)=true, _32456) :-
     happensAt(start(sharp_turn(_32544,_32546)=sharp),_32456),
     \+holdsAt(abrupt_acceleration(_32544,_32546)=very_abrupt,_32456),
     \+happensAt(start(abrupt_acceleration(_32544,_32546)=very_abrupt),_32456),
     happensAt(end(abrupt_deceleration(_32544,_32546)=very_abrupt),_32456).

initiatedAt(uncomfortable_driving_style(_32544,_32546)=true, _32456) :-
     happensAt(start(sharp_turn(_32544,_32546)=sharp),_32456),
     \+holdsAt(abrupt_acceleration(_32544,_32546)=very_abrupt,_32456),
     \+happensAt(start(abrupt_acceleration(_32544,_32546)=very_abrupt),_32456),
     \+holdsAt(abrupt_deceleration(_32544,_32546)=very_abrupt,_32456),
     \+happensAt(start(abrupt_deceleration(_32544,_32546)=very_abrupt),_32456).

initiatedAt(uncomfortable_driving_style(_32544,_32546)=true, _32456) :-
     happensAt(end(abrupt_acceleration(_32544,_32546)=very_abrupt),_32456),
     happensAt(end(abrupt_deceleration(_32544,_32546)=very_abrupt),_32456),
     \+happensAt(end(sharp_turn(_32544,_32546)=sharp),_32456),
     holdsAt(sharp_turn(_32544,_32546)=sharp,_32456).

initiatedAt(uncomfortable_driving_style(_32544,_32546)=true, _32456) :-
     happensAt(end(abrupt_acceleration(_32544,_32546)=very_abrupt),_32456),
     \+holdsAt(abrupt_deceleration(_32544,_32546)=very_abrupt,_32456),
     \+happensAt(start(abrupt_deceleration(_32544,_32546)=very_abrupt),_32456),
     \+happensAt(end(sharp_turn(_32544,_32546)=sharp),_32456),
     holdsAt(sharp_turn(_32544,_32546)=sharp,_32456).

initiatedAt(uncomfortable_driving_style(_32544,_32546)=true, _32456) :-
     happensAt(end(abrupt_deceleration(_32544,_32546)=very_abrupt),_32456),
     \+happensAt(start(abrupt_acceleration(_32544,_32546)=very_abrupt),_32456),
     \+holdsAt(abrupt_acceleration(_32544,_32546)=very_abrupt,_32456),
     \+happensAt(end(sharp_turn(_32544,_32546)=sharp),_32456),
     holdsAt(sharp_turn(_32544,_32546)=sharp,_32456).

initiatedAt(uncomfortable_driving_style(_32544,_32546)=true, _32456) :-
     happensAt(start(abrupt_acceleration(_32544,_32546)=abrupt),_32456).

initiatedAt(uncomfortable_driving_style(_32544,_32546)=true, _32456) :-
     happensAt(start(abrupt_deceleration(_32544,_32546)=abrupt),_32456).

initiatedAt(high_driving_quality(_32544,_32546)=true, _32456) :-
     happensAt(start(punctuality(_32544,_32546)=punctual),_32456),
     happensAt(end(unsafe_driving_style(_32544,_32546)=true),_32456),
     happensAt(end(uncomfortable_driving_style(_32544,_32546)=true),_32456).

initiatedAt(high_driving_quality(_32544,_32546)=true, _32456) :-
     happensAt(start(punctuality(_32544,_32546)=punctual),_32456),
     happensAt(end(unsafe_driving_style(_32544,_32546)=true),_32456),
     \+holdsAt(uncomfortable_driving_style(_32544,_32546)=true,_32456),
     \+happensAt(start(uncomfortable_driving_style(_32544,_32546)=true),_32456).

initiatedAt(high_driving_quality(_32544,_32546)=true, _32456) :-
     happensAt(start(punctuality(_32544,_32546)=punctual),_32456),
     \+holdsAt(unsafe_driving_style(_32544,_32546)=true,_32456),
     \+happensAt(start(unsafe_driving_style(_32544,_32546)=true),_32456),
     happensAt(end(uncomfortable_driving_style(_32544,_32546)=true),_32456).

initiatedAt(high_driving_quality(_32544,_32546)=true, _32456) :-
     happensAt(start(punctuality(_32544,_32546)=punctual),_32456),
     \+holdsAt(unsafe_driving_style(_32544,_32546)=true,_32456),
     \+happensAt(start(unsafe_driving_style(_32544,_32546)=true),_32456),
     \+holdsAt(uncomfortable_driving_style(_32544,_32546)=true,_32456),
     \+happensAt(start(uncomfortable_driving_style(_32544,_32546)=true),_32456).

initiatedAt(high_driving_quality(_32544,_32546)=true, _32456) :-
     happensAt(end(unsafe_driving_style(_32544,_32546)=true),_32456),
     happensAt(end(uncomfortable_driving_style(_32544,_32546)=true),_32456),
     \+happensAt(end(punctuality(_32544,_32546)=punctual),_32456),
     holdsAt(punctuality(_32544,_32546)=punctual,_32456).

initiatedAt(high_driving_quality(_32544,_32546)=true, _32456) :-
     happensAt(end(unsafe_driving_style(_32544,_32546)=true),_32456),
     \+holdsAt(uncomfortable_driving_style(_32544,_32546)=true,_32456),
     \+happensAt(start(uncomfortable_driving_style(_32544,_32546)=true),_32456),
     \+happensAt(end(punctuality(_32544,_32546)=punctual),_32456),
     holdsAt(punctuality(_32544,_32546)=punctual,_32456).

initiatedAt(high_driving_quality(_32544,_32546)=true, _32456) :-
     happensAt(end(uncomfortable_driving_style(_32544,_32546)=true),_32456),
     \+happensAt(start(unsafe_driving_style(_32544,_32546)=true),_32456),
     \+holdsAt(unsafe_driving_style(_32544,_32546)=true,_32456),
     \+happensAt(end(punctuality(_32544,_32546)=punctual),_32456),
     holdsAt(punctuality(_32544,_32546)=punctual,_32456).

initiatedAt(medium_driving_quality(_32544,_32546)=true, _32456) :-
     happensAt(start(punctuality(_32544,_32546)=punctual),_32456),
     happensAt(start(uncomfortable_driving_style(_32544,_32546)=true),_32456).

initiatedAt(medium_driving_quality(_32544,_32546)=true, _32456) :-
     happensAt(start(punctuality(_32544,_32546)=punctual),_32456),
     holdsAt(uncomfortable_driving_style(_32544,_32546)=true,_32456),
     \+happensAt(end(uncomfortable_driving_style(_32544,_32546)=true),_32456).

initiatedAt(medium_driving_quality(_32544,_32546)=true, _32456) :-
     happensAt(start(uncomfortable_driving_style(_32544,_32546)=true),_32456),
     \+happensAt(end(punctuality(_32544,_32546)=punctual),_32456),
     holdsAt(punctuality(_32544,_32546)=punctual,_32456).

initiatedAt(low_driving_quality(_32544,_32546)=true, _32456) :-
     happensAt(start(punctuality(_32544,_32546)=non_punctual),_32456).

initiatedAt(low_driving_quality(_32544,_32546)=true, _32456) :-
     happensAt(start(unsafe_driving_style(_32544,_32546)=true),_32456).

initiatedAt(passenger_comfort(_32544,_32546)=reducing, _32456) :-
     happensAt(start(uncomfortable_driving_style(_32544,_32546)=true),_32456).

initiatedAt(passenger_comfort(_32544,_32546)=reducing, _32456) :-
     happensAt(start(unsafe_driving_style(_32544,_32546)=true),_32456).

initiatedAt(passenger_comfort(_32544,_32546)=reducing, _32456) :-
     happensAt(start(passenger_density(_32544,_32546)=high),_32456).

initiatedAt(passenger_comfort(_32544,_32546)=reducing, _32456) :-
     happensAt(start(noise_level(_32544,_32546)=high),_32456).

initiatedAt(passenger_comfort(_32544,_32546)=reducing, _32456) :-
     happensAt(start(internal_temperature(_32544,_32546)=very_warm),_32456).

initiatedAt(passenger_comfort(_32544,_32546)=reducing, _32456) :-
     happensAt(start(internal_temperature(_32544,_32546)=very_cold),_32456).

initiatedAt(driver_comfort(_32544,_32546)=reducing, _32456) :-
     happensAt(start(uncomfortable_driving_style(_32544,_32546)=true),_32456).

initiatedAt(driver_comfort(_32544,_32546)=reducing, _32456) :-
     happensAt(start(unsafe_driving_style(_32544,_32546)=true),_32456).

initiatedAt(driver_comfort(_32544,_32546)=reducing, _32456) :-
     happensAt(start(noise_level(_32544,_32546)=high),_32456).

initiatedAt(driver_comfort(_32544,_32546)=reducing, _32456) :-
     happensAt(start(internal_temperature(_32544,_32546)=very_warm),_32456).

initiatedAt(driver_comfort(_32544,_32546)=reducing, _32456) :-
     happensAt(start(internal_temperature(_32544,_32546)=very_cold),_32456).

initiatedAt(passenger_satisfaction(_32544,_32546)=reducing, _32456) :-
     happensAt(start(punctuality(_32544,_32546)=non_punctual),_32456).

initiatedAt(passenger_satisfaction(_32544,_32546)=reducing, _32456) :-
     happensAt(start(passenger_comfort(_32544,_32546)=reducing),_32456).

terminatedAt(punctuality(_8006,_8008)=punctual, _7582) :-
     happensAt(stop_enter(_8006,_8008,_8016,late),_7582).

terminatedAt(punctuality(_8006,_8008)=punctual, _7582) :-
     happensAt(stop_leave(_8006,_8008,_8016,early),_7582).

terminatedAt(unsafe_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(sharp_turn(_8006,_8008)=very_sharp),_7582),
     happensAt(end(abrupt_acceleration(_8006,_8008)=very_abrupt),_7582),
     happensAt(end(abrupt_deceleration(_8006,_8008)=very_abrupt),_7582).

terminatedAt(unsafe_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(sharp_turn(_8006,_8008)=very_sharp),_7582),
     happensAt(end(abrupt_acceleration(_8006,_8008)=very_abrupt),_7582),
     \+holdsAt(abrupt_deceleration(_8006,_8008)=very_abrupt,_7582),
     \+happensAt(start(abrupt_deceleration(_8006,_8008)=very_abrupt),_7582).

terminatedAt(unsafe_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(sharp_turn(_8006,_8008)=very_sharp),_7582),
     \+holdsAt(abrupt_acceleration(_8006,_8008)=very_abrupt,_7582),
     \+happensAt(start(abrupt_acceleration(_8006,_8008)=very_abrupt),_7582),
     happensAt(end(abrupt_deceleration(_8006,_8008)=very_abrupt),_7582).

terminatedAt(unsafe_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(sharp_turn(_8006,_8008)=very_sharp),_7582),
     \+holdsAt(abrupt_acceleration(_8006,_8008)=very_abrupt,_7582),
     \+happensAt(start(abrupt_acceleration(_8006,_8008)=very_abrupt),_7582),
     \+holdsAt(abrupt_deceleration(_8006,_8008)=very_abrupt,_7582),
     \+happensAt(start(abrupt_deceleration(_8006,_8008)=very_abrupt),_7582).

terminatedAt(unsafe_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(abrupt_acceleration(_8006,_8008)=very_abrupt),_7582),
     happensAt(end(abrupt_deceleration(_8006,_8008)=very_abrupt),_7582),
     \+happensAt(start(sharp_turn(_8006,_8008)=very_sharp),_7582),
     \+holdsAt(sharp_turn(_8006,_8008)=very_sharp,_7582).

terminatedAt(unsafe_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(abrupt_acceleration(_8006,_8008)=very_abrupt),_7582),
     \+holdsAt(abrupt_deceleration(_8006,_8008)=very_abrupt,_7582),
     \+happensAt(start(abrupt_deceleration(_8006,_8008)=very_abrupt),_7582),
     \+happensAt(start(sharp_turn(_8006,_8008)=very_sharp),_7582),
     \+holdsAt(sharp_turn(_8006,_8008)=very_sharp,_7582).

terminatedAt(unsafe_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(abrupt_deceleration(_8006,_8008)=very_abrupt),_7582),
     \+happensAt(start(abrupt_acceleration(_8006,_8008)=very_abrupt),_7582),
     \+holdsAt(abrupt_acceleration(_8006,_8008)=very_abrupt,_7582),
     \+happensAt(start(sharp_turn(_8006,_8008)=very_sharp),_7582),
     \+holdsAt(sharp_turn(_8006,_8008)=very_sharp,_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(sharp_turn(_8006,_8008)=sharp),_7582),
     happensAt(end(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     happensAt(end(abrupt_deceleration(_8006,_8008)=abrupt),_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(sharp_turn(_8006,_8008)=sharp),_7582),
     happensAt(end(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     \+holdsAt(abrupt_deceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_deceleration(_8006,_8008)=abrupt),_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(sharp_turn(_8006,_8008)=sharp),_7582),
     \+holdsAt(abrupt_acceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     happensAt(end(abrupt_deceleration(_8006,_8008)=abrupt),_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(sharp_turn(_8006,_8008)=sharp),_7582),
     \+holdsAt(abrupt_acceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     \+holdsAt(abrupt_deceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_deceleration(_8006,_8008)=abrupt),_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     happensAt(end(abrupt_deceleration(_8006,_8008)=abrupt),_7582),
     \+happensAt(start(sharp_turn(_8006,_8008)=sharp),_7582),
     \+holdsAt(sharp_turn(_8006,_8008)=sharp,_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     \+holdsAt(abrupt_deceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_deceleration(_8006,_8008)=abrupt),_7582),
     \+happensAt(start(sharp_turn(_8006,_8008)=sharp),_7582),
     \+holdsAt(sharp_turn(_8006,_8008)=sharp,_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(abrupt_deceleration(_8006,_8008)=abrupt),_7582),
     \+happensAt(start(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     \+holdsAt(abrupt_acceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(sharp_turn(_8006,_8008)=sharp),_7582),
     \+holdsAt(sharp_turn(_8006,_8008)=sharp,_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(start(abrupt_acceleration(_8006,_8008)=very_abrupt),_7582),
     happensAt(end(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     happensAt(end(abrupt_deceleration(_8006,_8008)=abrupt),_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(start(abrupt_acceleration(_8006,_8008)=very_abrupt),_7582),
     happensAt(end(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     \+holdsAt(abrupt_deceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_deceleration(_8006,_8008)=abrupt),_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(start(abrupt_acceleration(_8006,_8008)=very_abrupt),_7582),
     \+holdsAt(abrupt_acceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     happensAt(end(abrupt_deceleration(_8006,_8008)=abrupt),_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(start(abrupt_acceleration(_8006,_8008)=very_abrupt),_7582),
     \+holdsAt(abrupt_acceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     \+holdsAt(abrupt_deceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_deceleration(_8006,_8008)=abrupt),_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     happensAt(end(abrupt_deceleration(_8006,_8008)=abrupt),_7582),
     \+happensAt(end(abrupt_acceleration(_8006,_8008)=very_abrupt),_7582),
     holdsAt(abrupt_acceleration(_8006,_8008)=very_abrupt,_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     \+holdsAt(abrupt_deceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_deceleration(_8006,_8008)=abrupt),_7582),
     \+happensAt(end(abrupt_acceleration(_8006,_8008)=very_abrupt),_7582),
     holdsAt(abrupt_acceleration(_8006,_8008)=very_abrupt,_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(abrupt_deceleration(_8006,_8008)=abrupt),_7582),
     \+happensAt(start(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     \+holdsAt(abrupt_acceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(end(abrupt_acceleration(_8006,_8008)=very_abrupt),_7582),
     holdsAt(abrupt_acceleration(_8006,_8008)=very_abrupt,_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(start(abrupt_deceleration(_8006,_8008)=very_abrupt),_7582),
     happensAt(end(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     happensAt(end(abrupt_deceleration(_8006,_8008)=abrupt),_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(start(abrupt_deceleration(_8006,_8008)=very_abrupt),_7582),
     happensAt(end(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     \+holdsAt(abrupt_deceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_deceleration(_8006,_8008)=abrupt),_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(start(abrupt_deceleration(_8006,_8008)=very_abrupt),_7582),
     \+holdsAt(abrupt_acceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     happensAt(end(abrupt_deceleration(_8006,_8008)=abrupt),_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(start(abrupt_deceleration(_8006,_8008)=very_abrupt),_7582),
     \+holdsAt(abrupt_acceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     \+holdsAt(abrupt_deceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_deceleration(_8006,_8008)=abrupt),_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     happensAt(end(abrupt_deceleration(_8006,_8008)=abrupt),_7582),
     \+happensAt(end(abrupt_deceleration(_8006,_8008)=very_abrupt),_7582),
     holdsAt(abrupt_deceleration(_8006,_8008)=very_abrupt,_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     \+holdsAt(abrupt_deceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(start(abrupt_deceleration(_8006,_8008)=abrupt),_7582),
     \+happensAt(end(abrupt_deceleration(_8006,_8008)=very_abrupt),_7582),
     holdsAt(abrupt_deceleration(_8006,_8008)=very_abrupt,_7582).

terminatedAt(uncomfortable_driving_style(_8006,_8008)=true, _7582) :-
     happensAt(end(abrupt_deceleration(_8006,_8008)=abrupt),_7582),
     \+happensAt(start(abrupt_acceleration(_8006,_8008)=abrupt),_7582),
     \+holdsAt(abrupt_acceleration(_8006,_8008)=abrupt,_7582),
     \+happensAt(end(abrupt_deceleration(_8006,_8008)=very_abrupt),_7582),
     holdsAt(abrupt_deceleration(_8006,_8008)=very_abrupt,_7582).

terminatedAt(high_driving_quality(_8006,_8008)=true, _7582) :-
     happensAt(end(punctuality(_8006,_8008)=punctual),_7582).

terminatedAt(high_driving_quality(_8006,_8008)=true, _7582) :-
     happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582).

terminatedAt(high_driving_quality(_8006,_8008)=true, _7582) :-
     happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582).

terminatedAt(medium_driving_quality(_8006,_8008)=true, _7582) :-
     happensAt(end(punctuality(_8006,_8008)=punctual),_7582).

terminatedAt(medium_driving_quality(_8006,_8008)=true, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582).

terminatedAt(low_driving_quality(_8006,_8008)=true, _7582) :-
     happensAt(end(punctuality(_8006,_8008)=non_punctual),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582).

terminatedAt(low_driving_quality(_8006,_8008)=true, _7582) :-
     happensAt(end(punctuality(_8006,_8008)=non_punctual),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582).

terminatedAt(low_driving_quality(_8006,_8008)=true, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+happensAt(start(punctuality(_8006,_8008)=non_punctual),_7582),
     \+holdsAt(punctuality(_8006,_8008)=non_punctual,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(passenger_density(_8006,_8008)=high),_7582),
     \+holdsAt(passenger_density(_8006,_8008)=high,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_cold,_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(driver_comfort(_8006,_8008)=reducing, _7582) :-
     happensAt(end(internal_temperature(_8006,_8008)=very_cold),_7582),
     \+happensAt(start(internal_temperature(_8006,_8008)=very_warm),_7582),
     \+holdsAt(internal_temperature(_8006,_8008)=very_warm,_7582),
     \+happensAt(start(noise_level(_8006,_8008)=high),_7582),
     \+holdsAt(noise_level(_8006,_8008)=high,_7582),
     \+happensAt(start(unsafe_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(unsafe_driving_style(_8006,_8008)=true,_7582),
     \+happensAt(start(uncomfortable_driving_style(_8006,_8008)=true),_7582),
     \+holdsAt(uncomfortable_driving_style(_8006,_8008)=true,_7582).

terminatedAt(passenger_satisfaction(_8006,_8008)=reducing, _7582) :-
     happensAt(end(punctuality(_8006,_8008)=non_punctual),_7582),
     happensAt(end(passenger_comfort(_8006,_8008)=reducing),_7582).

terminatedAt(passenger_satisfaction(_8006,_8008)=reducing, _7582) :-
     happensAt(end(punctuality(_8006,_8008)=non_punctual),_7582),
     \+holdsAt(passenger_comfort(_8006,_8008)=reducing,_7582),
     \+happensAt(start(passenger_comfort(_8006,_8008)=reducing),_7582).

terminatedAt(passenger_satisfaction(_8006,_8008)=reducing, _7582) :-
     happensAt(end(passenger_comfort(_8006,_8008)=reducing),_7582),
     \+happensAt(start(punctuality(_8006,_8008)=non_punctual),_7582),
     \+holdsAt(punctuality(_8006,_8008)=non_punctual,_7582).


% These input statically determined fluents arrive in the form of intervals in input streams.
collectIntervals(abrupt_acceleration(_,_)=abrupt).
collectIntervals(abrupt_acceleration(_,_)=very_abrupt).
collectIntervals(abrupt_deceleration(_,_)=abrupt).
collectIntervals(abrupt_deceleration(_,_)=very_abrupt).
collectIntervals(sharp_turn(_,_)=sharp).
collectIntervals(sharp_turn(_,_)=very_sharp).

% The elements of these domains are derived from the ground arguments of input entitites
dynamicDomain(vehicle(_,_)).

% Grounding for input entities:
grounding(stop_enter(Id, VehicleType,_,_)):-
	vehicle(Id, VehicleType).
grounding(stop_leave(Id, VehicleType,_,_)):-
	vehicle(Id, VehicleType).
grounding(internal_temperature_change(Id, VehicleType,_)):-
	vehicle(Id, VehicleType).
grounding(noise_level_change(Id, VehicleType,_)):-
	vehicle(Id, VehicleType).
grounding(passenger_density_change(Id, VehicleType,_)):-
	vehicle(Id, VehicleType).
grounding(punctuality_change(Id,VehicleType,punctual)):-
	vehicle(Id, VehicleType).
grounding(punctuality_change(Id,VehicleType,non_punctual)):-
	vehicle(Id, VehicleType).
grounding(abrupt_acceleration(Id,VehicleType)=abrupt):-
	vehicle(Id, VehicleType). 
grounding(abrupt_acceleration(Id,VehicleType)=very_abrupt):-
	vehicle(Id, VehicleType). 
grounding(abrupt_deceleration(Id,VehicleType)=abrupt):-
	vehicle(Id, VehicleType). 
grounding(abrupt_deceleration(Id,VehicleType)=very_abrupt):-
	vehicle(Id, VehicleType). 
grounding(sharp_turn(Id,VehicleType)=sharp):-
	vehicle(Id, VehicleType). 
grounding(sharp_turn(Id,VehicleType)=very_sharp):-
	vehicle(Id, VehicleType).

% Grounding for output entities:
grounding(punctuality(Id,VehicleType)=punctual):-
	vehicle(Id, VehicleType).   
grounding(punctuality(Id,VehicleType)=non_punctual):-
	vehicle(Id, VehicleType).
grounding(passenger_density(Id,VehicleType)=high):-
	vehicle(Id, VehicleType).
grounding(noise_level(Id,VehicleType)=high):-
	vehicle(Id, VehicleType).
grounding(internal_temperature(Id,VehicleType)=very_warm):-
	vehicle(Id, VehicleType).
grounding(internal_temperature(Id,VehicleType)=very_cold):-
	vehicle(Id, VehicleType).
grounding(driving_style(Id,VehicleType)=unsafe):-
	vehicle(Id, VehicleType).
grounding(driving_style(Id,VehicleType)=uncomfortable):-
	vehicle(Id, VehicleType).
grounding(driving_quality(Id,VehicleType)=high):-
	vehicle(Id, VehicleType).
grounding(driving_quality(Id,VehicleType)=medium):-
	vehicle(Id, VehicleType).
grounding(driving_quality(Id,VehicleType)=low):-
	vehicle(Id, VehicleType). 
grounding(passenger_comfort(Id,VehicleType)=reducing):-
	vehicle(Id, VehicleType).
grounding(driver_comfort(Id,VehicleType)=reducing):-
	vehicle(Id, VehicleType).
grounding(passenger_satisfaction(Id,VehicleType)=reducing):-
	vehicle(Id, VehicleType).

