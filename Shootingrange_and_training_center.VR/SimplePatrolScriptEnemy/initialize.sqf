if (isServer) then {

sleep 10;

_amountSleeper = _this select 0;
_markerSleeper = _this select 1;
_debugSleeper = _this select 2;
_speedSleeper = "limited";
_sideSleeper = EAST;
EAST setFriend [CIVILIAN, 1];
unit_fnc = compile preprocessfilelinenumbers "SimplePatrolScriptEnemy\unit_pool.sqf";

[_amountSleeper, _sideSleeper, _markerSleeper, _speedSleeper, _debugSleeper] execVM "SimplePatrolScriptEnemy\spawn.sqf";

};