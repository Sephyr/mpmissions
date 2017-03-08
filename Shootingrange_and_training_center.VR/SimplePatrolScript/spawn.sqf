_amount = _this select 0;
_side = _this select 1;
_marker = _this select 2;
_speed = _this select 3;
_debug = _this select 4;
_type = "move";
_count = 0;
_sizemarker = getMarkerSize _marker;
_sizeX = _sizemarker select 0;
_sizeY = _sizemarker select 1;
_size = (_sizeX + _sizeY)/4;
_RandomHeadgear = ["CUP_H_TKI_SkullCap_01","CUP_H_TKI_Pakol_1_02","CUP_H_TKI_Pakol_1_03","CUP_H_TKI_Pakol_2_01","CUP_H_TKI_Pakol_2_04","CUP_H_TKI_Lungee_Open_04","CUP_H_TKI_Lungee_Open_02","CUP_H_TKI_Lungee_Open_03"] call BIS_fnc_selectRandom;
_RandomUniform = ["CUP_O_TKI_Khet_Partug_02","CUP_O_TKI_Khet_Partug_03","CUP_O_TKI_Khet_Partug_04","CUP_O_TKI_Khet_Partug_05","CUP_O_TKI_Khet_Partug_06","CUP_O_TKI_Khet_Partug_08"] call BIS_fnc_selectRandom;
_RandomVest = ["CUP_V_OI_TKI_Jacket1_01","CUP_V_OI_TKI_Jacket1_02","CUP_V_OI_TKI_Jacket2_02","CUP_V_OI_TKI_Jacket3_01","CUP_V_OI_TKI_Jacket3_02","CUP_V_OI_TKI_Jacket3_03","CUP_V_OI_TKI_Jacket4_01","CUP_V_OI_TKI_Jacket4_02","CUP_V_OI_TKI_Jacket4_03"] call BIS_fnc_selectRandom;

sleep 0.1;


createCenter _side;


if (_debug == 1) then {
hint "Civilians initialized!";};


while {_count < _amount} do {

_grp = createGroup _side;
_unit = [] call unit_fnc;
_this = _grp createUnit [_unit,markerpos _marker,[],_size, "NONE"];
_this setskill ["GENERAL",0];
_this allowFleeing 0;
removeHeadgear _this;
removeVest _this;
removeUniform _this;
_this addHeadgear _RandomHeadgear;							
_this addVest _RandomVest;							
_this addUniform _RandomUniform;
0 = [_this, _marker,_speed,"","",_debug] execVM "SimplePatrolScript\patrol.sqf";
_count = _count + 1; 

//_random = random 10;
sleep 0.5;


};




