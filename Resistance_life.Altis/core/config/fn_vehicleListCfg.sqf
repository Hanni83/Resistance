#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "car_merc":
	{
	if(license_civ_merc) then
		{
			_return pushBack
			["I_Truck_02_transport_F",150000];
			_return pushBack
			["O_Truck_03_transport_F",750000];
			_return pushBack
			["O_MRAP_02_F",750000];
			_return pushBack
			["DAR_MK27",400000];
			_return pushBack
			["DAR_4X4",150000];
		};
	};
    
    case "hel_merc":
	{
		if(license_civ_merc) then
		{
			["B_Heli_Light_01_F",450000],
			["O_Heli_Light_02_unarmed_F",800000]
		};
	};
	
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		if(__GETC__(life_mediclevel) == 1) then
		{
			_return pushBack
			["C_Offroad_01_F",6000];
		};
		if(__GETC__(life_mediclevel) == 2) then
		{
			_return pushBack
			["C_Offroad_01_F",6000];
			_return pushBack
			["C_SUV_01_F",17000];
		};
		if(__GETC__(life_mediclevel) == 3) then
		{
			_return pushBack
			["C_Offroad_01_F",6000];
			_return pushBack
			["C_SUV_01_F",17000];
			_return pushBack
			["cl3_q7_clpd_cn",27000];
		};
	};
	
	case "med_air_hs": 
	{
		if(__GETC__(life_mediclevel) == 2) then
		{
			_return pushBack
			["B_Heli_Light_01_F",20000];
		};
		if(__GETC__(life_mediclevel) == 3) then
		{
			_return pushBack
			["B_Heli_Light_01_F",20000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",45000];
		};
	};
	
	case "civ_car":
	{
		_return = 
		[
            ["RDS_Lada_Civ_01",2500],
			["RDS_Lada_Civ_02",2500],
			["RDS_Lada_Civ_03",2500],
			["RDS_Lada_Civ_04",2500],
			["RDS_Lada_Civ_05",2500],
			["RDS_Gaz24_Civ_01",9500],
			["RDS_Gaz24_Civ_02",9500],
			["RDS_Gaz24_Civ_03",9500],
			["C_Offroad_01_F",15500],
            ["RDS_Octavia_Civ_01",12000],
			["RDS_Golf4_Civ_01",35000],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["DAR_ImpalaCiv",40000],
			["DAR_ImpalaCivA",40000],
			["DAR_ImpalaCivC",40000],
			["DAR_ImpalaCivD",40000],
			["DAR_FusionCiv",40000],
			["DAR_FusionCivBlack",40000],
			["DAR_TaurusCiv",40000],
			["DAR_TaurusCivBlack",40000],
			["DAR_TahoeCiv",55000],
			["DAR_TahoeCivRed",55000],
			["DAR_TahoeCivSilver",55000],
			["DAR_TahoeCivBlack",55000],
			["SAL_IROCCiv",67000],
			["SAL_IROCCivBlack",67000],
			["Jonzie_96_Impala",67000],
			["BAF_Offroad_D",100000],
			["DAR_ChallengerCivWhite",200000],
			["DAR_ChallengerCivBlack",200000],
			["DAR_ChallengerCivOrange",200000],
			["SAL_AudiCiv",200000],
			["SAL_AudiCivBlack",200000],
			["SAL_AudiCivRed",200000],
			["DAR_ChargerCiv",200000],
			["DAR_M3CivBlack",200000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["DAR_MK23",100000],
			["B_Truck_01_transport_F",275000],
			["DAR_MK27",400000],
			["B_Truck_01_box_F",670000],
			["DAR_MK27T",670000]
		];	
	};
	
	case "ta_car":
	{
	if(license_civ_transaltis) then
		{
            _return pushBack
			["MMT_Civ",5000];
			_return pushBack
			["cl3_range_rover_black",75000];
			_return pushBack
			["cl3_q7_black",75000];
            _return pushBack
			["A3L_PuntoBlack",35000];
			_return pushBack
			["cl3_transit_black",75000];
			_return pushBack
			["cl3_civic_vti_black",75000];
			_return pushBack
			["cl3_golf_mk2_black",75000];
			_return pushBack
			["cl3_insignia_black",75000];
			_return pushBack
			["cl3_polo_gti_black",75000];
			_return pushBack
			["cl3_suv_black",75000];
			_return pushBack
			["cl3_dodge_chargerum_o_black",300000];
			_return pushBack
			["cl3_e60_m5_black",300000];
			_return pushBack
			["cl3_z4_2008_black",300000];
			_return pushBack
			["cl3_dbs_volante_black",300000];
			_return pushBack
			["cl3_e63_amg_black",300000];
			_return pushBack
			["cl3_r8_spyder_black",350000];
            _return pushBack
			["Jonzie_Viper",350000];
			_return pushBack
			["cl3_lamborghini_gt1_black",400000];
			_return pushBack
			["cl3_carrera_gt_black",400000];
			_return pushBack
			["cl3_458_black",400000];
			_return pushBack
			["cl3_reventon_black",400000];
			_return pushBack
			["cl3_murcielago_black",400000];
			_return pushBack
			["cl3_veyron_brn_blk",400000];
		};
	};
	
	case "ta_truck":
	{
	if(license_civ_transaltis) then
		{
            _return pushBack
			["A3L_Dumptruck",150000];
			_return pushBack
			["I_Truck_02_transport_F",150000];
			_return pushBack
			["O_Truck_03_transport_F",150000];
			_return pushBack
			["B_Truck_01_transport_F",150000];
			_return pushBack
			["DAR_MK27",150000];
			_return pushBack
			["DAR_4X4",150000];
			_return pushBack
			["RDS_Ikarus_Civ_01",150000];
		};
	};
	
	case "ta_hel":
	{
	if(license_civ_transaltis) then
		{
			_return pushBack
			["RAF_Merlin_HC3_FG",1200000];
			_return pushBack
			["B_Heli_Light_01_F",20000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",400000];
			_return pushBack
			["Cha_Mi17_Civilian",900000];
		};
	};
	
	case "ta_avion":
	{
	if(license_civ_transaltis) then
		{
			_return pushBack
			["GNT_C185",800000];
			_return pushBack
			["IVORY_CRJ200_1",1200000];
			_return pushBack
			["globemaster_c17_705",1500000];
		};
	};
	
	case "reb_car":
	{
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_F",10000];
			_return pushBack
			["UAZ_Unarmed",35000];
			_return pushBack
			["UAZ_MG",3000000];
			_return pushBack
			["cl3_defender_110_cammo",100000];
			_return pushBack
			["BAF_Jackal2_L2A1_D",5000000];
			_return pushBack
			["O_MRAP_02_F",750000];
			_return pushBack
			["B_Heli_Light_01_F",500000];
            _return pushBack
            ["B_Heli_Light_01_armed_F",7500000];
            _return pushBack
            ["O_Heli_Light_02_F",9000000];
			_return pushBack
			["Cha_Mi17_TK_EP1",3000000];
			_return pushBack
			["cl3_transit_camo",75000];
			_return pushBack
			["O_Truck_03_transport_F",750000];
			_return pushBack
			["O_Truck_03_covered_F",1300000];
		};
	};
	
	case "reb_car_1":
	{
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_G_Offroad_01_F",10000];
			_return pushBack
			["UAZ_Unarmed",35000];
			_return pushBack
			["UAZ_MG",3000000];
			_return pushBack
			["cl3_defender_110_cammo",100000];
			_return pushBack
			["cl3_transit_camo",75000];
			_return pushBack
			["BAF_Jackal2_L2A1_D",5000000];
			_return pushBack
			["O_MRAP_02_F",750000];
			_return pushBack
			["O_Truck_03_transport_F",750000];
			_return pushBack
			["O_Truck_03_covered_F",1300000];
		};
	};
	
	case "reb_air":
	{
		if(license_civ_rebel) then
		{
			_return pushBack
			["B_Heli_Light_01_F",500000];
			_return pushBack
			["Cha_Mi17_TK_EP1",3000000];
            _return pushBack
            ["B_Heli_Light_01_armed_F",7500000];
            _return pushBack
            ["O_Heli_Light_02_F",9000000];
		};
	};
	
	case "donator_1":
	{

		if(__GETC__(life_donator) == 1) then
		{
			_return pushBack ["cl3_range_rover_black",200000];
			_return pushBack ["cl3_range_rover_burgundy",200000];
			_return pushBack ["cl3_civic_vti_black",50000];
			_return pushBack ["cl3_civic_vti_dark_green",50000];
            _return pushBack ["cl3_insignia_black",150000];
            _return pushBack ["cl3_insignia_lime",150000];
		};
		if(__GETC__(life_donator) == 2) then
		{
			_return pushBack ["cl3_range_rover_black",200000];
			_return pushBack ["cl3_range_rover_burgundy",200000];
			_return pushBack ["cl3_civic_vti_black",50000];
			_return pushBack ["cl3_civic_vti_dark_green",50000];
            _return pushBack ["cl3_insignia_black",150000];
            _return pushBack ["cl3_insignia_lime",150000];
			_return pushBack ["cl3_e60_m5_dark_green",200000];
			_return pushBack ["cl3_e60_m5_navy_blue",200000];
			_return pushBack ["cl3_dbs_volante_black",600000];
			_return pushBack ["cl3_dbs_volante_orange",600000];
            _return pushBack ["cl3_e63_amg_white",600000];
            _return pushBack ["cl3_e63_amg_silver",600000];
		};
		if(__GETC__(life_donator) == 3) then
		{
			_return pushBack ["cl3_range_rover_black",200000];
			_return pushBack ["cl3_range_rover_burgundy",200000];
			_return pushBack ["cl3_civic_vti_black",50000];
			_return pushBack ["cl3_civic_vti_dark_green",50000];
            _return pushBack ["cl3_insignia_black",150000];
            _return pushBack ["cl3_insignia_lime",150000];
			_return pushBack ["cl3_e60_m5_dark_green",200000];
			_return pushBack ["cl3_e60_m5_navy_blue",200000];
			_return pushBack ["cl3_dbs_volante_black",600000];
			_return pushBack ["cl3_dbs_volante_orange",600000];
            _return pushBack ["cl3_e63_amg_white",600000];
            _return pushBack ["cl3_e63_amg_silver",600000];
			_return pushBack ["cl3_lamborghini_gt1_black",600000];
			_return pushBack ["cl3_lamborghini_gt1_yellow",600000];
			_return pushBack ["cl3_lamborghini_gt1_white",600000];
			_return pushBack ["cl3_458_red",600000];
			_return pushBack ["cl3_458_yellow",600000];
			_return pushBack ["cl3_458_flame",600000];
            _return pushBack ["cl3_murcielago_black",600000];
            _return pushBack ["cl3_murcielago_2tone3",600000];
            _return pushBack ["cl3_murcielago_2tone4",600000];
		};
	};
	
	case "donator_air":
	{

		if(__GETC__(life_donator) == 1) then
		{
			_return pushBack ["GNT_C185",800000];

		};
		if(__GETC__(life_donator) == 2) then
		{
			_return pushBack ["GNT_C185",800000];
			_return pushBack ["RAF_Merlin_HC3_FG",2400000];
		};
		if(__GETC__(life_donator) == 3) then
		{
			_return pushBack ["GNT_C185",800000];
			_return pushBack ["RAF_Merlin_HC3_FG",2400000];
			_return pushBack ["IVORY_CRJ200_1",4500000];
		};
	};
	
	case "cop_car":
	{
		if(__GETC__(life_coplevel) == 1) then
		{
			_return pushBack
			["C_Offroad_01_F",3000];
		};
		if(__GETC__(life_coplevel) == 2) then
		{
			_return pushBack
			["C_Offroad_01_F",3000];
			_return pushBack
			["DAR_CVPIPolice",6700];
		};
		if(__GETC__(life_coplevel) == 3) then
		{
			_return pushBack
			["C_Offroad_01_F",3000];
			_return pushBack
			["DAR_CVPIPolice",6700];
			_return pushBack
			["DAR_ImpalaPolice",10000];
			_return pushBack
			["cl3_q7_clpd_etu",25000];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_return pushBack
			["C_Offroad_01_F",3000];
			_return pushBack
			["DAR_CVPIPolice",6700];
			_return pushBack
			["DAR_ImpalaPolice",10000];
			_return pushBack
			["DAR_TahoePolice",15000];
			_return pushBack
			["cl3_q7_clpd_etu",25000];
			_return pushBack
			["DAR_TaurusPolice",10000];
			_return pushBack
			["DAR_SWATPolice",35000];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_return pushBack
			["C_Offroad_01_F",3000];
			_return pushBack
			["DAR_CVPIPolice",6700];
			_return pushBack
			["DAR_ImpalaPolice",10000];
			_return pushBack
			["DAR_TahoePolice",15000];
			_return pushBack
			["cl3_q7_clpd_etu",25000];
			_return pushBack
			["cl3_q7_clpd_patrol",35000];
			_return pushBack
			["DAR_TaurusPolice",10000];
			_return pushBack
			["DAR_SWATPolice",35000];
			_return pushBack
			["DAR_TahoePoliceDet",15000];
			_return pushBack
			["DAR_ExplorerPolice",20000];
			_return pushBack
			["B_MRAP_01_F",67000];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_return pushBack
			["C_Offroad_01_F",3000];
			_return pushBack
			["DAR_CVPIPolice",6700];
			_return pushBack
			["DAR_ImpalaPolice",10000];
			_return pushBack
			["DAR_TahoePolice",15000];
			_return pushBack
			["cl3_q7_clpd_etu",25000];
			_return pushBack
			["cl3_q7_clpd_patrol",35000];
			_return pushBack
			["DAR_TaurusPolice",10000];
			_return pushBack
			["DAR_SWATPolice",35000];
			_return pushBack
			["DAR_TahoePoliceDet",15000];
			_return pushBack
			["DAR_ExplorerPolice",20000];
			_return pushBack
			["B_MRAP_01_F",67000];
			_return pushBack
			["DAR_ExplorerPoliceStealth",20000];
			_return pushBack
			["cl3_dodge_charger_k9",50000];
			_return pushBack
			["HMMWV2",67000];
			_return pushBack
			["B_MRAP_01_hmg_F",150000];
		};
		if(__GETC__(life_coplevel) == 7) then
		{
			_return pushBack
			["C_Offroad_01_F",3000];
			_return pushBack
			["DAR_CVPIPolice",6700];
			_return pushBack
			["DAR_ImpalaPolice",10000];
			_return pushBack
			["DAR_TahoePolice",15000];
			_return pushBack
			["cl3_q7_clpd_etu",25000];
			_return pushBack
			["cl3_q7_clpd_patrol",35000];
			_return pushBack
			["DAR_TaurusPolice",10000];
			_return pushBack
			["DAR_SWATPolice",35000];
			_return pushBack
			["DAR_TahoePoliceDet",15000];
			_return pushBack
			["DAR_ExplorerPolice",20000];
			_return pushBack
			["B_MRAP_01_F",67000];
			_return pushBack
			["DAR_ExplorerPoliceStealth",20000];
			_return pushBack
			["cl3_dodge_charger_k9",50000];
			_return pushBack
			["HMMWV2",67000];
			_return pushBack
			["B_MRAP_01_hmg_F",150000];
			_return pushBack
			["DAR_DAR_02FirebirdSSVPolice",35000];
			_return pushBack
			["HMMWV2_M2",150000];
			_return pushBack
			["I_MRAP_03_F",67000];
		};
		if(__GETC__(life_coplevel) == 8) then
		{
			_return pushBack
			["C_Offroad_01_F",3000];
			_return pushBack
			["DAR_CVPIPolice",6700];
			_return pushBack
			["DAR_ImpalaPolice",10000];
			_return pushBack
			["DAR_TahoePolice",15000];
			_return pushBack
			["cl3_q7_clpd_etu",25000];
			_return pushBack
			["cl3_q7_clpd_patrol",35000];
			_return pushBack
			["DAR_TaurusPolice",10000];
			_return pushBack
			["DAR_SWATPolice",35000];
			_return pushBack
			["DAR_TahoePoliceDet",15000];
			_return pushBack
			["DAR_ExplorerPolice",20000];
			_return pushBack
			["B_MRAP_01_F",67000];
			_return pushBack
			["DAR_ExplorerPoliceStealth",20000];
			_return pushBack
			["cl3_dodge_charger_k9",50000];
			_return pushBack
			["HMMWV2",67000];
			_return pushBack
			["B_MRAP_01_hmg_F",150000];
			_return pushBack
			["DAR_DAR_02FirebirdSSVPolice",35000];
			_return pushBack
			["HMMWV2_M2",150000];
			_return pushBack
			["I_MRAP_03_F",67000];
			_return pushBack
			["DAR_ChargerPoliceState",50000];
			_return pushBack
			["cl3_reventon_clpd",80000];
			_return pushBack
			["HMMWV2_M2",150000];
			_return pushBack
			["HMMWV2_MK19",200000];
			_return pushBack
			["cl3_dodge_charger_patrol",50000];
			_return pushBack
			["CL3_bus_cl_jail",100000];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",450000],
			["O_Heli_Light_02_unarmed_F",800000],
			["Cha_Mi17_Civilian",1500000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) == 3) then
		{
			_return pushBack
			["B_Heli_Light_01_F",80000];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_return pushBack
			["B_Heli_Light_01_F",80000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",120000];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_return pushBack
			["B_Heli_Light_01_F",80000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",120000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",170000];
            _return pushBack
            ["B_Heli_Light_01_armed_F",500000];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_return pushBack
			["B_Heli_Light_01_F",80000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",120000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",170000];
			_return pushBack
			["B_Heli_Transport_01_F",300000];
            _return pushBack
            ["B_Heli_Light_01_armed_F",500000];
            _return pushBack
            ["O_Heli_Light_02_F",700000];
		};
		if(__GETC__(life_coplevel) == 7) then
		{
			_return pushBack
			["B_Heli_Light_01_F",80000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",120000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",170000];
			_return pushBack
			["B_Heli_Transport_01_F",300000];
			_return pushBack
			["Cha_Mi17_CDF",500000];
			_return pushBack
			["B_Heli_Attack_01_F",800000];
            _return pushBack
            ["B_Heli_Light_01_armed_F",500000];
            _return pushBack
            ["O_Heli_Light_02_F",700000];
		};
		if(__GETC__(life_coplevel) == 8) then
		{
			_return pushBack
			["B_Heli_Light_01_F",80000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",120000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",170000];
			_return pushBack
			["B_Heli_Transport_01_F",300000];
			_return pushBack
			["Cha_Mi17_CDF",500000];
			_return pushBack
			["B_Heli_Attack_01_F",800000];
            _return pushBack
            ["B_Heli_Light_01_armed_F",500000];
            _return pushBack
            ["O_Heli_Light_02_F",700000];
            
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) == 3) then
		{
			_return pushBack
			["B_Heli_Light_01_F",80000];
		};
		if(__GETC__(life_coplevel) == 4) then
		{
			_return pushBack
			["B_Heli_Light_01_F",80000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",120000];
		};
		if(__GETC__(life_coplevel) == 5) then
		{
			_return pushBack
			["B_Heli_Light_01_F",80000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",120000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",170000];
		};
		if(__GETC__(life_coplevel) == 6) then
		{
			_return pushBack
			["B_Heli_Light_01_F",80000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",120000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",170000];
			_return pushBack
			["B_Heli_Transport_01_F",300000];
		};
		if(__GETC__(life_coplevel) == 7) then
		{
			_return pushBack
			["B_Heli_Light_01_F",80000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",120000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",170000];
			_return pushBack
			["B_Heli_Transport_01_F",300000];
			_return pushBack
			["Cha_Mi17_CDF",500000];
			_return pushBack
			["B_Heli_Attack_01_F",800000];
		};
		if(__GETC__(life_coplevel) == 8) then
		{
			_return pushBack
			["B_Heli_Light_01_F",80000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",120000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",170000];
			_return pushBack
			["B_Heli_Transport_01_F",300000];
			_return pushBack
			["Cha_Mi17_CDF",500000];
			_return pushBack
			["B_Heli_Attack_01_F",800000];
			_return pushBack
			["O_Heli_Attack_02_black_F",1500000];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_Boat_Armed_01_minigun_F",75000],
			["B_SDV_01_F",100000]
		];
	};
};

_return;
