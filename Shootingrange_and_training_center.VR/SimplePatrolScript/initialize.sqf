if (isServer) then {

sleep 0.1;

_amount = _this select 0;
_marker = _this select 1;
_debug = _this select 2;
_speed = "limited";
_side = CIVILIAN;
CIVILIAN setFriend [EAST, 1];

unit_fnc = compile preprocessfilelinenumbers "SimplePatrolScript\unit_pool.sqf";

[_amount, _side , _marker, _speed, _debug] execVM "SimplePatrolScript\spawn.sqf";

};