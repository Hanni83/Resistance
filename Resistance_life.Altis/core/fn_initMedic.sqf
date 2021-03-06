#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};

if((__GETC__(life_mediclevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn
{
while {(uniform player) == "U_I_HeliPilotCoveralls"} do
    {
	switch (__GETC__(life_mediclevel)) do 
		{
			case 1: {
			player setObjectTextureGlobal [0,"\Resistance\Skins\cloth_med\medic_uniform.jpg"];
			};
			
			case 2: {
			player setObjectTextureGlobal [0,"\Resistance\Skins\cloth_med\medic_uniform.jpg"];
			};
			
			case 3: {
			player setObjectTextureGlobal [0,"\Resistance\Skins\cloth_med\medic_uniform.jpg"];
			};
			
			case 4: {
			player setObjectTextureGlobal [0,"\Resistance\Skins\cloth_med\medic_uniform.jpg"];
			};
			
			case 5: {
			player setObjectTextureGlobal [0,"\Resistance\Skins\cloth_med\medic_uniform.jpg"];
			};
			
			default {
			player setObjectTextureGlobal [0,"\Resistance\Skins\cloth_med\medic_uniform.jpg"];
			};
		};
    if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
    sleep 30;
    };
};