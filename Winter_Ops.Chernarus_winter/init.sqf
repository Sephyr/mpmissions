//if (isServer) then { {[_x, [-1, -2, 0]] call bis_fnc_setCuratorVisionModes;} forEach allCurators; };
if ((!isServer) && (player != player)) then {waitUntil {player == player};};

titleText ["Winter Ops", "BLACK FADED", 0.2];

setViewDistance 1000;

[] execVM "briefing.sqf";
[] execVM "AI_Performance.sqf";

// Snow Storm

// running script without breath vapors
null = [340,14400,false,300,false] execvm "AL_snowstorm\al_snow.sqf";

// running script with breath vapors
//null = [340,14400,false,300,true] execvm "AL_snowstorm\al_snow.sqf";


