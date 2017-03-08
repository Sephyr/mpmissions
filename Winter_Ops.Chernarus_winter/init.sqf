//if (isServer) then { {[_x, [-1, -2, 0]] call bis_fnc_setCuratorVisionModes;} forEach allCurators; };
if ((!isServer) && (player != player)) then {waitUntil {player == player};};

//titleText ["SNOW STORM SCRIPT DEMO- For vanilla terrains", "BLACK FADED", 0.2];

setViewDistance 2000;

[] execVM "briefing.sqf";
[] execVM "AI_Performance.sqf";
//[] execVM "NWAF_Base.sqf";

// Snow Storm

// running script without breath vapors
null = [340,14400,false,300,false] execvm "AL_snowstorm\al_snow.sqf";

// running script with breath vapors
//null = [340,14400,false,300,true] execvm "AL_snowstorm\al_snow.sqf";


