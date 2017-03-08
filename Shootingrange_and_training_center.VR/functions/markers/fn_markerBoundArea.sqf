if ( isServer ) then {

	params[ "_object" ];

	_pos = getPosATL _object;
	_bound = boundingBoxReal _object;
	_rot = getDir _object;

	_bmin = _bound select 0;
	
	_markerName = format[ "bound_%1", netId _object ];

	_marker = createMarker [_markerName, _pos];
	_marker setMarkerShape "RECTANGLE";
	_marker setMarkerSize [_bmin select 0, _bmin select 1];
	_marker setMarkerDir _rot;

};