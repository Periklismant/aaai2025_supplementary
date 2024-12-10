:- dynamic vehicle/2.

initiatedAt(passenger_density(_1204,_1206)=low, _1216, -1, _1224) :-
     _1216=< -1,
     -1<_1224.

initiatedAt(noise_level(_1204,_1206)=low, _1216, -1, _1224) :-
     _1216=< -1,
     -1<_1224.

initiatedAt(internal_temperature(_1204,_1206)=normal, _1216, -1, _1224) :-
     _1216=< -1,
     -1<_1224.

initiatedAt(punctuality(_1214,_1216)=punctual, _1238, _1184, _1244) :-
     happensAtIE(stop_enter(_1214,_1216,_1224,scheduled),_1184),
     _1238=<_1184,
     _1184<_1244.

initiatedAt(punctuality(_1214,_1216)=punctual, _1238, _1184, _1244) :-
     happensAtIE(stop_enter(_1214,_1216,_1224,early),_1184),
     _1238=<_1184,
     _1184<_1244.

initiatedAt(punctuality(_1214,_1216)=non_punctual, _1238, _1184, _1244) :-
     happensAtIE(stop_enter(_1214,_1216,_1224,late),_1184),
     _1238=<_1184,
     _1184<_1244.

initiatedAt(punctuality(_1214,_1216)=non_punctual, _1238, _1184, _1244) :-
     happensAtIE(stop_leave(_1214,_1216,_1224,early),_1184),
     _1238=<_1184,
     _1184<_1244.

initiatedAt(punctuality(_1214,_1216)=non_punctual, _1238, _1184, _1244) :-
     happensAtIE(stop_leave(_1214,_1216,_1224,late),_1184),
     _1238=<_1184,
     _1184<_1244.

initiatedAt(unsafe_driving_style(_1214,_1216)=true, _1250, _1184, _1256) :-
     happensAtProcessedIE(_1214,start(sharp_turn(_1214,_1216)=very_sharp),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(unsafe_driving_style(_1214,_1216)=true, _1250, _1184, _1256) :-
     happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(unsafe_driving_style(_1214,_1216)=true, _1250, _1184, _1256) :-
     happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1306, _1184, _1312) :-
     happensAtProcessedIE(_1214,start(sharp_turn(_1214,_1216)=sharp),_1184),_1306=<_1184,_1184<_1312,
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184).

initiatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1338, _1184, _1344) :-
     happensAtProcessedIE(_1214,start(sharp_turn(_1214,_1216)=sharp),_1184),_1338=<_1184,_1184<_1344,
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=very_abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184).

initiatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1338, _1184, _1344) :-
     happensAtProcessedIE(_1214,start(sharp_turn(_1214,_1216)=sharp),_1184),_1338=<_1184,_1184<_1344,
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=very_abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184).

initiatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1370, _1184, _1376) :-
     happensAtProcessedIE(_1214,start(sharp_turn(_1214,_1216)=sharp),_1184),_1370=<_1184,_1184<_1376,
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=very_abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=very_abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184).

initiatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1334, _1184, _1340) :-
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),_1334=<_1184,_1184<_1340,
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184),
     \+happensAtProcessedIE(_1214,end(sharp_turn(_1214,_1216)=sharp),_1184),
     holdsAtProcessedIE(_1214,sharp_turn(_1214,_1216)=sharp,_1184).

initiatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1366, _1184, _1372) :-
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),_1366=<_1184,_1184<_1372,
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=very_abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184),
     \+happensAtProcessedIE(_1214,end(sharp_turn(_1214,_1216)=sharp),_1184),
     holdsAtProcessedIE(_1214,sharp_turn(_1214,_1216)=sharp,_1184).

initiatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1366, _1184, _1372) :-
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184),_1366=<_1184,_1184<_1372,
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=very_abrupt,_1184),
     \+happensAtProcessedIE(_1214,end(sharp_turn(_1214,_1216)=sharp),_1184),
     holdsAtProcessedIE(_1214,sharp_turn(_1214,_1216)=sharp,_1184).

initiatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1250, _1184, _1256) :-
     happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=abrupt),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1250, _1184, _1256) :-
     happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=abrupt),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(high_driving_quality(_1214,_1216)=true, _1306, _1184, _1312) :-
     happensAtProcessedSimpleFluent(_1214,start(punctuality(_1214,_1216)=punctual),_1184),_1306=<_1184,_1184<_1312,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184).

initiatedAt(high_driving_quality(_1214,_1216)=true, _1338, _1184, _1344) :-
     happensAtProcessedSimpleFluent(_1214,start(punctuality(_1214,_1216)=punctual),_1184),_1338=<_1184,_1184<_1344,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184).

initiatedAt(high_driving_quality(_1214,_1216)=true, _1338, _1184, _1344) :-
     happensAtProcessedSimpleFluent(_1214,start(punctuality(_1214,_1216)=punctual),_1184),_1338=<_1184,_1184<_1344,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184).

initiatedAt(high_driving_quality(_1214,_1216)=true, _1370, _1184, _1376) :-
     happensAtProcessedSimpleFluent(_1214,start(punctuality(_1214,_1216)=punctual),_1184),_1370=<_1184,_1184<_1376,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184).

initiatedAt(high_driving_quality(_1214,_1216)=true, _1334, _1184, _1340) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1334=<_1184,_1184<_1340,
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+happensAtProcessedSimpleFluent(_1214,end(punctuality(_1214,_1216)=punctual),_1184),
     holdsAtProcessedSimpleFluent(_1214,punctuality(_1214,_1216)=punctual,_1184).

initiatedAt(high_driving_quality(_1214,_1216)=true, _1366, _1184, _1372) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1366=<_1184,_1184<_1372,
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+happensAtProcessedSimpleFluent(_1214,end(punctuality(_1214,_1216)=punctual),_1184),
     holdsAtProcessedSimpleFluent(_1214,punctuality(_1214,_1216)=punctual,_1184).

initiatedAt(high_driving_quality(_1214,_1216)=true, _1366, _1184, _1372) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1366=<_1184,_1184<_1372,
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,end(punctuality(_1214,_1216)=punctual),_1184),
     holdsAtProcessedSimpleFluent(_1214,punctuality(_1214,_1216)=punctual,_1184).

initiatedAt(medium_driving_quality(_1214,_1216)=true, _1278, _1184, _1284) :-
     happensAtProcessedSimpleFluent(_1214,start(punctuality(_1214,_1216)=punctual),_1184),_1278=<_1184,_1184<_1284,
     happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184).

initiatedAt(medium_driving_quality(_1214,_1216)=true, _1306, _1184, _1312) :-
     happensAtProcessedSimpleFluent(_1214,start(punctuality(_1214,_1216)=punctual),_1184),_1306=<_1184,_1184<_1312,
     holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184).

initiatedAt(medium_driving_quality(_1214,_1216)=true, _1306, _1184, _1312) :-
     happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1306=<_1184,_1184<_1312,
     \+happensAtProcessedSimpleFluent(_1214,end(punctuality(_1214,_1216)=punctual),_1184),
     holdsAtProcessedSimpleFluent(_1214,punctuality(_1214,_1216)=punctual,_1184).

initiatedAt(low_driving_quality(_1214,_1216)=true, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(punctuality(_1214,_1216)=non_punctual),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(low_driving_quality(_1214,_1216)=true, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(passenger_comfort(_1214,_1216)=reducing, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(passenger_comfort(_1214,_1216)=reducing, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(passenger_comfort(_1214,_1216)=reducing, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(passenger_comfort(_1214,_1216)=reducing, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(passenger_comfort(_1214,_1216)=reducing, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(passenger_comfort(_1214,_1216)=reducing, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(driver_comfort(_1214,_1216)=reducing, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(driver_comfort(_1214,_1216)=reducing, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(driver_comfort(_1214,_1216)=reducing, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(driver_comfort(_1214,_1216)=reducing, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(driver_comfort(_1214,_1216)=reducing, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(passenger_satisfaction(_1214,_1216)=reducing, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(punctuality(_1214,_1216)=non_punctual),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(passenger_satisfaction(_1214,_1216)=reducing, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(passenger_comfort(_1214,_1216)=reducing),_1184),_1250=<_1184,_1184<_1256.

initiatedAt(passenger_density(_1206,_1208)=_1192, _1240, _1186, _1246) :-
     happensAtIE(passenger_density_change(_1206,_1208,_1192),_1186),_1240=<_1186,_1186<_1246.

initiatedAt(noise_level(_1206,_1208)=_1192, _1240, _1186, _1246) :-
     happensAtIE(noise_level_change(_1206,_1208,_1192),_1186),_1240=<_1186,_1186<_1246.

initiatedAt(internal_temperature(_1206,_1208)=_1192, _1240, _1186, _1246) :-
     happensAtIE(internal_temperature_change(_1206,_1208,_1192),_1186),_1240=<_1186,_1186<_1246.

terminatedAt(punctuality(_1214,_1216)=punctual, _1238, _1184, _1244) :-
     happensAtIE(stop_enter(_1214,_1216,_1224,late),_1184),
     _1238=<_1184,
     _1184<_1244.

terminatedAt(punctuality(_1214,_1216)=punctual, _1238, _1184, _1244) :-
     happensAtIE(stop_leave(_1214,_1216,_1224,early),_1184),
     _1238=<_1184,
     _1184<_1244.

terminatedAt(unsafe_driving_style(_1214,_1216)=true, _1306, _1184, _1312) :-
     happensAtProcessedIE(_1214,end(sharp_turn(_1214,_1216)=very_sharp),_1184),_1306=<_1184,_1184<_1312,
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184).

terminatedAt(unsafe_driving_style(_1214,_1216)=true, _1338, _1184, _1344) :-
     happensAtProcessedIE(_1214,end(sharp_turn(_1214,_1216)=very_sharp),_1184),_1338=<_1184,_1184<_1344,
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=very_abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184).

terminatedAt(unsafe_driving_style(_1214,_1216)=true, _1338, _1184, _1344) :-
     happensAtProcessedIE(_1214,end(sharp_turn(_1214,_1216)=very_sharp),_1184),_1338=<_1184,_1184<_1344,
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=very_abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184).

terminatedAt(unsafe_driving_style(_1214,_1216)=true, _1370, _1184, _1376) :-
     happensAtProcessedIE(_1214,end(sharp_turn(_1214,_1216)=very_sharp),_1184),_1370=<_1184,_1184<_1376,
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=very_abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=very_abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184).

terminatedAt(unsafe_driving_style(_1214,_1216)=true, _1338, _1184, _1344) :-
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),_1338=<_1184,_1184<_1344,
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184),
     \+happensAtProcessedIE(_1214,start(sharp_turn(_1214,_1216)=very_sharp),_1184),
     \+holdsAtProcessedIE(_1214,sharp_turn(_1214,_1216)=very_sharp,_1184).

terminatedAt(unsafe_driving_style(_1214,_1216)=true, _1370, _1184, _1376) :-
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),_1370=<_1184,_1184<_1376,
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=very_abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184),
     \+happensAtProcessedIE(_1214,start(sharp_turn(_1214,_1216)=very_sharp),_1184),
     \+holdsAtProcessedIE(_1214,sharp_turn(_1214,_1216)=very_sharp,_1184).

terminatedAt(unsafe_driving_style(_1214,_1216)=true, _1370, _1184, _1376) :-
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184),_1370=<_1184,_1184<_1376,
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=very_abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(sharp_turn(_1214,_1216)=very_sharp),_1184),
     \+holdsAtProcessedIE(_1214,sharp_turn(_1214,_1216)=very_sharp,_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1306, _1184, _1312) :-
     happensAtProcessedIE(_1214,end(sharp_turn(_1214,_1216)=sharp),_1184),_1306=<_1184,_1184<_1312,
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=abrupt),_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1338, _1184, _1344) :-
     happensAtProcessedIE(_1214,end(sharp_turn(_1214,_1216)=sharp),_1184),_1338=<_1184,_1184<_1344,
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=abrupt),_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1338, _1184, _1344) :-
     happensAtProcessedIE(_1214,end(sharp_turn(_1214,_1216)=sharp),_1184),_1338=<_1184,_1184<_1344,
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=abrupt),_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1370, _1184, _1376) :-
     happensAtProcessedIE(_1214,end(sharp_turn(_1214,_1216)=sharp),_1184),_1370=<_1184,_1184<_1376,
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=abrupt),_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1338, _1184, _1344) :-
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=abrupt),_1184),_1338=<_1184,_1184<_1344,
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=abrupt),_1184),
     \+happensAtProcessedIE(_1214,start(sharp_turn(_1214,_1216)=sharp),_1184),
     \+holdsAtProcessedIE(_1214,sharp_turn(_1214,_1216)=sharp,_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1370, _1184, _1376) :-
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=abrupt),_1184),_1370=<_1184,_1184<_1376,
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=abrupt),_1184),
     \+happensAtProcessedIE(_1214,start(sharp_turn(_1214,_1216)=sharp),_1184),
     \+holdsAtProcessedIE(_1214,sharp_turn(_1214,_1216)=sharp,_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1370, _1184, _1376) :-
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=abrupt),_1184),_1370=<_1184,_1184<_1376,
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(sharp_turn(_1214,_1216)=sharp),_1184),
     \+holdsAtProcessedIE(_1214,sharp_turn(_1214,_1216)=sharp,_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1306, _1184, _1312) :-
     happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),_1306=<_1184,_1184<_1312,
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=abrupt),_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1338, _1184, _1344) :-
     happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),_1338=<_1184,_1184<_1344,
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=abrupt),_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1338, _1184, _1344) :-
     happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),_1338=<_1184,_1184<_1344,
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=abrupt),_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1370, _1184, _1376) :-
     happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),_1370=<_1184,_1184<_1376,
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=abrupt),_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1334, _1184, _1340) :-
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=abrupt),_1184),_1334=<_1184,_1184<_1340,
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=abrupt),_1184),
     \+happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),
     holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=very_abrupt,_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1366, _1184, _1372) :-
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=abrupt),_1184),_1366=<_1184,_1184<_1372,
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=abrupt),_1184),
     \+happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),
     holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=very_abrupt,_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1366, _1184, _1372) :-
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=abrupt),_1184),_1366=<_1184,_1184<_1372,
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=very_abrupt),_1184),
     holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=very_abrupt,_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1306, _1184, _1312) :-
     happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184),_1306=<_1184,_1184<_1312,
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=abrupt),_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1338, _1184, _1344) :-
     happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184),_1338=<_1184,_1184<_1344,
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=abrupt),_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1338, _1184, _1344) :-
     happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184),_1338=<_1184,_1184<_1344,
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=abrupt),_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1370, _1184, _1376) :-
     happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184),_1370=<_1184,_1184<_1376,
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=abrupt),_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1334, _1184, _1340) :-
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=abrupt),_1184),_1334=<_1184,_1184<_1340,
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=abrupt),_1184),
     \+happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184),
     holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=very_abrupt,_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1366, _1184, _1372) :-
     happensAtProcessedIE(_1214,end(abrupt_acceleration(_1214,_1216)=abrupt),_1184),_1366=<_1184,_1184<_1372,
     \+holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,start(abrupt_deceleration(_1214,_1216)=abrupt),_1184),
     \+happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184),
     holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=very_abrupt,_1184).

terminatedAt(uncomfortable_driving_style(_1214,_1216)=true, _1366, _1184, _1372) :-
     happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=abrupt),_1184),_1366=<_1184,_1184<_1372,
     \+happensAtProcessedIE(_1214,start(abrupt_acceleration(_1214,_1216)=abrupt),_1184),
     \+holdsAtProcessedIE(_1214,abrupt_acceleration(_1214,_1216)=abrupt,_1184),
     \+happensAtProcessedIE(_1214,end(abrupt_deceleration(_1214,_1216)=very_abrupt),_1184),
     holdsAtProcessedIE(_1214,abrupt_deceleration(_1214,_1216)=very_abrupt,_1184).

terminatedAt(high_driving_quality(_1214,_1216)=true, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,end(punctuality(_1214,_1216)=punctual),_1184),_1250=<_1184,_1184<_1256.

terminatedAt(high_driving_quality(_1214,_1216)=true, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),_1250=<_1184,_1184<_1256.

terminatedAt(high_driving_quality(_1214,_1216)=true, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1250=<_1184,_1184<_1256.

terminatedAt(medium_driving_quality(_1214,_1216)=true, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,end(punctuality(_1214,_1216)=punctual),_1184),_1250=<_1184,_1184<_1256.

terminatedAt(medium_driving_quality(_1214,_1216)=true, _1250, _1184, _1256) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1250=<_1184,_1184<_1256.

terminatedAt(low_driving_quality(_1214,_1216)=true, _1278, _1184, _1284) :-
     happensAtProcessedSimpleFluent(_1214,end(punctuality(_1214,_1216)=non_punctual),_1184),_1278=<_1184,_1184<_1284,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184).

terminatedAt(low_driving_quality(_1214,_1216)=true, _1310, _1184, _1316) :-
     happensAtProcessedSimpleFluent(_1214,end(punctuality(_1214,_1216)=non_punctual),_1184),_1310=<_1184,_1184<_1316,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184).

terminatedAt(low_driving_quality(_1214,_1216)=true, _1310, _1184, _1316) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1310=<_1184,_1184<_1316,
     \+happensAtProcessedSimpleFluent(_1214,start(punctuality(_1214,_1216)=non_punctual),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,punctuality(_1214,_1216)=non_punctual,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1390, _1184, _1396) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1390=<_1184,_1184<_1396,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1422, _1184, _1428) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1422=<_1184,_1184<_1428,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1422, _1184, _1428) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1422=<_1184,_1184<_1428,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1454=<_1184,_1184<_1460,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1422, _1184, _1428) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1422=<_1184,_1184<_1428,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1454=<_1184,_1184<_1460,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1454=<_1184,_1184<_1460,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1422, _1184, _1428) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1422=<_1184,_1184<_1428,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1454=<_1184,_1184<_1460,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1454=<_1184,_1184<_1460,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1454=<_1184,_1184<_1460,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1518=<_1184,_1184<_1524,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1422, _1184, _1428) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1422=<_1184,_1184<_1428,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1454=<_1184,_1184<_1460,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1454=<_1184,_1184<_1460,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1454=<_1184,_1184<_1460,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1518=<_1184,_1184<_1524,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1454=<_1184,_1184<_1460,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1518=<_1184,_1184<_1524,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1518=<_1184,_1184<_1524,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1518=<_1184,_1184<_1524,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1550, _1184, _1556) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1550=<_1184,_1184<_1556,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1422, _1184, _1428) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1422=<_1184,_1184<_1428,
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1454=<_1184,_1184<_1460,
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1454=<_1184,_1184<_1460,
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1454=<_1184,_1184<_1460,
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1518=<_1184,_1184<_1524,
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1454=<_1184,_1184<_1460,
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1518=<_1184,_1184<_1524,
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1486=<_1184,_1184<_1492,
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1518=<_1184,_1184<_1524,
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1518=<_1184,_1184<_1524,
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1550, _1184, _1556) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1550=<_1184,_1184<_1556,
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1454, _1184, _1460) :-
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),_1454=<_1184,_1184<_1460,
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),_1486=<_1184,_1184<_1492,
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),_1486=<_1184,_1184<_1492,
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),_1518=<_1184,_1184<_1524,
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),_1486=<_1184,_1184<_1492,
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),_1518=<_1184,_1184<_1524,
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),_1518=<_1184,_1184<_1524,
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1550, _1184, _1556) :-
     happensAtProcessedSimpleFluent(_1214,end(passenger_density(_1214,_1216)=high),_1184),_1550=<_1184,_1184<_1556,
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1486, _1184, _1492) :-
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),_1486=<_1184,_1184<_1492,
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),_1518=<_1184,_1184<_1524,
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),_1518=<_1184,_1184<_1524,
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1550, _1184, _1556) :-
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),_1550=<_1184,_1184<_1556,
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1518, _1184, _1524) :-
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),_1518=<_1184,_1184<_1524,
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1550, _1184, _1556) :-
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),_1550=<_1184,_1184<_1556,
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_comfort(_1214,_1216)=reducing, _1550, _1184, _1556) :-
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),_1550=<_1184,_1184<_1556,
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_density(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,passenger_density(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1362, _1184, _1368) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1362=<_1184,_1184<_1368,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1394, _1184, _1400) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1394=<_1184,_1184<_1400,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1394, _1184, _1400) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1394=<_1184,_1184<_1400,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1426, _1184, _1432) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1426=<_1184,_1184<_1432,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1394, _1184, _1400) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1394=<_1184,_1184<_1400,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1426, _1184, _1432) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1426=<_1184,_1184<_1432,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1426, _1184, _1432) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1426=<_1184,_1184<_1432,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1458, _1184, _1464) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1458=<_1184,_1184<_1464,
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1394, _1184, _1400) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1394=<_1184,_1184<_1400,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1426, _1184, _1432) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1426=<_1184,_1184<_1432,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1426, _1184, _1432) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1426=<_1184,_1184<_1432,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1458, _1184, _1464) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1458=<_1184,_1184<_1464,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1426, _1184, _1432) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1426=<_1184,_1184<_1432,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1458, _1184, _1464) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1458=<_1184,_1184<_1464,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1458, _1184, _1464) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1458=<_1184,_1184<_1464,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1490, _1184, _1496) :-
     happensAtProcessedSimpleFluent(_1214,end(uncomfortable_driving_style(_1214,_1216)=true),_1184),_1490=<_1184,_1184<_1496,
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1394, _1184, _1400) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1394=<_1184,_1184<_1400,
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1426, _1184, _1432) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1426=<_1184,_1184<_1432,
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1426, _1184, _1432) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1426=<_1184,_1184<_1432,
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1458, _1184, _1464) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1458=<_1184,_1184<_1464,
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1426, _1184, _1432) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1426=<_1184,_1184<_1432,
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1458, _1184, _1464) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1458=<_1184,_1184<_1464,
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1458, _1184, _1464) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1458=<_1184,_1184<_1464,
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1490, _1184, _1496) :-
     happensAtProcessedSimpleFluent(_1214,end(unsafe_driving_style(_1214,_1216)=true),_1184),_1490=<_1184,_1184<_1496,
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1426, _1184, _1432) :-
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),_1426=<_1184,_1184<_1432,
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1458, _1184, _1464) :-
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),_1458=<_1184,_1184<_1464,
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1458, _1184, _1464) :-
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),_1458=<_1184,_1184<_1464,
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1490, _1184, _1496) :-
     happensAtProcessedSimpleFluent(_1214,end(noise_level(_1214,_1216)=high),_1184),_1490=<_1184,_1184<_1496,
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1458, _1184, _1464) :-
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),_1458=<_1184,_1184<_1464,
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1490, _1184, _1496) :-
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_warm),_1184),_1490=<_1184,_1184<_1496,
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_cold,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_cold),_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(driver_comfort(_1214,_1216)=reducing, _1490, _1184, _1496) :-
     happensAtProcessedSimpleFluent(_1214,end(internal_temperature(_1214,_1216)=very_cold),_1184),_1490=<_1184,_1184<_1496,
     \+happensAtProcessedSimpleFluent(_1214,start(internal_temperature(_1214,_1216)=very_warm),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,internal_temperature(_1214,_1216)=very_warm,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(noise_level(_1214,_1216)=high),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,noise_level(_1214,_1216)=high,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(unsafe_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,unsafe_driving_style(_1214,_1216)=true,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(uncomfortable_driving_style(_1214,_1216)=true),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,uncomfortable_driving_style(_1214,_1216)=true,_1184).

terminatedAt(passenger_satisfaction(_1214,_1216)=reducing, _1278, _1184, _1284) :-
     happensAtProcessedSimpleFluent(_1214,end(punctuality(_1214,_1216)=non_punctual),_1184),_1278=<_1184,_1184<_1284,
     happensAtProcessedSimpleFluent(_1214,end(passenger_comfort(_1214,_1216)=reducing),_1184).

terminatedAt(passenger_satisfaction(_1214,_1216)=reducing, _1310, _1184, _1316) :-
     happensAtProcessedSimpleFluent(_1214,end(punctuality(_1214,_1216)=non_punctual),_1184),_1310=<_1184,_1184<_1316,
     \+holdsAtProcessedSimpleFluent(_1214,passenger_comfort(_1214,_1216)=reducing,_1184),
     \+happensAtProcessedSimpleFluent(_1214,start(passenger_comfort(_1214,_1216)=reducing),_1184).

terminatedAt(passenger_satisfaction(_1214,_1216)=reducing, _1310, _1184, _1316) :-
     happensAtProcessedSimpleFluent(_1214,end(passenger_comfort(_1214,_1216)=reducing),_1184),_1310=<_1184,_1184<_1316,
     \+happensAtProcessedSimpleFluent(_1214,start(punctuality(_1214,_1216)=non_punctual),_1184),
     \+holdsAtProcessedSimpleFluent(_1214,punctuality(_1214,_1216)=non_punctual,_1184).

happensAtEv(punctuality_change(_1202,_1204,punctual),_1184) :-
     happensAtProcessedSimpleFluent(_1202,end(punctuality(_1202,_1204)=non_punctual),_1184).

happensAtEv(punctuality_change(_1202,_1204,non_punctual),_1184) :-
     happensAtProcessedSimpleFluent(_1202,end(punctuality(_1202,_1204)=punctual),_1184).

collectIntervals2(_1188, abrupt_acceleration(_1188,_1190)=abrupt) :-
     vehicle(_1188,_1190).

collectIntervals2(_1188, abrupt_acceleration(_1188,_1190)=very_abrupt) :-
     vehicle(_1188,_1190).

collectIntervals2(_1188, abrupt_deceleration(_1188,_1190)=abrupt) :-
     vehicle(_1188,_1190).

collectIntervals2(_1188, abrupt_deceleration(_1188,_1190)=very_abrupt) :-
     vehicle(_1188,_1190).

collectIntervals2(_1188, sharp_turn(_1188,_1190)=sharp) :-
     vehicle(_1188,_1190).

collectIntervals2(_1188, sharp_turn(_1188,_1190)=very_sharp) :-
     vehicle(_1188,_1190).

grounding(stop_enter(_1538,_1540,_1542,_1544)) :- 
     vehicle(_1538,_1540).

grounding(stop_leave(_1538,_1540,_1542,_1544)) :- 
     vehicle(_1538,_1540).

grounding(internal_temperature_change(_1538,_1540,_1542)) :- 
     vehicle(_1538,_1540).

grounding(noise_level_change(_1538,_1540,_1542)) :- 
     vehicle(_1538,_1540).

grounding(passenger_density_change(_1538,_1540,_1542)) :- 
     vehicle(_1538,_1540).

grounding(punctuality_change(_1538,_1540,punctual)) :- 
     vehicle(_1538,_1540).

grounding(punctuality_change(_1538,_1540,non_punctual)) :- 
     vehicle(_1538,_1540).

grounding(abrupt_acceleration(_1544,_1546)=abrupt) :- 
     vehicle(_1544,_1546).

grounding(abrupt_acceleration(_1544,_1546)=very_abrupt) :- 
     vehicle(_1544,_1546).

grounding(abrupt_deceleration(_1544,_1546)=abrupt) :- 
     vehicle(_1544,_1546).

grounding(abrupt_deceleration(_1544,_1546)=very_abrupt) :- 
     vehicle(_1544,_1546).

grounding(sharp_turn(_1544,_1546)=sharp) :- 
     vehicle(_1544,_1546).

grounding(sharp_turn(_1544,_1546)=very_sharp) :- 
     vehicle(_1544,_1546).

grounding(punctuality(_1544,_1546)=punctual) :- 
     vehicle(_1544,_1546).

grounding(punctuality(_1544,_1546)=non_punctual) :- 
     vehicle(_1544,_1546).

grounding(passenger_density(_1544,_1546)=high) :- 
     vehicle(_1544,_1546).

grounding(noise_level(_1544,_1546)=high) :- 
     vehicle(_1544,_1546).

grounding(internal_temperature(_1544,_1546)=very_warm) :- 
     vehicle(_1544,_1546).

grounding(internal_temperature(_1544,_1546)=very_cold) :- 
     vehicle(_1544,_1546).

grounding(unsafe_driving_style(_1544,_1546)=true) :- 
     vehicle(_1544,_1546).

grounding(uncomfortable_driving_style(_1544,_1546)=true) :- 
     vehicle(_1544,_1546).

grounding(high_driving_quality(_1544,_1546)=true) :- 
     vehicle(_1544,_1546).

grounding(medium_driving_quality(_1544,_1546)=true) :- 
     vehicle(_1544,_1546).

grounding(low_driving_quality(_1544,_1546)=true) :- 
     vehicle(_1544,_1546).

grounding(passenger_comfort(_1544,_1546)=reducing) :- 
     vehicle(_1544,_1546).

grounding(driver_comfort(_1544,_1546)=reducing) :- 
     vehicle(_1544,_1546).

grounding(passenger_satisfaction(_1544,_1546)=reducing) :- 
     vehicle(_1544,_1546).

inputEntity(stop_enter(_1244,_1246,_1248,_1250)).
inputEntity(stop_leave(_1244,_1246,_1248,_1250)).
inputEntity(sharp_turn(_1250,_1252)=very_sharp).
inputEntity(abrupt_acceleration(_1250,_1252)=very_abrupt).
inputEntity(abrupt_deceleration(_1250,_1252)=very_abrupt).
inputEntity(negation(sharp_turn(_1254,_1256)=very_sharp)).
inputEntity(negation(abrupt_acceleration(_1254,_1256)=very_abrupt)).
inputEntity(negation(abrupt_deceleration(_1254,_1256)=very_abrupt)).
inputEntity(sharp_turn(_1250,_1252)=sharp).
inputEntity(abrupt_acceleration(_1250,_1252)=abrupt).
inputEntity(abrupt_deceleration(_1250,_1252)=abrupt).
inputEntity(negation(sharp_turn(_1254,_1256)=sharp)).
inputEntity(negation(abrupt_acceleration(_1254,_1256)=abrupt)).
inputEntity(negation(abrupt_deceleration(_1254,_1256)=abrupt)).
inputEntity(negation(punctuality(_1254,_1256)=punctual)).
inputEntity(negation(uncomfortable_driving_style(_1254,_1256)=true)).
inputEntity(negation(punctuality(_1254,_1256)=non_punctual)).
inputEntity(negation(unsafe_driving_style(_1254,_1256)=true)).
inputEntity(negation(passenger_density(_1254,_1256)=high)).
inputEntity(negation(noise_level(_1254,_1256)=high)).
inputEntity(negation(internal_temperature(_1254,_1256)=very_warm)).
inputEntity(negation(internal_temperature(_1254,_1256)=very_cold)).
inputEntity(negation(passenger_comfort(_1254,_1256)=reducing)).
inputEntity(internal_temperature_change(_1244,_1246,_1248)).
inputEntity(noise_level_change(_1244,_1246,_1248)).
inputEntity(passenger_density_change(_1244,_1246,_1248)).

outputEntity(punctuality(_1468,_1470)=punctual).
outputEntity(punctuality(_1468,_1470)=non_punctual).
outputEntity(passenger_density(_1468,_1470)=high).
outputEntity(noise_level(_1468,_1470)=high).
outputEntity(internal_temperature(_1468,_1470)=very_warm).
outputEntity(internal_temperature(_1468,_1470)=very_cold).
outputEntity(passenger_density(_1468,_1470)=low).
outputEntity(noise_level(_1468,_1470)=low).
outputEntity(internal_temperature(_1468,_1470)=normal).
outputEntity(unsafe_driving_style(_1468,_1470)=true).
outputEntity(uncomfortable_driving_style(_1468,_1470)=true).
outputEntity(high_driving_quality(_1468,_1470)=true).
outputEntity(medium_driving_quality(_1468,_1470)=true).
outputEntity(low_driving_quality(_1468,_1470)=true).
outputEntity(passenger_comfort(_1468,_1470)=reducing).
outputEntity(driver_comfort(_1468,_1470)=reducing).
outputEntity(passenger_satisfaction(_1468,_1470)=reducing).
outputEntity(punctuality_change(_1462,_1464,_1466)).

event(punctuality_change(_1632,_1634,_1636)).
event(stop_enter(_1632,_1634,_1636,_1638)).
event(stop_leave(_1632,_1634,_1636,_1638)).
event(internal_temperature_change(_1632,_1634,_1636)).
event(noise_level_change(_1632,_1634,_1636)).
event(passenger_density_change(_1632,_1634,_1636)).

simpleFluent(punctuality(_1736,_1738)=punctual).
simpleFluent(punctuality(_1736,_1738)=non_punctual).
simpleFluent(passenger_density(_1736,_1738)=high).
simpleFluent(noise_level(_1736,_1738)=high).
simpleFluent(internal_temperature(_1736,_1738)=very_warm).
simpleFluent(internal_temperature(_1736,_1738)=very_cold).
simpleFluent(passenger_density(_1736,_1738)=low).
simpleFluent(noise_level(_1736,_1738)=low).
simpleFluent(internal_temperature(_1736,_1738)=normal).
simpleFluent(unsafe_driving_style(_1736,_1738)=true).
simpleFluent(uncomfortable_driving_style(_1736,_1738)=true).
simpleFluent(high_driving_quality(_1736,_1738)=true).
simpleFluent(medium_driving_quality(_1736,_1738)=true).
simpleFluent(low_driving_quality(_1736,_1738)=true).
simpleFluent(passenger_comfort(_1736,_1738)=reducing).
simpleFluent(driver_comfort(_1736,_1738)=reducing).
simpleFluent(passenger_satisfaction(_1736,_1738)=reducing).

sDFluent(sharp_turn(_1900,_1902)=very_sharp).
sDFluent(abrupt_acceleration(_1900,_1902)=very_abrupt).
sDFluent(abrupt_deceleration(_1900,_1902)=very_abrupt).
sDFluent(negation(sharp_turn(_1904,_1906)=very_sharp)).
sDFluent(negation(abrupt_acceleration(_1904,_1906)=very_abrupt)).
sDFluent(negation(abrupt_deceleration(_1904,_1906)=very_abrupt)).
sDFluent(sharp_turn(_1900,_1902)=sharp).
sDFluent(abrupt_acceleration(_1900,_1902)=abrupt).
sDFluent(abrupt_deceleration(_1900,_1902)=abrupt).
sDFluent(negation(sharp_turn(_1904,_1906)=sharp)).
sDFluent(negation(abrupt_acceleration(_1904,_1906)=abrupt)).
sDFluent(negation(abrupt_deceleration(_1904,_1906)=abrupt)).
sDFluent(negation(punctuality(_1904,_1906)=punctual)).
sDFluent(negation(uncomfortable_driving_style(_1904,_1906)=true)).
sDFluent(negation(punctuality(_1904,_1906)=non_punctual)).
sDFluent(negation(unsafe_driving_style(_1904,_1906)=true)).
sDFluent(negation(passenger_density(_1904,_1906)=high)).
sDFluent(negation(noise_level(_1904,_1906)=high)).
sDFluent(negation(internal_temperature(_1904,_1906)=very_warm)).
sDFluent(negation(internal_temperature(_1904,_1906)=very_cold)).
sDFluent(negation(passenger_comfort(_1904,_1906)=reducing)).

index(punctuality_change(_2028,_2088,_2090),_2028).
index(stop_enter(_2028,_2088,_2090,_2092),_2028).
index(stop_leave(_2028,_2088,_2090,_2092),_2028).
index(internal_temperature_change(_2028,_2088,_2090),_2028).
index(noise_level_change(_2028,_2088,_2090),_2028).
index(passenger_density_change(_2028,_2088,_2090),_2028).
index(punctuality(_2028,_2094)=punctual,_2028).
index(punctuality(_2028,_2094)=non_punctual,_2028).
index(passenger_density(_2028,_2094)=high,_2028).
index(noise_level(_2028,_2094)=high,_2028).
index(internal_temperature(_2028,_2094)=very_warm,_2028).
index(internal_temperature(_2028,_2094)=very_cold,_2028).
index(passenger_density(_2028,_2094)=low,_2028).
index(noise_level(_2028,_2094)=low,_2028).
index(internal_temperature(_2028,_2094)=normal,_2028).
index(unsafe_driving_style(_2028,_2094)=true,_2028).
index(uncomfortable_driving_style(_2028,_2094)=true,_2028).
index(high_driving_quality(_2028,_2094)=true,_2028).
index(medium_driving_quality(_2028,_2094)=true,_2028).
index(low_driving_quality(_2028,_2094)=true,_2028).
index(passenger_comfort(_2028,_2094)=reducing,_2028).
index(driver_comfort(_2028,_2094)=reducing,_2028).
index(passenger_satisfaction(_2028,_2094)=reducing,_2028).
index(sharp_turn(_2028,_2094)=very_sharp,_2028).
index(abrupt_acceleration(_2028,_2094)=very_abrupt,_2028).
index(abrupt_deceleration(_2028,_2094)=very_abrupt,_2028).
index(sharp_turn(_2028,_2094)=sharp,_2028).
index(abrupt_acceleration(_2028,_2094)=abrupt,_2028).
index(abrupt_deceleration(_2028,_2094)=abrupt,_2028).


cachingOrder2(_2646, punctuality(_2646,_2648)=non_punctual) :- % level in dependency graph: 1, processing order in component: 1
     vehicle(_2646,_2648).

cachingOrder2(_2664, punctuality(_2664,_2666)=punctual) :- % level in dependency graph: 1, processing order in component: 2
     vehicle(_2664,_2666).

cachingOrder2(_2622, passenger_density(_2622,_2624)=high) :- % level in dependency graph: 1, processing order in component: 1
     vehicle(_2622,_2624).

cachingOrder2(_2580, noise_level(_2580,_2582)=high) :- % level in dependency graph: 1, processing order in component: 1
     vehicle(_2580,_2582).

cachingOrder2(_2520, internal_temperature(_2520,_2522)=very_cold) :- % level in dependency graph: 1, processing order in component: 1
     vehicle(_2520,_2522).

cachingOrder2(_2538, internal_temperature(_2538,_2540)=very_warm) :- % level in dependency graph: 1, processing order in component: 2
     vehicle(_2538,_2540).

cachingOrder2(_2478, unsafe_driving_style(_2478,_2480)=true) :- % level in dependency graph: 1, processing order in component: 1
     vehicle(_2478,_2480).

cachingOrder2(_2454, uncomfortable_driving_style(_2454,_2456)=true) :- % level in dependency graph: 1, processing order in component: 1
     vehicle(_2454,_2456).

cachingOrder2(_3562, high_driving_quality(_3562,_3564)=true) :- % level in dependency graph: 2, processing order in component: 1
     vehicle(_3562,_3564).

cachingOrder2(_3538, medium_driving_quality(_3538,_3540)=true) :- % level in dependency graph: 2, processing order in component: 1
     vehicle(_3538,_3540).

cachingOrder2(_3514, low_driving_quality(_3514,_3516)=true) :- % level in dependency graph: 2, processing order in component: 1
     vehicle(_3514,_3516).

cachingOrder2(_3490, passenger_comfort(_3490,_3492)=reducing) :- % level in dependency graph: 2, processing order in component: 1
     vehicle(_3490,_3492).

cachingOrder2(_3466, driver_comfort(_3466,_3468)=reducing) :- % level in dependency graph: 2, processing order in component: 1
     vehicle(_3466,_3468).

cachingOrder2(_3440, punctuality_change(_3440,_3442,_4086)) :- % level in dependency graph: 2, processing order in component: 1
     vehicle(_3440,_3442).

cachingOrder2(_4172, passenger_satisfaction(_4172,_4174)=reducing) :- % level in dependency graph: 3, processing order in component: 1
     vehicle(_4172,_4174).

collectGrounds([stop_enter(_1738,_1740,_1756,_1758), stop_leave(_1738,_1740,_1756,_1758), sharp_turn(_1738,_1740)=very_sharp, abrupt_acceleration(_1738,_1740)=very_abrupt, abrupt_deceleration(_1738,_1740)=very_abrupt, sharp_turn(_1738,_1740)=sharp, abrupt_acceleration(_1738,_1740)=abrupt, abrupt_deceleration(_1738,_1740)=abrupt, internal_temperature_change(_1738,_1740,_1756), noise_level_change(_1738,_1740,_1756), passenger_density_change(_1738,_1740,_1756)],vehicle(_1738,_1740)).

dgrounded(punctuality(_2368,_2370)=punctual, vehicle(_2368,_2370)).
dgrounded(punctuality(_2332,_2334)=non_punctual, vehicle(_2332,_2334)).
dgrounded(passenger_density(_2296,_2298)=high, vehicle(_2296,_2298)).
dgrounded(noise_level(_2260,_2262)=high, vehicle(_2260,_2262)).
dgrounded(internal_temperature(_2224,_2226)=very_warm, vehicle(_2224,_2226)).
dgrounded(internal_temperature(_2188,_2190)=very_cold, vehicle(_2188,_2190)).
dgrounded(unsafe_driving_style(_2152,_2154)=true, vehicle(_2152,_2154)).
dgrounded(uncomfortable_driving_style(_2116,_2118)=true, vehicle(_2116,_2118)).
dgrounded(high_driving_quality(_2080,_2082)=true, vehicle(_2080,_2082)).
dgrounded(medium_driving_quality(_2044,_2046)=true, vehicle(_2044,_2046)).
dgrounded(low_driving_quality(_2008,_2010)=true, vehicle(_2008,_2010)).
dgrounded(passenger_comfort(_1972,_1974)=reducing, vehicle(_1972,_1974)).
dgrounded(driver_comfort(_1936,_1938)=reducing, vehicle(_1936,_1938)).
dgrounded(passenger_satisfaction(_1900,_1902)=reducing, vehicle(_1900,_1902)).
dgrounded(punctuality_change(_1862,_1864,punctual), vehicle(_1862,_1864)).
dgrounded(punctuality_change(_1830,_1832,non_punctual), vehicle(_1830,_1832)).
