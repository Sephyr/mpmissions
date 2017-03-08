if (hasInterface) then {
	//run on all player clients incl. player host
	effect_screen = ppEffectCreate ["FilmGrain", 2000];
	effect_screen ppEffectEnable true;
	effect_screen ppEffectAdjust [0.1,0.1,2,0.1,0.1,true];
	effect_screen ppEffectCommit 0;

	"colorCorrections" ppEffectAdjust[ 0.86, 1, 0.01, [-0.14, 0.17, 0.33, -0.14],[0.86, -0.4, 0.86, 0.86],[-0.57, 0.86, -1.2, 0.86]];
	"colorCorrections" ppEffectCommit 0;
	"colorCorrections" ppEffectEnable true;
	
	setViewDistance 1000;
	searchparts addAction ["<t color='#005EFF'>Search for toolkit</t>",{[[[searchparts],"scripts\search.sqf"],"BIS_fnc_execVM",true,true] call BIS_fnc_MP;}];
	[] execVM "briefing.sqf";
};

[] execVM "scripts\AIcontrol.sqf";
[] execVM "VCOMAI\init.sqf";
//null = [340,14400,false,false,false] execvm "AL_dust_storm\al_duststorm.sqf";