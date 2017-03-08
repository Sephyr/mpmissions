[] execVM "Scripts\vehicle_delete.sqf";
//[] execVM "Scripts\skipTime.sqf";
//null = [5,"sleeperspawner",1] execVM "SimplePatrolScriptEnemy\initialize.sqf";
//null = [5,"civspawner",0] execVM "SimplePatrolScript\initialize.sqf";
[] spawn {
    if (hasInterface) then {
        waitUntil {time > 0};
        infolamp01 addAction ["<t color='#005EFF'>Teleport to Town</t>",{[[["teleport_town"],"Scripts\teleport.sqf"],"BIS_fnc_execVM",true,true] call BIS_fnc_MP;}];
        infolamp02 addAction ["<t color='#005EFF'>Teleport to Range</t>",{[[["teleport_range"],"Scripts\teleport.sqf"],"BIS_fnc_execVM",true,true] call BIS_fnc_MP;}];
        infolamp02 addAction ["<t color='#005EFF'>Initialize Civilians</t>",{[[15,"civspawner",0],"SimplePatrolScript\initialize.sqf"] remoteExec ["execVM",2];}];
		infolamp02 addAction ["<t color='#E61616'>Initialize Sleepers</t>",{[[5,"sleeperspawner",0],"SimplePatrolScriptEnemy\initialize.sqf"] remoteExec ["execVM",2];}];
    };
};