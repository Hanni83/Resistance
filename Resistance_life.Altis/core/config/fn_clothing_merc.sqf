/*
	File: fn_clothing_dive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Altis Diving Shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Magasin Mercenaire"];

switch (_filter) do
{
	//Uniformes
	case 0:
	{
		[
			["U_B_CTRG_3",nil,1000],
			["U_B_CTRG_1",nil,1000]
		];
	};
	
	//Casques / Chapeaux
	case 1:
	{
		[
			["JaKdo_boonie_oliv",nil,1000],
			["aKdo_Wollhaubeoliv",nil,1000]
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
			["SFG_Tac_ChopsD",nil,2500]
		];
	};
	
	//Vestes
	case 3:
	{
		[
			["JaKdo_vest_olivs",nil,5000]
		];
	};
	
	//Sacs
	case 4:
	{
		[
			["JaKdo_ruck_oliv1",nil,5000]
		];
	};
};