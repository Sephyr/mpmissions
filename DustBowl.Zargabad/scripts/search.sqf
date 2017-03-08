_position = getPos player;
_obj = _this select 0;

_groundspawn = createVehicle ["groundweaponHolder",_position,[], 0, "can_collide"];
_groundspawn addItemCargo ["ToolKit",1];
hint format ["Toolkit found!"];
_obj removeAction 0;
