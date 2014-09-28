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
ctrlSetText[3103,"Magasin Police Vetement"];

_ret = [];
switch (_filter) do
{
	//Uniformes
	case 0:
	{
		//Recrue
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret pushBack ["demian2435_police_man_uniform",nil,350];
		};
		//Caporal
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret pushBack ["demian2435_police_man_uniform",nil,350];
			_ret pushBack ["TCG_PDCPL",nil,350];
			_ret pushBack ["U_B_Wetsuit",nil,350];
		};
		//Sergent
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret pushBack ["demian2435_police_man_uniform",nil,350];
			_ret pushBack ["TCG_PDCPL",nil,350];
			_ret pushBack ["TCG_PDSGT",nil,350];
			_ret pushBack ["U_B_Wetsuit",nil,350];
		};
		//Sergent-Chef
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret pushBack ["demian2435_police_man_uniform",nil,350];
			_ret pushBack ["TCG_PDCPL",nil,350];
			_ret pushBack ["TCG_PDSGT",nil,350];
			_ret pushBack ["U_B_Wetsuit",nil,350];
		};
		//Lieutenant
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret pushBack ["demian2435_police_man_uniform",nil,350];
			_ret pushBack ["demian2435_swat_man_uniform",nil,350];
			_ret pushBack ["demian2435_swat_sniper_uniform",nil,350];
			_ret pushBack ["TCG_PDCPL",nil,350];
			_ret pushBack ["TCG_PDSGT",nil,350];
			_ret pushBack ["U_B_Wetsuit",nil,350];
		};
		//Capitaine
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret pushBack ["demian2435_police_man_uniform",nil,350];
			_ret pushBack ["demian2435_swat_man_uniform",nil,350];
			_ret pushBack ["demian2435_swat_sniper_uniform",nil,350];
			_ret pushBack ["TCG_PDCPL",nil,350];
			_ret pushBack ["TCG_PDSGT",nil,350];
			_ret pushBack ["U_B_Wetsuit",nil,350];
		};
		//Major
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret pushBack ["demian2435_police_man_uniform",nil,350];
			_ret pushBack ["demian2435_swat_man_uniform",nil,350];
			_ret pushBack ["demian2435_swat_leader_uniform",nil,350];
			_ret pushBack ["demian2435_swat_sniper_uniform",nil,350];
			_ret pushBack ["TCG_PDCPL",nil,350];
			_ret pushBack ["TCG_PDSGT",nil,350];
			_ret pushBack ["U_B_Wetsuit",nil,350];
		};
		//Chef de Police / Colonel
		if(__GETC__(life_coplevel) == 8) then
		{
			_ret pushBack ["demian2435_police_man_uniform",nil,350];
			_ret pushBack ["demian2435_swat_man_uniform",nil,350];
			_ret pushBack ["demian2435_swat_leader_uniform",nil,350];
			_ret pushBack ["demian2435_swat_sniper_uniform",nil,350];
			_ret pushBack ["TCG_PDCPL",nil,350];
			_ret pushBack ["TCG_PDSGT",nil,350];
			_ret pushBack ["TCG_SWAT",nil,350];
			_ret pushBack ["U_B_Wetsuit",nil,350];
		};
	};
	
	//Casques / Chapeaux
	case 1:
	{
		//Caporal
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret pushBack ["H_Watchcap_blk",nil,550];
		};
		//Sergent
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret pushBack ["H_Watchcap_blk",nil,550];
		};
		//Sergent-Chef
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret pushBack ["H_Watchcap_blk",nil,550];
		};
		//Lietenant
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret pushBack ["H_Watchcap_blk",nil,550];
			_ret pushBack ["demian2435_sniper_cap",nil,550];
		};
		//Capitaine
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret pushBack ["H_Watchcap_blk",nil,550];
			_ret pushBack ["demian2435_sniper_cap",nil,550];
			_ret pushBack ["TCG_swathelmet",nil,550];
			_ret pushBack ["boonie_blk",nil,550];
		};
		//Major
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret pushBack ["H_Watchcap_blk",nil,550];
			_ret pushBack ["demian2435_sniper_cap",nil,550];
			_ret pushBack ["TCG_swathelmet",nil,550];
			_ret pushBack ["boonie_blk",nil,550];
			_ret pushBack ["H_Beret_blk",nil,550];
			_ret pushBack ["H_Beret_02",nil,550];
		};
		//Chef de Police / Colonel
		if(__GETC__(life_coplevel) == 8) then
		{
			_ret pushBack ["H_Watchcap_blk",nil,550];
			_ret pushBack ["demian2435_sniper_cap",nil,550];
			_ret pushBack ["TCG_swathelmet",nil,550];
			_ret pushBack ["boonie_blk",nil,550];
			_ret pushBack ["H_Beret_blk",nil,550];
			_ret pushBack ["H_Beret_02",nil,550];
			_ret pushBack ["H_Beret_Colonel",nil,550];
		};
	};
	
	//Lunettes / Barbes
	case 2:
	{
		//Caporal
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret pushBack ["G_B_Diving",nil,550];
			_ret pushBack ["G_Tactical_Black",nil,550];
		};
		//Sergent
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret pushBack ["G_B_Diving",nil,550];
			_ret pushBack ["G_Tactical_Black",nil,550];
			_ret pushBack ["G_Spectacles_Tinted",nil,550];
		};
		//Sergent-Chef
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret pushBack ["G_B_Diving",nil,550];
			_ret pushBack ["G_Tactical_Black",nil,550];
			_ret pushBack ["G_Spectacles_Tinted",nil,550];
			_ret pushBack ["G_Aviator",nil,550];
			_ret pushBack ["SFG_Tac_smallBeardD",nil,2500];
			_ret pushBack ["SFG_Tac_moustacheD",nil,2500];
			_ret pushBack ["SFG_Tac_ChopsD",nil,2500];
		};
		//Lieutenant
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret pushBack ["G_B_Diving",nil,550];
			_ret pushBack ["G_Tactical_Black",nil,550];
			_ret pushBack ["G_Spectacles_Tinted",nil,550];
			_ret pushBack ["G_Aviator",nil,550];
			_ret pushBack ["G_Squares",nil,550];
			_ret pushBack ["SFG_Tac_smallBeardD",nil,2500];
			_ret pushBack ["SFG_Tac_moustacheD",nil,2500];
			_ret pushBack ["SFG_Tac_ChopsD",nil,2500];
			_ret pushBack ["G_Balaclava_blk",nil,550];
			_ret pushBack ["G_Balaclava_lowprofile",nil,550];
			_ret pushBack ["G_Balaclava_combat",nil,550];
		};
		//Capitaine
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret pushBack ["G_B_Diving",nil,550];
			_ret pushBack ["G_Tactical_Black",nil,550];
			_ret pushBack ["G_Spectacles_Tinted",nil,550];
			_ret pushBack ["G_Aviator",nil,550];
			_ret pushBack ["G_Squares",nil,550];
			_ret pushBack ["SFG_Tac_smallBeardD",nil,2500];
			_ret pushBack ["SFG_Tac_moustacheD",nil,2500];
			_ret pushBack ["SFG_Tac_ChopsD",nil,2500];
			_ret pushBack ["G_Balaclava_blk",nil,550];
			_ret pushBack ["G_Balaclava_lowprofile",nil,550];
			_ret pushBack ["G_Balaclava_combat",nil,550];
		};
		//Major
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret pushBack ["G_B_Diving",nil,550];
			_ret pushBack ["G_Tactical_Black",nil,550];
			_ret pushBack ["G_Spectacles_Tinted",nil,550];
			_ret pushBack ["G_Aviator",nil,550];
			_ret pushBack ["G_Squares",nil,550];
			_ret pushBack ["SFG_Tac_smallBeardD",nil,2500];
			_ret pushBack ["SFG_Tac_moustacheD",nil,2500];
			_ret pushBack ["SFG_Tac_ChopsD",nil,2500];
			_ret pushBack ["G_Balaclava_blk",nil,550];
			_ret pushBack ["G_Balaclava_lowprofile",nil,550];
			_ret pushBack ["G_Balaclava_combat",nil,550];
		};
		//Chef de Police / Colonel
		if(__GETC__(life_coplevel) == 8) then
		{
			_ret pushBack ["G_B_Diving",nil,550];
			_ret pushBack ["G_Tactical_Black",nil,550];
			_ret pushBack ["G_Spectacles_Tinted",nil,550];
			_ret pushBack ["G_Aviator",nil,550];
			_ret pushBack ["G_Squares",nil,550];
			_ret pushBack ["SFG_Tac_smallBeardD",nil,2500];
			_ret pushBack ["SFG_Tac_moustacheD",nil,2500];
			_ret pushBack ["SFG_Tac_ChopsD",nil,2500];
			_ret pushBack ["G_Balaclava_blk",nil,550];
			_ret pushBack ["G_Balaclava_lowprofile",nil,550];
			_ret pushBack ["G_Balaclava_combat",nil,550];
		};
	};
	
	//Vestes 
	case 3:
	{
		//Recrue
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret pushBack ["demian2435_police_belt",nil,350];
		};
		//Caporal
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret pushBack ["demian2435_police_belt",nil,350];
			_ret pushBack ["V_PlateCarrier1_blk",nil,350];
			_ret pushBack ["V_RebreatherIA",nil,350];
		};
		//Sergent
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret pushBack ["demian2435_police_belt",nil,350];
			_ret pushBack ["V_PlateCarrier1_blk",nil,350];
			_ret pushBack ["V_RebreatherIA",nil,350];
			_ret pushBack ["TCG_policevest1",nil,350];
		};
		//Sergent-Chef
		if(__GETC__(life_coplevel) == 4) then
		{
			_ret pushBack ["demian2435_police_belt",nil,350];
			_ret pushBack ["V_PlateCarrier1_blk",nil,350];
			_ret pushBack ["V_RebreatherIA",nil,350];
			_ret pushBack ["TCG_policevest1",nil,350];
		};
		//Lieutenant
		if(__GETC__(life_coplevel) == 5) then
		{
			_ret pushBack ["demian2435_police_belt",nil,350];
			_ret pushBack ["V_PlateCarrier1_blk",nil,350];
			_ret pushBack ["V_RebreatherIA",nil,350];
			_ret pushBack ["TCG_policevest1",nil,350];
			_ret pushBack ["demian2435_sniper_vest",nil,350];
		};
		//Capitaine
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret pushBack ["demian2435_police_belt",nil,350];
			_ret pushBack ["demian2435_swat_vest",nil,350];
			_ret pushBack ["V_PlateCarrier1_blk",nil,350];
			_ret pushBack ["V_RebreatherIA",nil,350];
			_ret pushBack ["TCG_policevest1",nil,350];
			_ret pushBack ["demian2435_sniper_vest",nil,350];
		};
		//Major
		if(__GETC__(life_coplevel) == 7) then
		{
			_ret pushBack ["demian2435_police_belt",nil,350];
			_ret pushBack ["demian2435_swat_vest",nil,350];
			_ret pushBack ["V_PlateCarrier1_blk",nil,350];
			_ret pushBack ["V_RebreatherIA",nil,350];
			_ret pushBack ["TCG_policevest1",nil,350];
			_ret pushBack ["demian2435_sniper_vest",nil,350];
		};
		//Chef de Police / Colonel
		if(__GETC__(life_coplevel) == 8) then
		{
			_ret pushBack ["demian2435_police_belt",nil,350];
			_ret pushBack ["demian2435_swat_leader_vest",nil,350];
			_ret pushBack ["V_PlateCarrier1_blk",nil,350];
			_ret pushBack ["V_RebreatherIA",nil,350];
			_ret pushBack ["TCG_policevest1",nil,350];
			_ret pushBack ["demian2435_sniper_vest",nil,350];
		};
	};
	
	//Sacs
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