/*
	File: fn_CivOrangeLights.sqf
	Author: Jennova
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //Si pas de v�hicule alors badaboum (alors on sort ;))!!!
if(!(typeOf _vehicle in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F"])) exitWith {}; //On v�rifie une derni�re fois les v�hicules autoris� (ici ce sont les v�hicules par d�faut) vous pouvez mettre ce que vous voulez il suffira ensuite de modifier la position des lumi�res dans le fichier fn_CivOrangeLights2.sqf

_trueorfalse = _vehicle getVariable["lights",FALSE];

if(_trueorfalse) then {
	_vehicle setVariable["lights",FALSE,TRUE];
} else {
	_vehicle setVariable["lights",TRUE,TRUE];
	[[_vehicle,0.22],"life_fnc_CivOrangeLights2",true,false] call life_fnc_MP;
};