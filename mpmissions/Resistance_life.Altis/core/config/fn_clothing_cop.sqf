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
ctrlSetText[3103,"Police Magasin Vetement"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret set[count _ret,["demian2435_police_man_uniform",nil,350]];
		};
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret set[count _ret,["demian2435_police_man_uniform",nil,350]];
			_ret set[count _ret,["TCG_PDCPL",nil,350]];
			_ret set[count _ret,["U_B_Wetsuit",nil,350]];
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["demian2435_police_man_uniform",nil,350]];
			_ret set[count _ret,["TCG_PDCPL",nil,350]];
			_ret set[count _ret,["TCG_PDSGT",nil,350]];
			_ret set[count _ret,["U_B_Wetsuit",nil,350]];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["demian2435_police_man_uniform",nil,350]];
			_ret set[count _ret,["TCG_PDCPL",nil,350]];
			_ret set[count _ret,["TCG_PDSGT",nil,350]];
			_ret set[count _ret,["U_B_Wetsuit",nil,350]];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["demian2435_police_man_uniform",nil,350]];
			_ret set[count _ret,["demian2435_swat_man_uniform",nil,350]];
			_ret set[count _ret,["demian2435_swat_sniper_uniform",nil,350]];
			_ret set[count _ret,["TCG_PDCPL",nil,350]];
			_ret set[count _ret,["TCG_PDSGT",nil,350]];
			_ret set[count _ret,["U_B_Wetsuit",nil,350]];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["demian2435_police_man_uniform",nil,350]];
			_ret set[count _ret,["demian2435_swat_man_uniform",nil,350]];
			_ret set[count _ret,["demian2435_swat_sniper_uniform",nil,350]];
			_ret set[count _ret,["TCG_PDCPL",nil,350]];
			_ret set[count _ret,["TCG_PDSGT",nil,350]];
			_ret set[count _ret,["U_B_Wetsuit",nil,350]];
		};
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["demian2435_police_man_uniform",nil,350]];
			_ret set[count _ret,["demian2435_swat_man_uniform",nil,350]];
			_ret set[count _ret,["demian2435_swat_leader_uniform",nil,350]];
			_ret set[count _ret,["demian2435_swat_sniper_uniform",nil,350]];
			_ret set[count _ret,["TCG_PDCPL",nil,350]];
			_ret set[count _ret,["TCG_PDSGT",nil,350]];
			_ret set[count _ret,["U_B_Wetsuit",nil,350]];
		};
		if(__GETC__(life_coplevel) == 8) then
		{
			_ret set[count _ret,["demian2435_police_man_uniform",nil,350]];
			_ret set[count _ret,["demian2435_swat_man_uniform",nil,350]];
			_ret set[count _ret,["demian2435_swat_leader_uniform",nil,350]];
			_ret set[count _ret,["demian2435_swat_sniper_uniform",nil,350]];
			_ret set[count _ret,["TCG_PDCPL",nil,350]];
			_ret set[count _ret,["TCG_PDSGT",nil,350]];
			_ret set[count _ret,["TCG_SWAT",nil,350]];
			_ret set[count _ret,["U_B_Wetsuit",nil,350]];
		};
	};
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret set[count _ret,["H_Watchcap_blk",nil,550]];
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["H_Watchcap_blk",nil,550]];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["H_Watchcap_blk",nil,550]];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["H_Watchcap_blk",nil,550]];
			_ret set[count _ret,["demian2435_sniper_cap",nil,550]];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["H_Watchcap_blk",nil,550]];
			_ret set[count _ret,["demian2435_sniper_cap",nil,550]];
			_ret set[count _ret,["TCG_swathelmet",nil,550]];
			_ret set[count _ret,["boonie_blk",nil,550]];
		};
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["H_Watchcap_blk",nil,550]];
			_ret set[count _ret,["demian2435_sniper_cap",nil,550]];
			_ret set[count _ret,["TCG_swathelmet",nil,550]];
			_ret set[count _ret,["boonie_blk",nil,550]];
			_ret set[count _ret,["H_Beret_blk",nil,550]];
			_ret set[count _ret,["H_Beret_02",nil,550]];
		};
		if(__GETC__(life_coplevel) == 8) then
		{
			_ret set[count _ret,["H_Watchcap_blk",nil,550]];
			_ret set[count _ret,["demian2435_sniper_cap",nil,550]];
			_ret set[count _ret,["TCG_swathelmet",nil,550]];
			_ret set[count _ret,["boonie_blk",nil,550]];
			_ret set[count _ret,["H_Beret_blk",nil,550]];
			_ret set[count _ret,["H_Beret_02",nil,550]];
			_ret set[count _ret,["H_Beret_Colonel",nil,550]];
		};
	};
	
	//Glasses
	case 2:
	{
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret set[count _ret,["G_B_Diving",nil,550]];
			_ret set[count _ret,["G_Tactical_Black",nil,550]];
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["G_B_Diving",nil,550]];
			_ret set[count _ret,["G_Tactical_Black",nil,550]];
			_ret set[count _ret,["G_Spectacles_Tinted",nil,550]];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["G_B_Diving",nil,550]];
			_ret set[count _ret,["G_Tactical_Black",nil,550]];
			_ret set[count _ret,["G_Spectacles_Tinted",nil,550]];
			_ret set[count _ret,["G_Aviator",nil,550]];
			_ret set[count _ret,["SFG_Tac_smallBeardD",nil,2500]];
			_ret set[count _ret,["SFG_Tac_moustacheD",nil,2500]];
			_ret set[count _ret,["SFG_Tac_ChopsD",nil,2500]];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["G_B_Diving",nil,550]];
			_ret set[count _ret,["G_Tactical_Black",nil,550]];
			_ret set[count _ret,["G_Spectacles_Tinted",nil,550]];
			_ret set[count _ret,["G_Aviator",nil,550]];
			_ret set[count _ret,["G_Squares",nil,550]];
			_ret set[count _ret,["SFG_Tac_smallBeardD",nil,2500]];
			_ret set[count _ret,["SFG_Tac_moustacheD",nil,2500]];
			_ret set[count _ret,["SFG_Tac_ChopsD",nil,2500]];
			_ret set[count _ret,["G_Balaclava_blk",nil,550]];
			_ret set[count _ret,["G_Balaclava_lowprofile",nil,550]];
			_ret set[count _ret,["G_Balaclava_combat",nil,550]];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["G_B_Diving",nil,550]];
			_ret set[count _ret,["G_Tactical_Black",nil,550]];
			_ret set[count _ret,["G_Spectacles_Tinted",nil,550]];
			_ret set[count _ret,["G_Aviator",nil,550]];
			_ret set[count _ret,["G_Squares",nil,550]];
			_ret set[count _ret,["SFG_Tac_smallBeardD",nil,2500]];
			_ret set[count _ret,["SFG_Tac_moustacheD",nil,2500]];
			_ret set[count _ret,["SFG_Tac_ChopsD",nil,2500]];
			_ret set[count _ret,["G_Balaclava_blk",nil,550]];
			_ret set[count _ret,["G_Balaclava_lowprofile",nil,550]];
			_ret set[count _ret,["G_Balaclava_combat",nil,550]];
		};
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["G_B_Diving",nil,550]];
			_ret set[count _ret,["G_Tactical_Black",nil,550]];
			_ret set[count _ret,["G_Spectacles_Tinted",nil,550]];
			_ret set[count _ret,["G_Aviator",nil,550]];
			_ret set[count _ret,["G_Squares",nil,550]];
			_ret set[count _ret,["SFG_Tac_smallBeardD",nil,2500]];
			_ret set[count _ret,["SFG_Tac_moustacheD",nil,2500]];
			_ret set[count _ret,["SFG_Tac_ChopsD",nil,2500]];
			_ret set[count _ret,["G_Balaclava_blk",nil,550]];
			_ret set[count _ret,["G_Balaclava_lowprofile",nil,550]];
			_ret set[count _ret,["G_Balaclava_combat",nil,550]];
		};
		if(__GETC__(life_coplevel) == 8) then
		{
			_ret set[count _ret,["G_B_Diving",nil,550]];
			_ret set[count _ret,["G_Tactical_Black",nil,550]];
			_ret set[count _ret,["G_Spectacles_Tinted",nil,550]];
			_ret set[count _ret,["G_Aviator",nil,550]];
			_ret set[count _ret,["G_Squares",nil,550]];
			_ret set[count _ret,["SFG_Tac_smallBeardD",nil,2500]];
			_ret set[count _ret,["SFG_Tac_moustacheD",nil,2500]];
			_ret set[count _ret,["SFG_Tac_ChopsD",nil,2500]];
			_ret set[count _ret,["G_Balaclava_blk",nil,550]];
			_ret set[count _ret,["G_Balaclava_lowprofile",nil,550]];
			_ret set[count _ret,["G_Balaclava_combat",nil,550]];
		};
	};
	
	//Vest
	case 3:
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret set[count _ret,["demian2435_police_belt",nil,350]];
		};
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret set[count _ret,["demian2435_police_belt",nil,350]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,350]];
			_ret set[count _ret,["V_RebreatherIA",nil,350]];
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret set[count _ret,["demian2435_police_belt",nil,350]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,350]];
			_ret set[count _ret,["V_RebreatherIA",nil,350]];
			_ret set[count _ret,["TCG_policevest1",nil,350]];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret set[count _ret,["demian2435_police_belt",nil,350]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,350]];
			_ret set[count _ret,["V_RebreatherIA",nil,350]];
			_ret set[count _ret,["TCG_policevest1",nil,350]];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret set[count _ret,["demian2435_police_belt",nil,350]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,350]];
			_ret set[count _ret,["V_RebreatherIA",nil,350]];
			_ret set[count _ret,["TCG_policevest1",nil,350]];
			_ret set[count _ret,["demian2435_sniper_vest",nil,350]];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret set[count _ret,["demian2435_police_belt",nil,350]];
			_ret set[count _ret,["demian2435_swat_vest",nil,350]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,350]];
			_ret set[count _ret,["V_RebreatherIA",nil,350]];
			_ret set[count _ret,["TCG_policevest1",nil,350]];
			_ret set[count _ret,["demian2435_sniper_vest",nil,350]];
		};
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret set[count _ret,["demian2435_police_belt",nil,350]];
			_ret set[count _ret,["demian2435_swat_vest",nil,350]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,350]];
			_ret set[count _ret,["V_RebreatherIA",nil,350]];
			_ret set[count _ret,["TCG_policevest1",nil,350]];
			_ret set[count _ret,["demian2435_sniper_vest",nil,350]];
		};
		if(__GETC__(life_coplevel) == 8) then
		{
			_ret set[count _ret,["demian2435_police_belt",nil,350]];
			_ret set[count _ret,["demian2435_swat_leader_vest",nil,350]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,350]];
			_ret set[count _ret,["V_RebreatherIA",nil,350]];
			_ret set[count _ret,["TCG_policevest1",nil,350]];
			_ret set[count _ret,["demian2435_sniper_vest",nil,350]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Parachute",nil,500],
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;