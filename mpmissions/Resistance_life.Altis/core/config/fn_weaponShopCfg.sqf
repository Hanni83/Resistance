#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{

	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Vous n'êtes pas Médecin !"};
			default {
				["Hospital EMS Shop",
					[
						["ItemGPS",nil,100],
						["ItemRadio","Smartphone",500],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200],
						["B_FieldPack_ocamo",nil,3000]
					]
				];
			};
		};
	};
	
	case "cop_equipment":
	{
		switch(true) do
		{
			case (playerside !=west):{"Vous n'êtes pas Policier !"};
			case (__GETC__(life_coplevel) == 0): {"Vous n'êtes pas un officier inscrit sur la liste!"};
			case (__GETC__(life_coplevel) == 1):
			{
				["RLPD Equipement Recrue",
					[
						["MineDetector",nil,100],
						["Binocular",nil,1000],
						["ItemGPS",nil,500],
						["ItemRadio",nil,500],
						["FirstAidKit",nil,100],
						["ToolKit",nil,2000],
						["Chemlight_red",nil,100],
						["Chemlight_green",nil,100],
						["Chemlight_blue",nil,100],
						["Chemlight_yellow",nil,100]
					]
				];
			};
			case (__GETC__(life_coplevel) == 2):
			{
				["RLPD Equipement Caporal",
					[
						["MineDetector",nil,100],
						["Binocular",nil,1000],
						["NVGoggles",nil,5000],
						["ItemGPS",nil,500],
						["ItemRadio",nil,500],
						["FirstAidKit",nil,100],
						["ToolKit",nil,2000],
						["Medikit",nil,5000],
						["Chemlight_red",nil,100],
						["Chemlight_green",nil,100],
						["Chemlight_blue",nil,100],
						["Chemlight_yellow",nil,100]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3):
			{
				["RLPD Equipement Sergent",
					[
						["MineDetector",nil,100],
						["Binocular",nil,1000],
						["NVGoggles",nil,5000],
						["ItemGPS",nil,500],
						["ItemRadio",nil,500],
						["FirstAidKit",nil,100],
						["ToolKit",nil,2000],
						["Medikit",nil,5000],
						["Chemlight_red",nil,100],
						["Chemlight_green",nil,100],
						["Chemlight_blue",nil,100],
						["Chemlight_yellow",nil,100]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4):
			{
				["RLPD Equipement Sergent-Chef",
					[
						["MineDetector",nil,100],
						["Binocular",nil,1000],
						["NVGoggles",nil,5000],
						["ItemGPS",nil,500],
						["ItemRadio",nil,500],
						["SmokeShell",nil,100],
						["FirstAidKit",nil,100],
						["ToolKit",nil,2000],
						["Medikit",nil,5000],
						["Chemlight_red",nil,100],
						["Chemlight_green",nil,100],
						["Chemlight_blue",nil,100],
						["Chemlight_yellow",nil,100]
					]
				];
			};
			case (__GETC__(life_coplevel) == 5):
			{
				["RLPD Equipement Lieutenant",
					[
						["MineDetector",nil,100],
						["Binocular",nil,1000],
						["Rangefinder",nil,10000],
						["NVGoggles",nil,5000],
						["ItemGPS",nil,500],
						["ItemRadio",nil,500],
						["SmokeShell",nil,100],
						["FirstAidKit",nil,100],
						["ToolKit",nil,2000],
						["Medikit",nil,5000],
						["Chemlight_red",nil,100],
						["Chemlight_green",nil,100],
						["Chemlight_blue",nil,100],
						["Chemlight_yellow",nil,100]
					]
				];
			};
			case (__GETC__(life_coplevel) == 6):
			{
				["RLPD Equipement Capitaine",
					[
						["MineDetector",nil,100],
						["Binocular",nil,1000],
						["Rangefinder",nil,10000],
						["NVGoggles",nil,5000],
						["NVGoggles_OPFOR",nil,5000],
						["ItemGPS",nil,500],
						["ItemRadio",nil,500],
						["SmokeShell",nil,100],
						["1Rnd_Smoke_Grenade_shell",nil,200],
						["FirstAidKit",nil,100],
						["ToolKit",nil,2000],
						["Medikit",nil,5000],
						["Chemlight_red",nil,100],
						["Chemlight_green",nil,100],
						["Chemlight_blue",nil,100],
						["Chemlight_yellow",nil,100]
					]
				];
			};
			case (__GETC__(life_coplevel) == 7):
			{
				["RLPD Equipement Major",
					[
						["MineDetector",nil,100],
						["Binocular",nil,1000],
						["Rangefinder",nil,10000],
						["NVGoggles",nil,5000],
						["NVGoggles_OPFOR",nil,5000],
						["ItemGPS",nil,500],
						["ItemRadio",nil,500],
						["SmokeShell",nil,100],
						["1Rnd_Smoke_Grenade_shell",nil,200],
						["FirstAidKit",nil,100],
						["ToolKit",nil,2000],
						["Medikit",nil,5000],
						["Chemlight_red",nil,100],
						["Chemlight_green",nil,100],
						["Chemlight_blue",nil,100],
						["Chemlight_yellow",nil,100]
					]
				];
			};
			case (__GETC__(life_coplevel) == 8):
			{
				["RLPD Equipement Chef de Police",
					[
						["MineDetector",nil,100],
						["Binocular",nil,1000],
						["Rangefinder",nil,10000],
						["NVGoggles",nil,5000],
						["NVGoggles_OPFOR",nil,5000],
						["ItemGPS",nil,500],
						["ItemRadio",nil,500],
						["SmokeShell",nil,100],
						["1Rnd_Smoke_Grenade_shell",nil,200],
						["FirstAidKit",nil,100],
						["ToolKit",nil,2000],
						["Medikit",nil,5000],
						["Chemlight_red",nil,100],
						["Chemlight_green",nil,100],
						["Chemlight_blue",nil,100],
						["Chemlight_yellow",nil,100]
					]
				];
			};
		};
	};
	
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'êtes pas Policier!"};
			case (__GETC__(life_coplevel) == 0): {"Vous n'êtes pas un officier inscrit sur la liste!"};
			case (__GETC__(life_coplevel) == 1):
			{
				["RLPD Armes Recrue",
					[
						["DDOPP_X26","Taser",800],
						["DDOPP_1Rnd_X26",nil,50]

					]
				];
			};
			case (__GETC__(life_coplevel) == 2):
			{
				["RLPD Armes Caporal",
					[
						["DDOPP_X26","Taser",800],
						["DDOPP_1Rnd_X26",nil,50],
						["hgun_P07_F",nil,5000],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["hgun_mas_m9_F",nil,5000],
						["arifle_mas_mp5",nil,45000],
						["hgun_mas_acp_F",nil,5000],
						["16Rnd_9x21_Mag",nil,100],
						["12Rnd_mas_45acp_Mag",nil,100],
						["11Rnd_45ACP_Mag",nil,100],
						["30Rnd_mas_9x21_Stanag",nil,100],
						["muzzle_snds_L",nil,1500],
						["optic_Yorris",nil,1500],
						["optic_Aco",nil,1500],
						["optic_MRD",nil,1500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 3):
			{
				["RLPD Armes Sergent",
					[
						["DDOPP_X26","Taser",800],
						["DDOPP_1Rnd_X26",nil,50],
						["hgun_P07_F",nil,5000],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["hgun_mas_m9_F",nil,5000],
						["arifle_mas_mp5",nil,45000],
						["arifle_mas_mp5sd",nil,50000],
						["arifle_mas_mp5_d",nil,45000],
						["hgun_mas_acp_F",nil,5000],
						["16Rnd_9x21_Mag",nil,100],
						["12Rnd_mas_45acp_Mag",nil,100],
						["11Rnd_45ACP_Mag",nil,100],
						["30Rnd_mas_9x21_Stanag",nil,100],
						["muzzle_snds_L",nil,1500],
						["optic_Yorris",nil,1500],
						["optic_Aco",nil,1500],
						["optic_MRD",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_mas_Arco_blk",nil,1500],
						["optic_ACO_grn",nil,1500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 4):
			{
				["RLPD Armes Sergent-Chef",
					[
						["DDOPP_X26","Taser",800],
						["DDOPP_1Rnd_X26",nil,50],
						["hgun_P07_F",nil,5000],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["hgun_mas_m9_F",nil,5000],
						["arifle_mas_mp5",nil,45000],
						["arifle_mas_mp5sd",nil,50000],
						["arifle_mas_mp5_d",nil,45000],
						["arifle_mas_m4c",nil,80000],
						["hgun_mas_acp_F",nil,5000],
						["hgun_mas_usp_F",nil,15000],
						["30Rnd_mas_556x45_Stanag",nil,500],
						["16Rnd_9x21_Mag",nil,100],
						["12Rnd_mas_45acp_Mag",nil,100],
						["11Rnd_45ACP_Mag",nil,100],
						["30Rnd_mas_9x21_Stanag",nil,100],
						["acc_flashlight",nil,1500],
						["acc_pointer_IR",nil,1500],
						["muzzle_snds_L",nil,1500],
						["muzzle_mas_snds_M",nil,1500],
						["optic_Yorris",nil,1500],
						["optic_Aco",nil,1500],
						["optic_MRD",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_mas_Arco_blk",nil,1500],
						["optic_ACO_grn",nil,1500]
					]
				];
			};
			case (__GETC__(life_coplevel) == 5):
			{
				["RLPD Armes Lieutenant",
					[
						["DDOPP_X26","Taser",800],
						["DDOPP_1Rnd_X26",nil,50],
						["hgun_P07_F",nil,5000],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["hgun_mas_m9_F",nil,5000],
						["arifle_mas_mp5",nil,45000],
						["arifle_mas_mp5sd",nil,50000],
						["arifle_mas_mp5_d",nil,45000],
						["arifle_mas_m4c",nil,80000],
						["arifle_mas_m4c_d",nil,100000],
						["srifle_mas_m110",nil,150000],
						["arifle_mas_m4",nil,90000],
						["arifle_mas_m4_gl",nil,120000],
						["arifle_mas_m1014",nil,50000],
						["hgun_mas_acp_F",nil,5000],
						["7Rnd_mas_12Gauge_Slug",nil,500],
						["7Rnd_mas_12Gauge_Pellets",nil,500],
						["20Rnd_mas_762x51_Stanag",nil,500],
						["30Rnd_mas_556x45_Stanag",nil,500],
						["16Rnd_9x21_Mag",nil,100],
						["12Rnd_mas_45acp_Mag",nil,100],
						["11Rnd_45ACP_Mag",nil,100],
						["30Rnd_mas_9x21_Stanag",nil,100],
						["acc_flashlight",nil,1500],
						["acc_pointer_IR",nil,1500],
						["muzzle_snds_L",nil,1500],
						["muzzle_mas_snds_M",nil,1500],
						["muzzle_mas_snds_SMc",nil,1500],
						["optic_Yorris",nil,1500],
						["optic_Aco",nil,1500],
						["optic_MRD",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_mas_Arco_blk",nil,1500],
						["optic_ACO_grn",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,1500],
						["optic_Holosight",nil,1500],
						["UGL_FlareWhite_F",nil,500],
						["HandGrenade_Stone","FlashBang",1000]
					]
				];
			};
			case (__GETC__(life_coplevel) == 6):
			{
				["RLPD Armes Capitaine",
					[
						["DDOPP_X26","Taser",800],
						["DDOPP_1Rnd_X26",nil,50],
						["hgun_P07_F",nil,5000],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["hgun_mas_m9_F",nil,5000],
						["arifle_mas_mp5",nil,45000],
						["arifle_mas_mp5sd",nil,50000],
						["arifle_mas_mp5_d",nil,45000],
						["arifle_mas_m4c",nil,80000],
						["arifle_mas_m4c_d",nil,100000],
						["srifle_mas_m110",nil,150000],
						["arifle_mas_m4",nil,90000],
						["arifle_mas_m4_gl",nil,120000],
						["arifle_mas_m16",nil,100000],
						["arifle_mas_m1014",nil,50000],
						["srifle_mas_m107",nil,250000],
						["arifle_mas_fal",nil,150000],
						["arifle_mas_fal_m203",nil,150000],
						["hgun_mas_acp_F",nil,5000],
						["5Rnd_mas_127x99_Stanag",nil,1000],
						["7Rnd_mas_12Gauge_Slug",nil,500],
						["7Rnd_mas_12Gauge_Pellets",nil,500],
						["20Rnd_mas_762x51_Stanag",nil,500],
						["30Rnd_mas_556x45_Stanag",nil,500],
						["16Rnd_9x21_Mag",nil,100],
						["12Rnd_mas_45acp_Mag",nil,100],
						["11Rnd_45ACP_Mag",nil,100],
						["30Rnd_mas_9x21_Stanag",nil,100],
						["acc_flashlight",nil,1500],
						["acc_pointer_IR",nil,1500],
						["muzzle_snds_L",nil,1500],
						["muzzle_mas_snds_M",nil,1500],
						["muzzle_mas_snds_SMc",nil,1500],
						["muzzle_mas_snds_SV",nil,1500],
						["optic_Yorris",nil,1500],
						["optic_Aco",nil,1500],
						["optic_MRD",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_mas_Arco_blk",nil,1500],
						["optic_ACO_grn",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,1500],
						["optic_mas_DMS",nil,1500],
						["optic_LRPS",nil,1500],
						["optic_Holosight",nil,1500],
						["UGL_FlareWhite_F",nil,500],
						["HandGrenade_Stone","FlashBang",1000]
					]
				];
			};
			case (__GETC__(life_coplevel) == 7):
			{
				["RLPD Armes Major",
					[
						["DDOPP_X26","Taser",800],
						["DDOPP_1Rnd_X26",nil,50],
						["hgun_P07_F",nil,5000],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["hgun_mas_m9_F",nil,5000],
						["arifle_mas_mp5",nil,45000],
						["arifle_mas_mp5sd",nil,50000],
						["arifle_mas_mp5_d",nil,45000],
						["arifle_mas_m4c",nil,80000],
						["arifle_mas_m4c_d",nil,100000],
						["srifle_mas_m110",nil,150000],
						["arifle_mas_m4",nil,90000],
						["arifle_mas_m4_gl",nil,120000],
						["arifle_mas_m16",nil,100000],
						["arifle_mas_m1014",nil,50000],
						["srifle_mas_m107",nil,250000],
						["arifle_mas_fal",nil,150000],
						["arifle_mas_fal_m203",nil,150000],
						["srifle_LRR_F",nil,200000],
						["LMG_mas_M249_F",nil,200000],
						["hgun_mas_acp_F",nil,5000],
						["200Rnd_mas_556x45_Stanag",nil,1200],
						["7Rnd_408_Mag",nil,500],
						["5Rnd_mas_127x99_Stanag",nil,1000],
						["7Rnd_mas_12Gauge_Slug",nil,500],
						["7Rnd_mas_12Gauge_Pellets",nil,500],
						["20Rnd_mas_762x51_Stanag",nil,500],
						["30Rnd_mas_556x45_Stanag",nil,500],
						["16Rnd_9x21_Mag",nil,100],
						["12Rnd_mas_45acp_Mag",nil,100],
						["11Rnd_45ACP_Mag",nil,100],
						["30Rnd_mas_9x21_Stanag",nil,100],
						["acc_flashlight",nil,1500],
						["acc_pointer_IR",nil,1500],
						["muzzle_snds_L",nil,1500],
						["muzzle_mas_snds_M",nil,1500],
						["muzzle_mas_snds_SMc",nil,1500],
						["muzzle_mas_snds_SV",nil,1500],
						["muzzle_snds_H_MG",nil,1500],
						["optic_Yorris",nil,1500],
						["optic_Aco",nil,1500],
						["optic_MRD",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_mas_Arco_blk",nil,1500],
						["optic_ACO_grn",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,1500],
						["optic_mas_DMS",nil,1500],
						["optic_LRPS",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_mas_Holosight_blk",nil,1500],
						["UGL_FlareWhite_F",nil,500],
						["HandGrenade_Stone","FlashBang",1000],
						["launch_NLAW_F",nil,250000],
						["NLAW_F",nil,50000]
					]
				];
			};
			case (__GETC__(life_coplevel) == 8):
			{
				["RLPD Armes Chef de Police",
					[
						["DDOPP_X26","Taser",800],
						["DDOPP_1Rnd_X26",nil,50],
						["hgun_P07_F",nil,5000],
						["hgun_Pistol_heavy_01_F",nil,5000],
						["hgun_mas_m9_F",nil,5000],
						["arifle_mas_mp5",nil,45000],
						["arifle_mas_mp5sd",nil,50000],
						["arifle_mas_mp5_d",nil,45000],
						["arifle_mas_m4c",nil,80000],
						["arifle_mas_m4c_d",nil,100000],
						["srifle_mas_m110",nil,150000],
						["arifle_mas_m4",nil,90000],
						["arifle_mas_m4_gl",nil,120000],
						["arifle_mas_m16",nil,100000],
						["arifle_mas_m1014",nil,50000],
						["srifle_mas_m107",nil,250000],
						["arifle_mas_fal",nil,150000],
						["arifle_mas_fal_m203",nil,150000],
						["srifle_LRR_F",nil,200000],
						["LMG_mas_M249_F",nil,200000],
						["hgun_mas_acp_F",nil,5000],
						["5Rnd_mas_127x99_dem_Stanag",nil,50000],
						["200Rnd_mas_556x45_Stanag",nil,1200],
						["7Rnd_408_Mag",nil,500],
						["5Rnd_mas_127x99_Stanag",nil,1000],
						["7Rnd_mas_12Gauge_Slug",nil,500],
						["7Rnd_mas_12Gauge_Pellets",nil,500],
						["20Rnd_mas_762x51_Stanag",nil,500],
						["30Rnd_mas_556x45_Stanag",nil,500],
						["16Rnd_9x21_Mag",nil,100],
						["12Rnd_mas_45acp_Mag",nil,100],
						["11Rnd_45ACP_Mag",nil,100],
						["30Rnd_mas_9x21_Stanag",nil,100],
						["acc_flashlight",nil,1500],
						["acc_pointer_IR",nil,1500],
						["muzzle_snds_L",nil,1500],
						["muzzle_mas_snds_M",nil,1500],
						["muzzle_mas_snds_SMc",nil,1500],
						["muzzle_mas_snds_SV",nil,1500],
						["muzzle_snds_H_MG",nil,1500],
						["optic_Yorris",nil,1500],
						["optic_Aco",nil,1500],
						["optic_MRD",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_mas_Arco_blk",nil,1500],
						["optic_ACO_grn",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_SOS",nil,1500],
						["optic_mas_DMS",nil,1500],
						["optic_LRPS",nil,1500],
						["optic_Holosight",nil,1500],
						["optic_mas_Holosight_blk",nil,1500],
						["UGL_FlareWhite_F",nil,500],
						["HandGrenade_Stone","FlashBang",1000],
						["launch_NLAW_F",nil,250000],
						["NLAW_F",nil,50000],
						["launch_B_Titan_F",nil,250000],
						["Titan_AA",nil,50000],
						["launch_RPG32_F",nil,250000],
						["RPG32_F",nil,50000]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas Civil!"};
			case (!license_civ_rebel): {"Vous n'avez pas l'entraînement Rebelle!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["hgun_mas_glock_F",nil,15000],
						["17Rnd_mas_9x21_Mag",nil,500],
						["hgun_mas_glocksf_F",nil,15000],
						["12Rnd_mas_45acp_Mag",nil,500],
						["mas_launch_RPG7_F",nil,600000],
						["mas_PG7V",nil,250000],
						["arifle_mas_ak_74m_sf",nil,160000],
						["30Rnd_mas_545x39_mag",nil,2500],
						["arifle_mas_akm",nil,300000],
						["30Rnd_mas_762x39_mag",nil,2500],
						["arifle_Katiba_C_F",nil,160000],
						["30Rnd_65x39_caseless_green",nil,2500],
						["arifle_mas_bizon",nil,160000],
						["64Rnd_mas_9x18_mag",nil,2500],
						["LMG_Zafir_F",nil,600000],
						["150Rnd_762x51_Box",nil,10000],
						["LMG_mas_pkm_F",nil,500000],
						["100Rnd_mas_762x54_mag",nil,7500],
						["srifle_GM6_camo_F",nil,850000],
						["5Rnd_127x108_Mag",nil,5000],
						["srifle_mas_svd",nil,600000],
						["10Rnd_mas_762x54_mag",nil,2500],
						["srifle_EBR_F",nil,400000],
						["20Rnd_762x51_Mag",nil,5000],
						["SmokeShellRed",nil,2500],
						["DemoCharge_Remote_Mag",nil,250000],
						["arifle_mas_m1014",nil,200000],
						["7Rnd_mas_12Gauge_Pellets",nil,2500],
						["7Rnd_mas_12Gauge_Slug",nil,2500],
						["optic_MRCO",nil,10000],
						["optic_Arco",nil,15000],
						["acc_pointer_IR",nil,5000],
						["optic_Holosight",nil,5000],
						["acc_flashlight",nil,2000],
						["optic_SOS",nil,200000],
						["Rangefinder",nil,50000],
						["optic_Aco",nil,1500],
						["optic_ACO_grn",nil,1500],
						["optic_DMS",nil,200000],
						["muzzle_snds_H",nil,30000],
						["muzzle_snds_L",nil,30000],
						["muzzle_snds_B",nil,30000],
						["NVGoggles_INDEP",nil,10000],
						["Binocular",nil,1500],
						["ItemGPS",nil,500],
						["ItemRadio","Smartphone",500],
						["ToolKit",nil,2000],
						["FirstAidKit",nil,150],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas Civil!"};
			case (!license_civ_gun): {"Vous n'avez pas la licence de port d'arme!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_mas_mak_F",nil,5000],
						["8Rnd_mas_9x18_Mag",nil,50],
						["arifle_SDAR_F",nil,12500],
						["20Rnd_556x45_UW_mag",nil,250],
						["hgun_ACPC2_F",nil,7500],
						["9Rnd_45ACP_Mag",nil,150],
						["hgun_mas_grach_F",nil,6500],
						["17Rnd_mas_9x21_Mag",nil,100],
						["hgun_Rook40_F",nil,6000],
						["16Rnd_9x21_Mag",nil,150],
						["hgun_Pistol_Signal_F",nil,1000],
						["6Rnd_GreenSignal_F",nil,100],
						["6Rnd_RedSignal_F",nil,100]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas Civil!"};
			default
			{
				["Armement de Gang",
					[
						["hgun_mas_uzi_F",nil,40000],
						["30Rnd_mas_9x21_Stanag",nil,250],
						["hgun_Pistol_heavy_02_",nil,10000],
						["6Rnd_45ACP_Cylinder",nil,250],
						["hgun_mas_sa61_F",nil,40000],
						["20Rnd_mas_765x17_Mag",nil,250],
						["hgun_PDW2000_F",nil,50000],
						["30Rnd_9x21_Mag",nil,500],
						["SMG_01_F",nil,80000],
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],
						["optic_Yorris",nil,2500],
						["optic_Aco",nil,1500],
						["optic_ACO_grn",nil,1500],
						["optic_MRD",nil,2000]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,1500],
				["ItemGPS",nil,500],
				["ItemRadio","Smartphone",500],
				["ToolKit",nil,2000],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,15000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
