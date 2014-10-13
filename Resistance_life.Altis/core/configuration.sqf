#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_fatigue = 0.5;
life_spikestrip = ObjNull;
life_cone = ObjNull;
life_barrier = ObjNull;
life_barricade = ObjNull;
life_smartphoneTarget = ObjNull;
life_respawn_timer = 1; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gather = false;
life_action_gathering = false;
life_drink = 0;
life_channel_send = true;
life_god = false; //Add this
life_frozen = false; //And this
life_markers = false; //Finally this

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for civs and cops? (Medics excluded for now)

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,3500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,75000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,1500);
__CONST__(life_impound_boat,2100);
__CONST__(life_impound_air,4000);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 15000; //Starting Bank Money
		life_paycheck = 3500; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 10000; //Starting Bank Money
		life_paycheck = 1500; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 10000;
		life_paycheck = 3500;
	};
};

/*
	Master Array of items?
*/
//life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
//__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_barricade",
	"life_inv_barrier",
	"life_inv_cone",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_raisin",
	"life_inv_jusraisin",
	"life_inv_vin",
	"life_inv_champagne",
	"life_inv_figue",
	"life_inv_bois",
	"life_inv_charbon",
	"life_inv_olive",
	"life_inv_huileolive",
	"life_inv_argile",
	"life_inv_poterie",
	"life_inv_tabac",
	"life_inv_cigarette",
	"life_inv_cigare",
	"life_inv_acier",
	"life_inv_acierino",
	"life_inv_houblon",
	"life_inv_orge",
	"life_inv_biere",
	"life_inv_esturgeon",
	"life_inv_caviar",
	"life_inv_rubis",
	"life_inv_rubistaille",
	"life_inv_or",
	"life_inv_barreor",
	"life_inv_or_ag",
	"life_inv_peyotl",
	"life_inv_mescaline",
	"life_inv_sassafras",
	"life_inv_mdma",
	"life_inv_morphine",
	"life_inv_speed",
	"life_inv_speedball",
	"life_inv_fencecutters",
    "life_inv_gpstracker"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_med_air","med"],
	["license_civ_home","civ"],
	["license_civ_jusraisin","civ"],
	["license_civ_poterie","civ"],
	["license_civ_huileolive","civ"],
	["license_civ_cigarette","civ"],
	["license_civ_biere","civ"],
	["license_civ_vin","civ"],
	["license_civ_cigare","civ"],
	["license_civ_champagne","civ"],
	["license_civ_caviar","civ"],
	["license_civ_rubistaille","civ"],
	["license_civ_barreor","civ"],
	["license_civ_or_ag","civ"],
	["license_civ_mescaline","civ"],
	["license_civ_mdma","civ"],
	["license_civ_charbon","civ"],
	["license_civ_speed","civ"],
	["license_civ_speedball","civ"],
	["license_civ_acier","civ"],
	["license_civ_acierino","civ"],
	["license_civ_transaltis","civ"],
    ["license_civ_don","civ"],
    ["license_civ_merc","civ"],
    ["license_civ_cantailla","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",5000],["blastingcharge",10000],["boltcutter",500],["mescaline",4000],["peyotl",1500],["mdma",4500],["speed",5000],["speedball",7000],["morphine",750]];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["heroinu",1850],
	["heroinp",4600],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",700],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["turtle",17000],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",60],
	["marijuana",2000],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["cocaine",3000],
	["cocainep",5000],
	["diamondc",2100],
	["iron_r",1800],
	["copper_r",1400],
	["fuelF",500],
	["spikeStrip",1200],
	["barrier",250],
	["barricade",250],
	["cone",25],
	["goldbar",75000],
	["raisin",180],
	["jusraisin",500],
	["vin",1400],
	["champagne",3200],
	["figue",60],
	["olive",200],
	["huileolive",650],
	["poterie",950],
	["caviar",3100],
	["cigarette",1300],
	["cigare",1800],
	["acier",2700],
	["acierino",7500],
	["rubistaille",1800],
	["barreor",2800],
	["or_ag",3000],
	["mescaline",2400],
	["mdma",3000],
	["speedball",24000],
	["biere",2100],
	["charbon",100],
	["fence_cut",2],
    ["gpstracker",1000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",900],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",24000],
	["turtlesoup",2500],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",1500],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["spikeStrip",2500],
	["barrier",400],
	["barricade",500],
	["cone",250],
	["blastingcharge",55000],
	["boltcutter",75000],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],
	["figue",70],
	["morphine",250],
	["fence_cut",20000],
    ["gpstracker",5000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["RDS_Lada_Civ_01",300],
    ["RDS_Lada_Civ_02",300],
    ["RDS_Lada_Civ_03",300],
    ["RDS_Lada_Civ_04",300],
    ["RDS_Lada_Civ_05",300],
	["RDS_Gaz24_Civ_03",600],
    ["RDS_Gaz24_Civ_02",600],
    ["RDS_Gaz24_Civ_03",600],
	["C_Offroad_01_F",900],
	["RDS_Golf4_Civ_01",1200],
    ["RDS_Octavia_Civ_01",1400],
	["C_SUV_01_F",1200],
	["C_Van_01_transport_F",1400],
	["DAR_ImpalaCiv",1400],
	["DAR_ImpalaCivA",1400],
	["DAR_ImpalaCivC",1400],
	["DAR_ImpalaCivD",1400],
	["DAR_FusionCiv",1400],
	["DAR_FusionCivBlack",1400],
	["DAR_TaurusCiv",1600],
	["DAR_TaurusCivBlack",1600],
	["DAR_TahoeCiv",2500],
	["DAR_TahoeCivRed",2500],
	["DAR_TahoeCivSilver",2500],
	["DAR_TahoeCivBlack",2500],
	["SAL_IROCCiv",2100],
	["SAL_IROCCivBlack",2100],
	["Jonzie_96_Impala",2100],
	["BAF_Offroad_D",4200],
	["DAR_ChallengerCivWhite",4200],
	["DAR_ChallengerCivBlack",4200],
	["DAR_ChallengerCivOrange",4200],
	["SAL_AudiCiv",4200],
	["SAL_AudiCivBlack",4200],
	["SAL_AudiCivRed",4200],
	["DAR_ChargerCiv",4200],
	["DAR_M3CivBlack",2800],
	["C_Van_01_box_F",2000],
	["DAR_4x4",2000],
	["I_Truck_02_transport_F",5000],
	["I_Truck_02_covered_F",7000],
	["DAR_MK23",2500],
	["B_Truck_01_transport_F",9000],
	["DAR_MK27",5000],
	["B_Truck_01_box_F",12000],
	["DAR_MK27T",9000],
	["B-G_Offroad_01_F",1000],
	["UAZ_Unarmed",1200],
	["UAZ_MG",20000],
	["Jackal2_L2A1_Desert",35000],
	["0_MRAP_02F",7000],
	["B_Heli_Light_01_F",25000],
	["Cha_Mi17_TK_EP1",60000],
	["0_Truck_03_transport_F",5000],
	["0_Truck_03_covered_F",9000],
	["demian2435_police_offroad",500],
	["DAR_CVPlPolice",1000],
	["DAR_ImpalaPolice",1000],
	["DAR_TahoePolice",2000],
	["DAR_TaurusPolice",1000],
	["DAR_SWATPolice",5000],
	["DAR_TahoePoliceDet",2000],
	["DAR_ExplorerPolice",3000],
	["demian2435_police_car",7500],
	["DAR_ExplorerPoliceStealth",3000],
	["cl3_dodge_charger_k9",3000],
	["HMMWV2",7500],
	["B_MRAP_01_hmg_F",15000],
	["DAR_DAR_02FirebirdSSVPolice",3500],
	["HMMWV2_M2",15000],
	["I_MRAP_03_F",6700],
	["DAR_ChargerPoliceState",5000],
	["cl3_reventon_clpd",8000],
	["HMMWV2_M2",15000],
	["HMMWV2_MK19",20000],
	["O_Heli_Light_02_unarmed_F",30000],
	["Cha_Mi17_Civilian",35000],
	["cl3_dodge_charger_patrol",5000],
	["CL3_bus_cl_jail",15000],
	["cl3_defender_110_cammo",15000],
	["cl3_range_rover_black",6000],
	["cl3_range_rover_burgundy",6000],
	["cl3_civic_vti_black",1500],
	["cl3_civic_vti_dark_green",1500],
	["cl3_golf_mk2_black",1500],
	["cl3_golf_mk2_white",1500],
	["cl3_insignia_black",1500],
	["cl3_insignia_lime",1500],
	["cl3_polo_gti_black",1500],
	["cl3_polo_gti_violet",1500],
	["cl3_suv_black",6000],
	["RDS_Ikarus_Civ_01",24000],
	["I_Heli_Transport_02_F",60000],
	["GNT_C185",24000],
	["cl3_dodge_chargerum_o_black",6000],
	["cl3_dodge_chargerum_o_darkred",6000],
	["cl3_e60_m5_dark_green",6000],
	["cl3_e60_m5_black",6000],
	["cl3_e60_m5_navy_blue",6000],
	["cl3_z4_2008_black",6000],
	["cl3_z4_2008_sand",6000],
	["cl3_dbs_volante_black",18000],
	["cl3_dbs_volante_orange",18000],
	["cl3_e63_amg_white",6000],
	["cl3_e63_amg_silver",6000],
	["cl3_e63_amg_black",6000],
	["cl3_r8_spyder_black",18000],
	["cl3_r8_spyder_2tone1",18000],
	["RAF_Merlin_HC3_FG",72000],
	["GNT_C185F",48000],
	["cl3_lamborghini_gt1_black",18000],
	["cl3_lamborghini_gt1_yellow",18000],
	["cl3_lamborghini_gt1_white",18000],
	["cl3_carrera_gt_black",18000],
	["cl3_carrera_gt_white",18000],
	["cl3_carrera_gt_burgundy",18000],
	["cl3_458_red",18000],
	["cl3_458_black",18000],
	["cl3_458_yellow",18000],
	["cl3_458_flame",18000],
	["cl3_reventon_black",18000],
	["cl3_reventon_2tone2",18000],
	["cl3_reventon_2tone5",18000],
	["cl3_murcielago_black",18000],
	["cl3_murcielago_2tone3",18000],
	["cl3_murcielago_2tone4",18000],
	["cl3_veyron_blk_wht",18000],
	["cl3_veyron_brn_blk",18000],
	["UNARMED_CH_47F",120000],
	["IVORY_CRJ200_1",120000],
	["O_Heli_Attack_02_black_F",250000],
	["globemaster_c17_705",150000],
	["cl3_q7_clpd_cn",7500],
	["cl3_q7_black",7500],
	["cl3_transit_black",10000],
	["cl3_transit_camo",10000],
	["cl3_q7_clpd_etu",7500],
	["cl3_q7_clpd_patrol",7500],
    ["O_Heli_Light_02_F",70000],
    ["B_Heli_Light_01_armed_F",50000],
    ["MMT_Civ",500],
    ["Jonzie_Viper",35000],
    ["A3L_Dumptruck",15000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["RDS_Lada_Civ_01",300],
    ["RDS_Lada_Civ_02",300],
    ["RDS_Lada_Civ_03",300],
    ["RDS_Lada_Civ_04",300],
    ["RDS_Lada_Civ_05",300],
	["RDS_Gaz24_Civ_03",600],
    ["RDS_Gaz24_Civ_02",600],
    ["RDS_Gaz24_Civ_03",600],
	["C_Offroad_01_F",900],
	["RDS_Golf4_Civ_01",1200],
    ["RDS_Octavia_Civ_01",1400],
	["C_SUV_01_F",1200],
	["C_Van_01_transport_F",1400],
	["DAR_ImpalaCiv",1400],
	["DAR_ImpalaCivA",1400],
	["DAR_ImpalaCivC",1400],
	["DAR_ImpalaCivD",1400],
	["DAR_FusionCiv",1400],
	["DAR_FusionCivBlack",1400],
	["DAR_TaurusCiv",1600],
	["DAR_TaurusCivBlack",1600],
	["DAR_TahoeCiv",2500],
	["DAR_TahoeCivRed",2500],
	["DAR_TahoeCivSilver",2500],
	["DAR_TahoeCivBlack",2500],
	["SAL_IROCCiv",2100],
	["SAL_IROCCivBlack",2100],
	["Jonzie_96_Impala",2100],
	["BAF_Offroad_D",4200],
	["DAR_ChallengerCivWhite",4200],
	["DAR_ChallengerCivBlack",4200],
	["DAR_ChallengerCivOrange",4200],
	["SAL_AudiCiv",4200],
	["SAL_AudiCivBlack",4200],
	["SAL_AudiCivRed",4200],
	["DAR_ChargerCiv",4200],
	["DAR_M3CivBlack",2800],
	["C_Van_01_box_F",2000],
	["DAR_4x4",2000],
	["I_Truck_02_transport_F",5000],
	["I_Truck_02_covered_F",7000],
	["DAR_MK23",2500],
	["B_Truck_01_transport_F",9000],
	["DAR_MK27",5000],
	["B_Truck_01_box_F",12000],
	["DAR_MK27T",9000],
	["B-G_Offroad_01_F",1000],
	["UAZ_Unarmed",1200],
	["UAZ_MG",20000],
	["Jackal2_L2A1_Desert",35000],
	["0_MRAP_02F",7000],
	["B_Heli_Light_01_F",25000],
	["Cha_Mi17_TK_EP1",60000],
	["0_Truck_03_transport_F",5000],
	["0_Truck_03_covered_F",9000],
	["demian2435_police_offroad",500],
	["DAR_CVPlPolice",1000],
	["DAR_ImpalaPolice",1000],
	["DAR_TahoePolice",2000],
	["DAR_TaurusPoliceState",1000],
	["DAR_SWATPolice",5000],
	["DAR_TahoePoliceDet",2000],
	["DAR_ExplorerPolice",3000],
	["demian2435_police_car",7500],
	["DAR_ExplorerPoliceStealth",3000],
	["cl3_dodge_charger_k9",3000],
	["HMMWV2",7500],
	["B_MRAP_01_hmg_F",15000],
	["DAR_DAR_02FirebirdSSVPolice",3500],
	["HMMWV2_M2",15000],
	["I_MRAP_03_F",6700],
	["DAR_ChargerPoliceState",5000],
	["cl3_reventon_clpd",8000],
	["HMMWV2_M2",15000],
	["HMMWV2_MK19",20000],
	["O_Heli_Light_02_unarmed_F",30000],
	["Cha_Mi17_Civilian",35000],
	["cl3_dodge_charger_patrol",15000],
	["CL3_bus_cl_jail",55000],
	["cl3_defender_110_cammo",15000],
	["cl3_range_rover_black",60000],
	["cl3_range_rover_burgundy",60000],
	["cl3_civic_vti_black",15000],
	["cl3_civic_vti_dark_green",15000],
	["cl3_golf_mk2_black",15000],
	["cl3_golf_mk2_white",15000],
	["cl3_insignia_black",15000],
	["cl3_insignia_lime",15000],
	["cl3_polo_gti_black",15000],
	["cl3_polo_gti_violet",15000],
	["cl3_suv_black",60000],
	["RDS_Ikarus_Civ_01",240000],
	["I_Heli_Transport_02_F",600000],
	["GNT_C185",240000],
	["cl3_dodge_chargerum_o_black",60000],
	["cl3_dodge_chargerum_o_darkred",60000],
	["cl3_e60_m5_dark_green",60000],
	["cl3_e60_m5_black",60000],
	["cl3_e60_m5_navy_blue",60000],
	["cl3_z4_2008_black",60000],
	["cl3_z4_2008_sand",60000],
	["cl3_dbs_volante_black",180000],
	["cl3_dbs_volante_orange",180000],
	["cl3_e63_amg_white",60000],
	["cl3_e63_amg_black",60000],
	["cl3_e63_amg_silver",60000],
	["cl3_r8_spyder_black",180000],
	["cl3_r8_spyder_2tone1",180000],
	["RAF_Merlin_HC3_FG",720000],
	["GNT_C185F",480000],
	["cl3_lamborghini_gt1_black",180000],
	["cl3_lamborghini_gt1_yellow",180000],
	["cl3_lamborghini_gt1_white",180000],
	["cl3_carrera_gt_black",180000],
	["cl3_carrera_gt_white",180000],
	["cl3_carrera_gt_burgundy",180000],
	["cl3_458_red",180000],
	["cl3_458_red",180000],
	["cl3_458_yellow",180000],
	["cl3_458_flame",180000],
	["cl3_reventon_black",180000],
	["cl3_reventon_2tone2",180000],
	["cl3_reventon_2tone5",180000],
	["cl3_murcielago_black",180000],
	["cl3_murcielago_2tone3",180000],
	["cl3_murcielago_2tone4",180000],
	["cl3_veyron_blk_wht",180000],
	["cl3_veyron_brn_blk",180000],
	["UNARMED_CH_47F",1200000],
	["IVORY_CRJ200_1",1200000],
	["O_Heli_Attack_02_black_F",750000],
	["globemaster_c17_705",750000],
	["cl3_q7_clpd_cn",7500],
	["cl3_q7_black",75000],
	["cl3_transit_black",55000],
	["cl3_transit_camo",55000],
	["cl3_q7_clpd_etu",15000],
	["cl3_q7_clpd_patrol",25000],
    ["O_Heli_Light_02_F",70000],
    ["B_Heli_Light_01_armed_F",50000],
    ["MMT_Civ",500],
    ["Jonzie_Viper",35000],
    ["A3L_Dumptruck",15000]
];
__CONST__(life_garage_sell,life_garage_sell);
