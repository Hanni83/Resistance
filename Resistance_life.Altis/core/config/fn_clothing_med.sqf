/*
	File: fn_clothing_dive.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by Jack Frost
	
	Description:
	Master configuration file for Altis Medic Shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Magasin EMS"];

switch (_filter) do
{
	//Uniformes
	case 0:
	{
		[
			["U_I_HeliPilotCoveralls",nil,1000]
		];
	};
	
	//Casques / Chapeaux
	case 1:
	{
		[
			["H_Cap_marshal",nil,120]
		];
	};
	
	//Lunettes / Barbes
	case 2:
	{
		[
			["G_Shades_Black",nil,250],
			["G_Shades_Blue",nil,200],
			["G_Sport_Blackred",nil,200],
			["G_Sport_Checkered",nil,200],
			["G_Sport_Blackyellow",nil,200],
			["G_Sport_BlackWhite",nil,200],
			["G_Squares",nil,100],
			["G_Aviator",nil,100],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,155],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,230],
			["G_Combat",nil,255],
			["SFG_Tac_smallBeardD",nil,2500],
			["SFG_Tac_moustacheD",nil,2500],
			["SFG_Tac_ChopsD",nil,2500],
            ["SFG_Tac_BeardD",nil,2500]
		];
	};
	
	//Vestes
	case 3:
	{
		[
			["V_Rangemaster_belt",nil,500]
		];
	};
	
	//Sacs
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};