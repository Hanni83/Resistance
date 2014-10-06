/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
if(isNil "life_action_gathering") then {life_action_gathering = false;};
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone","_dice"];
_resourceZones = ["figue_1","figue_2","figue_3","figue_4","bois_1","bois_2","bois_3","bois_4","heroin_1","cocaine_1","weed_1","olive_1","olive_2","raisin_1","raisin_2","tabac_1","houblon_1","orge_1","peyotl_1","peyotl_2","sassafras_1"];
_zone = "";
_dice=ceil(random 4);

if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.
life_action_gathering = true;
//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 50) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	life_action_gather = false;
	//life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["figue_1","figue_2","figue_3","figue_4"]): {_gather = "figue"; _dice;};
	case (_zone in ["bois_1","bois_2","bois_3","bois_4"]): {_gather = "bois"; _dice;};
	case (_zone in ["heroin_1"]): {_gather = "heroinu"; _dice;};
	case (_zone in ["cocaine_1"]): {_gather = "cocaine"; _dice;};
	case (_zone in ["weed_1"]): {_gather = "cannabis"; _dice;};
	case (_zone in ["olive_1","olive_2"]): {_gather = "olive"; _dice;};
	case (_zone in ["raisin_1","raisin_2"]): {_gather = "raisin"; _dice;};
	case (_zone in ["tabac_1"]): {_gather = "tabac"; _dice;};
	case (_zone in ["houblon_1"]): {_gather = "houblon"; _dice;};
	case (_zone in ["orge_1"]): {_gather = "orge"; _dice;};
	case (_zone in ["peyotl_1","peyotl_2"]): {_gather = "peyotl"; _dice;};
	case (_zone in ["sassafras_1"]): {_gather = "sassafras"; _dice;};
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {};

_diff = [_gather,_dice,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_gather = true;
//life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};

//life_action_inUse = false;
life_action_gather = false;
