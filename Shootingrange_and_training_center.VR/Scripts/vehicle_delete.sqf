0 = [] spawn {
  while {true} do {
    sleep 3;
    {
      if !(_x getVariable ["actionAdded",false]) then {
        _x setVariable ["actionAdded",true];
        _x addAction ["DELETE VEHICLE",{
          deleteVehicle (_this select 0)
        },nil,0,true,true,"","_target isKindOf 'LandVehicle'"]
      }
    } forEach vehicles
  }
}