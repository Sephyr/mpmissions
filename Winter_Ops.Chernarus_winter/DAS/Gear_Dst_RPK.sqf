removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

this forceAddUniform "TRYK_U_B_PCUGs_BLK";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_fieldDressing";};
this addItemToUniform "ACE_morphine";
for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_17Rnd_9x19_FMJ";};
this addVest "CUP_V_B_Eagle_SPC_Scout";
for "_i" from 1 to 2 do {this addItemToVest "ACE_elasticBandage";};
this addItemToVest "ACE_CableTie";
this addItemToVest "ACE_EarPlugs";
for "_i" from 1 to 2 do {this addItemToVest "ACE_morphine";};
this addItemToVest "CUP_HandGrenade_RGO";
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 3 do {this addItemToVest "CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M";};
this addBackpack "B_AssaultPack_cbr";
for "_i" from 1 to 2 do {this addItemToBackpack "rhs_mag_an_m8hc";};
for "_i" from 1 to 3 do {this addItemToBackpack "CUP_HandGrenade_RGO";};
this addHeadgear "rhsusf_mich_bare_norotos_arc_alt_tan_headset";
this addGoggles "G_Bandanna_khk";

this addWeapon "CUP_arifle_RPK74M";
this addWeapon "rhsusf_weap_glock17g4";
this addWeapon "Binocular";

this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "tf_microdagr";
this linkItem "tf_anprc148jem_1";