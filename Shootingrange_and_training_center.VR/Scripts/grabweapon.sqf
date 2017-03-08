_unit = _this select 0;
_grp = _this select 1;


_cratepool=[
"sleepercrate01",
"sleepercrate02",
"sleepercrate03",
"sleepercrate04",
"sleepercrate05",
"sleepercrate06",
"sleepercrate07"
];

_crate = _cratepool select (floor(random(count _cratepool)));

//_crate = _this select 2;
_cratePos = getPos _crate;
_playerpos = getPos player;

boolX = true;
gettingweapon = false;
while {true} do {
	while { boolX } do {

		hint format ["Watching for player: %1", _unit];
		sleep 5;

		if ( _unit distance player < 20  ) then {
			boolX = false;
			hint format ["Player within distance, moving to box"];
			_unit doMove _cratePos;
			gettingweapon = true;
		};
		while {gettingweapon} do {
			hint format ["Looking for weapon: %1", _unit];
			sleep 5;
			if ( _unit distance _crate < 5  ) then {
				gettingweapon = false;
				hint format ["Weapon found!"];
				_unit action ["TakeWeapon", _crate, "arifle_AK12_F"];
				_unit action ["TakeMagazine", _crate, "30Rnd_762x39_Mag_F"];
				_unit action ["TakeMagazine", _crate, "30Rnd_762x39_Mag_F"];
				_unit action ["TakeMagazine", _crate, "30Rnd_762x39_Mag_F"];
				_unit action ["TakeMagazine", _crate, "30Rnd_762x39_Mag_F"];
				_unit setBehaviour "COMBAT";
				_unit doMove _playerpos;
			};
		};
	}; 
};