#include <macro.h>
/*
	File: fn_seizeCfg.sqf
	Author: Tabakhase
	Slightly adapted by Daniel Larusso (Keep Calm and Roleplay)
	
	Description:
	Master configuration file for seize player everything.
	
	Parameters:
	0 = All
	1 = Weapons
	2 = Uniform
	3 = Backpack
	4 = Vest
	5 = Items
	
	ToDo:
	Adding list 0,2,3,4&5
*/
private["_mode"];
_mode = [_this,0,objNull,[""]] call BIS_fnc_param;

switch(_mode) do
{
	case 1: {
		[
			// Weapons
			"srifle_EBR_F",
			"srifle_GM6_F",
			"srifle_LRR_F",
			"LMG_Mk200_F",
			"hgun_P07_F",
			"hgun_Rook40_F",
			"hgun_ACPC2_F",
			"hgun_Pistol_heavy_01_F",
			"hgun_Pistol_heavy_01_snds_F",
			"hgun_Pistol_heavy_02_F",
			"hgun_PDW2000_F",
			"hgun_Pistol_Signal_F",
			"arifle_Katiba_F",
			"arifle_Katiba_C_F",
			"arifle_Katiba_GL_F",
			"arifle_MXC_F",
			"arifle_MXC_Black_F",
			"arifle_MX_F",
			"arifle_MX_Black_F",
			"arifle_MX_GL_F",
			"arifle_MX_GL_Black_F",
			"arifle_MX_SW_F",
			"arifle_MX_SW_Black_F",
			"arifle_MXM_F",
			"arifle_MXM_Black_F",
			"arifle_SDAR_F",
			"arifle_TRG21_F",
			"arifle_TRG20_F",
			"arifle_TRG21_GL_F",
			"arifle_Mk20_F",
			"arifle_Mk20_plain_F",
			"arifle_Mk20C_F",
			"arifle_Mk20C_plain_F",
			"arifle_Mk20_GL_F",
			"arifle_Mk20_GL_plain_F",
			"launch_B_Titan_F",
			"launch_I_Titan_F",
			"launch_O_Titan_F",
			"launch_B_Titan_short_F",
			"launch_I_Titan_short_F",
			"launch_O_Titan_short_F",
			"LMG_Zafir_F",
			"SMG_01_F",
			"SMG_02_F",
			"srifle_DMR_01_F",
			"DDOPP_X26",
			"DDOPP_1Rnd_X26",
			"hgun_mas_m9_F",
			"arifle_mas_mp5",
			"hgun_mas_acp_F",
			"arifle_mas_mp5sd",
			"arifle_mas_mp5_d",
			"arifle_mas_m4c",
			"srifle_mas_m110",
			"arifle_mas_m4",
			"arifle_mas_m4_gl",
			"arifle_mas_m1014",
			"hgun_mas_acp_F",
			"srifle_mas_m107",
			"arifle_mas_fal_m203",
			"LMG_mas_M249_F",
			"launch_NLAW_F",
			"NLAW_F",
			"launch_RPG32_F",
			"RPG32_F",
			"hgun_mas_glock_F",
			"hgun_mas_glocksf_F",
			"mas_launch_RPG7_F",
			"mas_PG7V",
			"arifle_mas_ak_74m_sf",
			"arifle_mas_akm",
			"arifle_mas_bizon",
			"64Rnd_mas_9x18_mag",
			"srifle_GM6_camo_F",
			"LMG_mas_pkm_F",
			"srifle_mas_svd",
			"DemoCharge_Remote_Mag",
			"hgun_mas_mak_F",
			"arifle_SDAR_F",
			"hgun_ACPC2_F",
			"hgun_mas_grach_F",
			"hgun_Rook40_F",
			"hgun_mas_uzi_F",
			"hgun_Pistol_heavy_02_",
			"hgun_mas_sa61_F",
			"hgun_PDW2000_F",
			
			
			
			
			// Mags
			"30Rnd_556x45_Stanag",
			"20Rnd_556x45_UW_mag",
			"30Rnd_65x39_caseless_mag",
			"30Rnd_65x39_caseless_green",
			"20Rnd_762x51_Mag",
			"7Rnd_408_Mag",
			"5Rnd_127x108_Mag",
			"100Rnd_65x39_caseless_mag",
			"200Rnd_65x39_cased_Box",
			"30Rnd_9x21_Mag",
			"16Rnd_9x21_Mag",
			"RPG32_F",
			"RPG32_HE_F",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_SmokeGreen_Grenade_shell",
			"3Rnd_SmokeGreen_Grenade_shell",
			"HandGrenade_Stone",
			"SmokeShell",
			"SmokeShellGreen",
			"200Rnd_65x39_Belt",
			"ATMine_Range_Mag",
			"APERSMine_Range_Mag",
			"APERSBoundingMine_Range_Mag",
			"SLAMDirectionalMine_Wire_Mag",
			"APERSTripMine_Wire_Mag",
			"ClaymoreDirectionalMine_Remote_Mag",
			"SatchelCharge_Remote_Mag",
			"DemoCharge_Remote_Mag",
			"30Rnd_45ACP_Mag_SMG_01",
			"9Rnd_45ACP_Mag",
			"150Rnd_762x51_Box",
			"11Rnd_45ACP_Mag",
			"6Rnd_45ACP_Cylinder",
			"10Rnd_762x51_Mag",
			"5Rnd_127x108_APDS_Mag",
			"6Rnd_GreenSignal_F",
			"6Rnd_RedSignal_F"
			
			//Uniforme
			
			//veste
			
			//
		];
	};
};