#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Magasin Donateur Vetement"];

switch (_filter) do
{
	//Uniformes
	case 0:
	{
        [
        ];
	};
	
	//Casques / Chapeaux
	case 1:
	{
		[
            ["Kio_No1_Hat",nil,5000],
            ["Kio_Spinning_Hat",nil,5000],
            ["H_HelmetSpecO_blk",nil,5000],
            ["Kio_Capital_Hat",nil,5000],
			["Kio_Santa_Hat",nil,550],
            ["Kio_Hat",nil,5000],
            ["Kio_Pirate_Hat",nil,5000],
			["kio_skl_msk_grn",nil,550],
            ["kio_skl_msk",nil,5000],
            ["DIS_Smiley_Mask",nil,5000]
        ];
	};
	
	//Lunettes / Barbes
	case 2:
	{
        [
			["G_Goggles_VR",nil,100]
        ];
	};
	
	//Vestes 
	case 3:
	{
        [
        ];
	};
	
	//Sacs
	case 4:
	{
        [
        ];
	};
};