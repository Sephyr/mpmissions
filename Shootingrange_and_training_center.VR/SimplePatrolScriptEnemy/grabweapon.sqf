//_unitSleeper = _this select 0;
//_grpSleeper = _this select 1;
_unitSleeper = _this select 0;
_marker = _this select 1;
_speed = _this select 2;
_behaviour = _this select 3;
_formation = _this select 4;
_debug = _this select 5;
_grpSleeper = group _unitSleeper;
_pos = getMarkerPos _marker;

_cratepool=[
sleepercrate01,
sleepercrate02,
sleepercrate03,
sleepercrate04,
sleepercrate05,
sleepercrate06,
sleepercrate07
];

_crate = _cratepool select (floor(random(count _cratepool)));

//_crate = _this select 2;
_cratePos = getPos _crate;
_playerpos = getPos player;

boolX = true;
gettingweapon = false;
loitering = true;
while {true} do {
	while { boolX } do {

		hint format ["Watching for player: %1", _unitSleeper];
		
			while {loitering} do {
				hint format ["Loitering: %1", _unitSleeper];
				sleep 5;
				if ( _unitSleeper distance player > 20  ) then {
					loitering = false;
					_unitSleeper setBehaviour "CARELESS";
					null =[_unitSleeper,_marker,_speed,_behaviour,_formation,_debug] execVM "SimplePatrolScriptEnemy\patrol.sqf";
					hint format ["Added loiterpoint: %1 - %2 - %3", _grpSleeper,_crate];
				};
			};
			//0 = [_unitSleeper, _marker,_speed,"","",_debug] execVM "SimplePatrolScriptEnemy\patrol.sqf";
			sleep 5;

			if ( _unitSleeper distance player < 20  ) then {
				//boolX = false;
				hint format ["Player within distance, moving to box: %1 - %2",_crate,_cratePos];
				while {(count (waypoints group _unitSleeper)) > 0} do
				{
						 deleteWaypoint ((waypoints group _unitSleeper) select 0);
				};
				_wp1 = _grpSleeper addWaypoint [_crate, 0,0];
				_wp1 setWaypointType "MOVE";
				_wp1 setWaypointSpeed "FULL";
				//_unitSleeper doMove _cratePos;
				gettingweapon = true;
			};
			
			while {gettingweapon} do {
			hint format ["Looking for weapon: %1 - %2", _unitSleeper,_crate];
			sleep 5;
				if ( _unitSleeper distance _crate < 12  ) then {
					//gettingweapon = false;
					hint format ["Weapon found!"];
					deleteWaypoint [_grpSleeper,0];
					_unitSleeper action ["TakeWeapon", _crate, "arifle_AK12_F"];
					_unitSleeper action ["TakeMagazine", _crate, "30Rnd_762x39_Mag_F"];
					_unitSleeper action ["TakeMagazine", _crate, "30Rnd_762x39_Mag_F"];
					_unitSleeper action ["TakeMagazine", _crate, "30Rnd_762x39_Mag_F"];
					_unitSleeper action ["TakeMagazine", _crate, "30Rnd_762x39_Mag_F"];
					_unitSleeper setBehaviour "COMBAT";
					_wp1 = _grpSleeper addWaypoint [player, 0,0];
					_wp1 setWaypointType "MOVE";
					_wp1 setWaypointSpeed "FULL";
					hint format ["Hunting for player: %1 - %2", _unitSleeper,_playerpos];
					//boolX = false;
					//_unitSleeper doMove _playerpos;
				};
			}; 
	};
	
};