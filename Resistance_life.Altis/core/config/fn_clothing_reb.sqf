/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Magasin Vetement Rebelle"];

switch (_filter) do
{
	//Uniformes
	case 0:
	{
		[
			["U_O_Wetsuit",nil,5000],
			["U_I_GhillieSuit",nil,50500],
			["U_O_GhillieSuit",nil,50500],
			["U_B_GhillieSuit",nil,50500],
			["U_BG_Guerrilla_6_1",nil,15610],
			["U_I_CombatUniform_shortsleeve",nil,15340],
			["U_I_CombatUniform",nil,50300],
			["U_I_OfficerUniform",nil,15000],
			["U_BG_leader",nil,15200],
			["U_BG_Guerilla1_1",nil,13000],
			["U_I_G_Story_Protagonist_F",nil,13000],
			["U_B_CombatUniform_mcam_worn",nil,12300],
			["U_I_G_resistanceLeader_F",nil,15700],
			["JaKdo_PCUHs",nil,25000],
			["JaKdo_PCUs",nil,25000],
			["JaKdo_PCUODHs",nil,25000],
			["JaKdo_Wood_PCUs",nil,25000],
			["JaKdo_uniform_black",nil,25000],
			["JaKdo_uniform_erdl",nil,25000],
			["JaKdo_uniform_multi1",nil,25000],
			["JaKdo_uniform_kryptekh",nil,25000],
			["JaKdo_uniform_kryptekgr",nil,25000],
			["JaKdo_uniform_winter",nil,25000],
			["JaKdo_PCUGHs",nil,25000],
			["JaKdo_UCP_PCUs",nil,25000]
		];
	};
	
	//Casques / Chapeaux
	case 1:
	{
		[
			["H_Bandanna_gry",nil,850],
			["H_Bandanna_khk",nil,850],
			["H_Bandanna_camo",nil,800],
			["H_ShemagOpen_tan",nil,2500],
			["H_Shemag_olive",nil,1200],
			["H_Shemag_olive_hs",nil,650],
			["H_ShemagOpen_khk",nil,650],
			["H_MilCap_dgtl",nil,650],
			["H_MilCap_ocamo",nil,650],
			["H_HelmetO_ocamo",nil,650],
			["JaKdo_Balaclava",nil,2500],
			["JaKdo_Wollhaubeoliv",nil,2500],
			["JaKdo_Wollhaubewinter",nil,2500],
			["JaKdo_boonie_erdl",nil,2500],
			["JaKdo_kryptekgigh",nil,2500],
			["kio_skl_msk_red",nil,3000],
			["DIS_Cobra_Mask",nil,3000],
			["DIS_Camo_Flames_Mask",nil,3000]
		];
	};
	
	//Lunettes / Barbes
	case 2:
	{
		[
			["G_Balaclava_blk",nil,250],
			["G_Balaclava_lowprofile",nil,200],
			["G_Balaclava_combat",nil,200],
			["G_Balaclava_oli",nil,200],
			["G_Bandanna_aviator",nil,200],
			["G_Bandanna_tan",nil,200],
			["G_Squares",nil,100],
			["G_Bandanna_blk",nil,300],
			["G_Bandanna_oli",nil,550],
			["G_Bandanna_shades",nil,550],
			["Mask_M40",nil,550],
			["Mask_M40_OD",nil,550],
			["jakdo_balaclava_BLK",nil,550],
			["jakdo_balaclavas_oliv",nil,550],
			["G_jakdo_Band_Us3c1",nil,550],
			["G_jakdo_Band_winter1",nil,550],
			["G_Balaclava_AutOliv",nil,550],
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
			["V_PlateCarrier1_rgr",nil,5500],
			["V_TacVest_khk",nil,7500],
			["JaKdo_vest_kryptek",nil,12500],
			["JaKdo_vest_Jagdk1",nil,12500],
			["JaKdo_vest_Jagdk4",nil,12500],
			["JaKdo_vest_Jagdk3",nil,12500],
			["JaKdo_vest_black",nil,12500],
			["JaKdo_vest_Major",nil,12500],
			["JaKdo_vest_olivs",nil,12500],
			["JaKdo_vest_winter",nil,12500],
			["JaKdo_vest_tans",nil,12500]
		];
	};
	
	//Sacs
	case 4:
	{
		[
			["B_Parachute",nil,500],
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000],
			["JaKdo_ruck_winter",nil,8000],
			["B_TacticalPack_blk",nil,12500],
			["B_mas_Kitbag_black",nil,15000]
		];
	};
};