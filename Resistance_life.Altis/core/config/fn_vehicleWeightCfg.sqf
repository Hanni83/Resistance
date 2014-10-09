/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
    //Police
    case "B_MRAP_01_F": {65}; //Hunter
    case "B_MRAP_01_hmg_F": {40}; //Hunter Armé
    case "I_MRAP_03_F": {40}; //Strider
    case "HMMWV": {40};
	case "HMMWV_M2": {40};
	case "HMMWV_MK19": {40};
	case "HMMVW_TOW": {40};
	case "HMMWV2": {40};
	case "HMMWV2_M2": {40};
	case "HMMWV2_MK19": {40};
	case "HMMVW2_TOW": {40};
	case "HMMWV_M1151_M2": {40};
	case "M1114_AGS_ACR": {40};
	case "HMMWV_M1035": {40};
    case "DAR_ImpalaPolice": {40};
	case "DAR_CVPIAux": {40};
	case "DAR_TaurusPolice": {40};
	case "DAR_TahoePolice": {40};
	case "DAR_ExplorerPolice": {40};
	case "DAR_ChargerPolice": {40};
	case "ffaa_et_rg31_samson": {75};
	case "DAR_M1151": {75};
	case "DAR_M1151_Deploy": {75};
	case "DAR_M115_MK19": {75};
	case "DAR_M1167": {75};
	case "DAR_M1152": {75};
	case "DAR_M1165_GMV": {75};
	case "DAR_TahoePoliceSlick": {40};
	case "DAR_ChargerPoliceStateSlick": {40};
	case "DAR_DAR_02FirebirdSSVPolice": {40};
    case "DAR_CVPlPolice": {40};
	case "DAR_SWATPolice":{40};
	case "DAR_TahoePoliceDet": {40};
    case "DAR_ExplorerPoliceStealth": {40};
	case "cl3_dodge_charger_k9": {40};
    case "DAR_ChargerPoliceState": {40};
	case "cl3_reventon_clpd": {40};
    case "cl3_dodge_charger_patrol": {40};
	case "CL3_bus_cl_jail": {40};
    //EMS
    case "DAR_TahoeEMS": {75};
    //Rebelle
    case "B_G_Offroad_01_F": {70}; //Pick Up
    case "O_MRAP_02_F": {65}; //Ifrit
    case "BAF_Jackal2_L2A1_D": {65}; //Jackal Desert
    //Camion Rebelle
    case "I_G_Van_01_transport_F": {100}; //Camionette Rebelle
    case "O_Truck_03_transport_F": {450}; //Tempest
	case "O_Truck_03_covered_F": {750}; //Tempest
	case "O_Truck_03_device_F": {350}; //Tempest
    //Civil
    case "RDS_Lada_Civ_01": {25}; //Lada
    case "RDS_Lada_Civ_02": {25}; //Lada
    case "RDS_Lada_Civ_03": {25}; //Lada
    case "RDS_Lada_Civ_04": {25}; //Lada
    case "RDS_Lada_Civ_05": {25}; //Lada
    case "RDS_Gaz24_Civ_01": {40}; //GAZ
    case "RDS_Gaz24_Civ_02": {40}; //GAZ
    case "RDS_Gaz24_Civ_03": {40}; //GAZ
	case "RDS_Golf4_Civ_01": {50}; //Golf
    case "RDS_Octavia_Civ_01": {60}; //Skodia
    case "C_Offroad_01_F": {70}; //Pick Up
    case "C_SUV_01_F": {50}; //SUV
    case "DAR_ChallengerCivWhite": {75};
	case "DAR_ChallengerCivBlack": {75};
	case "DAR_ChallengerCivRed": {75};  //offroad
	case "DAR_ChallengerCivOrange": {75};
	case "DAR_Charger_Blue": {75};
	case "DAR_ChargerCiv": {75};
	case "DAR_FusionCiv": {75};
	case "DAR_FusionCivRed": {75};
	case "DAR_FusionCivBlack": {75};
	case "DAR_FusionCivBlue": {75};
	case "DAR_MF1Civ": {75};
	case "DAR_MF1Silver": {75};
	case "DAR_MF1Burgundy": {75};
	case "DAR_MF1Red": {75};
	case "DAR_MF1Orange": {75};
	case "DAR_TahoeCiv": {100};
	case "DAR_TahoeCivRed": {100};
	case "DAR_TahoeCivBlue": {100};
	case "DAR_TahoeCivSilver": {100};
	case "DAR_TahoeCivBlack": {100};
	case "DAR_TaurusCiv": {75};
	case "DAR_TaurusCivBlue": {75};
	case "DAR_TaurusCivBlack": {75};
	case "DAR_ImpalaCiv": {75};
	case "DAR_ImpalaCivA": {75};
	case "DAR_ImpalaCivB": {75};
	case "DAR_ImpalaCivC": {75};
	case "DAR_ImpalaCivD": {75};
	case "DAR_ImpalaCivE": {75};
	case "DAR_ImpalaCivF": {75};
	case "DAR_ImpalaCivG": {75};
	case "Jonzie_96_Impala": {75};
	case "Jonzie_96_Impala_Unmarked": {15};
	case "SAL_77TRANSAMCiv": {75};
	case "SAL_AudiCiv": {75};
	case "SAL_AudiCivSilver": {75};
	case "SAL_AudiCivBlack": {75};
	case "SAL_AudiCivRed": {75};
	case "SAL_IROCCiv": {75};
	case "SAL_IROCCivSilver": {75};
	case "SAL_IROCCivBlack": {75};
	case "SAL_IROCCivBlue": {75};
	case "SAL_IROCCivRed": {75};
    case "DAR_M3CivBlack": {75};
    case "cl3_defender_110_cammo": {100};
	case "cl3_range_rover_black": {100};
	case "cl3_range_rover_burgundy": {100};
	case "cl3_civic_vti_black": {50};
	case "cl3_civic_vti_dark_green": {50};
	case "cl3_golf_mk2_black": {50};
	case "cl3_golf_mk2_white": {50};
	case "cl3_insignia_black": {75};
	case "cl3_insignia_lime": {75};
	case "cl3_polo_gti_black": {50};
	case "cl3_polo_gti_violet": {50};
	case "cl3_suv_black": {100};
	case "RDS_Ikarus_Civ_01": {150};
	case "I_Heli_Transport_02_F": {200};
	case "GNT_C185": {50};
	case "cl3_dodge_chargerum_o_black": {75};
	case "cl3_dodge_chargerum_o_darkred": {75};
	case "cl3_e60_m5_dark_green": {75};
	case "cl3_e60_m5_black": {75};
	case "cl3_e60_m5_navy_blue": {75};
	case "cl3_z4_2008_black": {75};
	case "cl3_z4_2008_sand": {75};
	case "cl3_dbs_volante_black": {25};
	case "cl3_dbs_volante_orange": {25};
	case "cl3_e63_amg_white": {75};
	case "cl3_e63_amg_silver": {75};
	case "cl3_e63_amg_black": {75};
	case "cl3_r8_spyder_black": {25};
	case "cl3_r8_spyder_2tone1": {25};
    case "RAF_Merlin_HC3_FG": {220};
	case "GNT_C185F": {80};
	case "cl3_lamborghini_gt1_black": {25};
	case "cl3_lamborghini_gt1_yellow": {25};
	case "cl3_lamborghini_gt1_white": {25};
	case "cl3_carrera_gt_black": {25};
	case "cl3_carrera_gt_white": {25};
	case "cl3_carrera_gt_burgundy": {25};
	case "cl3_458_red": {25};
	case "cl3_458_black": {25};
	case "cl3_458_yellow": {25};
	case "cl3_458_flame": {25};
	case "cl3_reventon_black": {25};
	case "cl3_reventon_2tone2": {25};
	case "cl3_reventon_2tone5": {25};
	case "cl3_murcielago_black": {25};
	case "cl3_murcielago_2tone3": {25};
	case "cl3_murcielago_2tone4": {25};
	case "cl3_veyron_blk_wht": {25};
	case "cl3_veyron_brn_blk": {25};
    //Camion Civil
    case "C_Van_01_transport_F": {100}; //Camionette
    case "C_Van_01_box_F": {150}; //Camionette Box
	case "I_Truck_02_covered_F": {250}; //Zamak
	case "I_Truck_02_transport_F": {200}; //Zamak
    case "B_Truck_01_box_F": {750}; //HEMTT
	case "B_Truck_01_transport_F": {400}; //HEMTT
    case "DAR_MK23": {200};
	case "DAR_MK23A": {75};
	case "DAR_MK23AD": {75};
	case "DAR_MK23ADT": {75};
	case "DAR_MK27": {500};
	case "DAR_MK27T": {650};
	case "DAR_4x4": {150};
	case "DAR_LHS_8": {75};
	case "DAR_LHS_16": {75};
	//Hélicoptère
	case "B_Heli_Light_01_F": {40}; //Hummingbird
	case "O_Heli_Light_02_unarmed_F": {110};
	case "I_Heli_Transport_02_F": {375};
    //Autres
	case "C_Boat_Civil_01_F": {150};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "Land_CargoBox_V1_F": {5000}; //Container
	case "Box_IND_Grenades_F": {350};
	case "B_supplyCrate_F": {700};
	case "BAF_Offroad_D": {100};
	case "BAF_Offroad_W": {100};
	case "BAF_Jackal2_L2A1_W": {75};
	case "UAZ_Unarmed": {65};
	case "UAZ_MG": {65};
	case "UAZ_AGS30": {75};
	case "UAZ_SPG9": {75};
	case "Cha_Mi17_TK_EP1": {120};
	case "Cha_Mi17_Civilian": {180};
	case "I_Heli_light_03_unarmed_F": {40};
	case "B_Heli_Transport_01_F": {40};
	case "Cha_Mi17_CDF": {40};
	case "B_Heli_Attack_01_F": {40};
	case "UNARMED_CH_47F": {240};
	case "IVORY_CRJ200_1": {100};
	case "globemaster_c17_705": {700};
	case "O_Heli_Attack_02_black_F": {50};
	case "cl3_q7_clpd_cn": {50};
	case "cl3_q7_black": {100};
	case "cl3_transit_black": {150};
	case "cl3_transit_camo": {150};
	case "cl3_q7_clpd_etu": {40};
	case "cl3_q7_clpd_patrol": {40};
    case "A3L_Dumptruck": {900};
    case "MMT_Civ": {5};
    case "A3L_PuntoBlack": {40};
    case "Jonzie_Viper": {55};
    case "B_Heli_Light_01_armed_F": {40};
    case "O_Heli_Light_02_F": {40};
	default {-1};
};
