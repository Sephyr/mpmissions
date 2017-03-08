0 = [] spawn {
  while {true} do {
    sleep 3;
    {
      if !(_x getVariable ["actionAdded",false]) then {
        _x setVariable ["actionAdded",true];
        _x addAction ["Skip 1 hour",{skipTime 1},nil,0,true,true,"","_target == 'Land_LampStreet_small_F'"]
      }
    } forEach vehicles
  }
}