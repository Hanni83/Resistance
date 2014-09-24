/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val","_dice"];
_dice=ceil(random 4);
switch (true) do
{
	case (player distance (getMarkerPos "cuivre_1") < 30): {_mine = "copperore"; _dice;};
	case (player distance (getMarkerPos "iron_1") < 30): {_mine = "ironore"; _dice;};
	case (player distance (getMarkerPos "diamond_1") < 50): {_mine = "diamond"; _dice;};
	case (player distance (getMarkerPos "rubis_1") < 50): {_mine = "rubis"; _dice;};
	case (player distance (getMarkerPos "or_1") < 50): {_mine = "or"; _dice;};
	case (player distance (getMarkerPos "argile_1") < 30): {_mine = "argile"; _dice;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint localize "STR_ISTR_Pick_NotNear"};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";};

_diff = [_mine,_dice,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
delay_pickaxe = true;
life_action_gather = true;
//life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_ISTR_Pick_Success",_itemName,_diff],"PLAIN"];
};

//life_action_inUse = false;
delay_pickaxe = false;
life_action_gather = false;