AIcontrol = [] spawn {

_checkDistanceSqr = (750 * 750);

while {alive player} do {

{
_dist = getposatl player distanceSqr getposatl _x;
if (_dist < _checkDistanceSqr) then {_x enablesimulation true;_x hideobject false;_x enableAI "FSM";};
if (_dist >= _checkDistanceSqr) then {_x enablesimulation false;_x hideobject true;_x disableAI "FSM";}
} foreach (allunits - allplayers);

sleep 0.1};
};