/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_heroinu": {(localize "STR_Item_HeroinU")};
	case "life_inv_heroinp": {(localize "STR_Item_HeroinP")};
	case "life_inv_cannabis": {(localize "STR_Item_Cannabis")};
	case "life_inv_marijuana": {(localize "STR_Item_Marijuana")};
	case "life_inv_rabbit": {(localize "STR_Item_RabbitMeat")};
	case "life_inv_salema": {(localize "STR_Item_SalemaMeat")};
	case "life_inv_ornate": {(localize "STR_Item_OrnateMeat")};
	case "life_inv_mackerel": {(localize "STR_Item_MackerelMeat")};
	case "life_inv_tuna": {(localize "STR_Item_TunaMeat")};
	case "life_inv_mullet": {(localize "STR_Item_MulletMeat")};
	case "life_inv_catshark": {(localize "STR_Item_CatSharkMeat")};
	case "life_inv_turtle": {(localize "STR_Item_TurtleMeat")};
	case "life_inv_fishingpoles": {(localize "STR_Item_FishingPole")};
	case "life_inv_water": {(localize "STR_Item_WaterBottle")};
	case "life_inv_coffee": {(localize "STR_Item_Coffee")};
	case "life_inv_turtlesoup": {(localize "STR_Item_TurtleSoup")};
	case "life_inv_donuts": {(localize "STR_Item_Donuts")};
	case "life_inv_fuelE": {(localize "STR_Item_FuelE")};
	case "life_inv_fuelF": {(localize "STR_Item_FuelF")};
	case "life_inv_pickaxe": {(localize "STR_Item_Pickaxe")};
	case "life_inv_copperore": {(localize "STR_Item_CopperOre")};
	case "life_inv_ironore": {(localize "STR_Item_IronOre")};
	case "life_inv_ironr": {(localize "STR_Item_IronIngot")};
	case "life_inv_copperr": {(localize "STR_Item_CopperIngot")};
	case "life_inv_diamond": {(localize "STR_Item_DiamondU")};
	case "life_inv_diamondr": {(localize "STR_Item_DiamondC")};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_redgull": {(localize "STR_Item_RedGull")};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_coke": {(localize "STR_Item_CocaineU")};
	case "life_inv_cokep": {(localize "STR_Item_CocaineP")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_barricade": {"Barricade"};
	case "life_inv_barrier": {"Barriere"};
	case "life_inv_cone": {"Cône de Sécurité"};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_blastingcharge": {(localize "STR_Item_BCharge")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {(localize "STR_Item_StorageBS")};
	case "life_inv_storagebig": {(localize "STR_Item_StorageBL")};
	case "life_inv_raisin": {(localize "STR_Item_Raisin")};
	case "life_inv_jusraisin": {(localize "STR_Item_JusRaisin")};
	case "life_inv_vin": {(localize "STR_Item_Vin")};
	case "life_inv_champagne": {(localize "STR_Item_Champagne")};
	case "life_inv_figue": {(localize "STR_Item_Figue")};
	case "life_inv_bois": {(localize "STR_Item_Bois")};
	case "life_inv_charbon": {(localize "STR_Item_Charbon")};
	case "life_inv_olive": {(localize "STR_Item_Olive")};
	case "life_inv_huileolive": {(localize "STR_Item_HuileOlive")};
	case "life_inv_argile": {(localize "STR_Item_Argile")};
	case "life_inv_poterie": {(localize "STR_Item_Poterie")};
	case "life_inv_tabac": {(localize "STR_Item_Tabac")};
	case "life_inv_cigarette": {(localize "STR_Item_Cigarette")};
	case "life_inv_cigare": {(localize "STR_Item_Cigare")};
	case "life_inv_acier": {(localize "STR_Item_Acier")};
	case "life_inv_acierino": {(localize "STR_Item_AcierIno")};
	case "life_inv_houblon": {(localize "STR_Item_Houblon")};
	case "life_inv_orge": {(localize "STR_Item_Orge")};
	case "life_inv_biere": {(localize "STR_Item_Biere")};
	case "life_inv_esturgeon": {(localize "STR_Item_Esturgeon")};
	case "life_inv_caviar": {(localize "STR_Item_Caviar")};
	case "life_inv_rubis": {(localize "STR_Item_Rubis")};
	case "life_inv_rubistaille": {(localize "STR_Item_RubisTaille")};
	case "life_inv_or": {(localize "STR_Item_Or")};
	case "life_inv_barreor": {(localize "STR_Item_BarreOr")};
	case "life_inv_or_ag": {"Lingot d'or A.G."};
	case "life_inv_peyotl": {(localize "STR_Item_Peyotl")};
	case "life_inv_mescaline": {(localize "STR_Item_Mescaline")};
	case "life_inv_sassafras": {(localize "STR_Item_Sassafras")};
	case "life_inv_mdma": {(localize "STR_Item_MDMA")};
	case "life_inv_morphine": {(localize "STR_Item_Morphine")};
	case "life_inv_speed": {(localize "STR_Item_Speed")};
	case "life_inv_speedball": {(localize "STR_Item_Speedball")};
	case "life_inv_fencecutters": {"Pince Coupante"};
    case "life_inv_gpstracker": {"Mouchard"};
	
	//License Block
	case "license_civ_driver": {(localize "STR_License_Driver")};
	case "license_civ_air": {(localize "STR_License_Pilot")};
	case "license_civ_heroin": {(localize "STR_License_Heroin")};
	case "license_civ_dive": {(localize "STR_License_Diving")};
	case "license_civ_boat": {(localize "STR_License_Boat")};
	case "license_civ_gun": {(localize "STR_License_Firearm")};
	case "license_cop_air": {(localize "STR_License_Pilot")};
	case "license_cop_swat": {(localize "STR_License_Swat")};
	case "license_cop_cg": {(localize "STR_License_CG")};
	case "license_civ_rebel": {(localize "STR_License_Rebel")};
	case "license_civ_truck": {(localize "STR_License_Truck")};
	case "license_civ_diamond": {(localize "STR_License_Diamond")};
	case "license_civ_copper": {(localize "STR_License_Copper")};
	case "license_civ_iron": {(localize "STR_License_Iron")};
	case "license_civ_coke": {(localize "STR_License_Cocaine")};
	case "license_civ_marijuana": {(localize "STR_License_Marijuana")};
	case "license_med_air": {(localize "STR_License_Pilot")};
	case "license_civ_home": {(localize "STR_License_Home")};
	case "license_civ_jusraisin": {(localize "STR_License_JusRaisin")};
	case "license_civ_poterie": {(localize "STR_License_Poterie")};
	case "license_civ_huileolive": {(localize "STR_License_HuileOlive")};
	case "license_civ_cigarette": {(localize "STR_License_Cigarette")};
	case "license_civ_biere": {(localize "STR_License_Biere")};
	case "license_civ_vin": {(localize "STR_License_Vin")};
	case "license_civ_cigare": {(localize "STR_License_Cigare")};
	case "license_civ_champagne": {(localize "STR_License_Champagne")};
	case "license_civ_caviar": {(localize "STR_License_Caviar")};
	case "license_civ_rubistaille": {(localize "STR_License_RubisTaille")};
	case "license_civ_barreor": {(localize "STR_License_BarreOr")};
	case "license_civ_or_ag": {"Licence Altis Gold"};
	case "license_civ_mescaline": {(localize "STR_License_Mescaline")};
	case "license_civ_mdma": {(localize "STR_License_MDMA")};
	case "license_civ_charbon": {(localize "STR_License_Charbon")};
	case "license_civ_speed": {(localize "STR_License_Speed")};
	case "license_civ_speedball": {(localize "STR_License_SpeedBall")};
	case "license_civ_acier": {(localize "STR_License_Acier")};
	case "license_civ_acierino": {(localize "STR_License_AcierIno")};
	case "license_civ_transaltis": {"Licence TransAltis"};
    case "license_civ_don": {"Donateur"};
    case "license_civ_merc": {"Mercenaire"};
    case "license_civ_cantailla": {"Famille Cantailla"};
};
