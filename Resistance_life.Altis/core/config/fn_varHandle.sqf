/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "cannabis": {"life_inv_cannabis"};
			case "marijuana": {"life_inv_marijuana"};
			case "water": {"life_inv_water"};
			case "rabbit": {"life_inv_rabbit"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"life_cash"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "iron_r": {"life_inv_ironr"};
			case "copper_r": {"life_inv_copperr"};
			case "tbacon": {"life_inv_tbacon"};
			case "lockpick": {"life_inv_lockpick"};
			case "redgull": {"life_inv_redgull"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "cocaine": {"life_inv_coke"};
			case "cocainep": {"life_inv_cokep"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "barricade": {"life_inv_barricade"};
			case "barrier": {"life_inv_barrier"};
			case "cone": {"life_inv_cone"};
			case "goldbar": {"life_inv_goldbar"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};
			case "storagesmall": {"life_inv_storagesmall"};
			case "storagebig": {"life_inv_storagebig"};
			case "raisin": {"life_inv_raisin"};
			case "jusraisin": {"life_inv_jusraisin"};
			case "vin": {"life_inv_vin"};
			case "champagne": {"life_inv_champagne"};
			case "figue": {"life_inv_figue"};
			case "bois": {"life_inv_bois"};
			case "charbon": {"life_inv_charbon"};
			case "olive": {"life_inv_olive"};
			case "huileolive": {"life_inv_huileolive"};
			case "argile": {"life_inv_argile"};
			case "poterie": {"life_inv_poterie"};
			case "tabac": {"life_inv_tabac"};
			case "cigarette": {"life_inv_cigarette"};
			case "cigare": {"life_inv_cigare"};
			case "acier": {"life_inv_acier"};
			case "acierino": {"life_inv_acierino"};
			case "houblon": {"life_inv_houblon"};
			case "orge": {"life_inv_orge"};
			case "biere": {"life_inv_biere"};
			case "esturgeon": {"life_inv_esturgeon"};
			case "caviar": {"life_inv_caviar"};
			case "rubis": {"life_inv_rubis"};
			case "rubistaille": {"life_inv_rubistaille"};
			case "or": {"life_inv_or"};
			case "barreor": {"life_inv_barreor"};
			case "or_ag": {"life_inv_or_ag"};
			case "peyotl": {"life_inv_peyotl"};
			case "mescaline": {"life_inv_mescaline"};
			case "sassafras": {"life_inv_sassafras"};
			case "mdma": {"life_inv_mdma"};
			case "morphine": {"life_inv_morphine"};
			case "speed": {"life_inv_speed"};
			case "speedball": {"life_inv_speedball"};
		};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_water": {"water"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_cash": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_copperr": {"copper_r"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_peach": {"peach"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_barricade": {"barricade"};
			case "life_inv_barrier": {"barrier"};
			case "life_inv_cone": {"cone"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_storagesmall": {"storagesmall"};
			case "life_inv_storagebig": {"storagebig"};
			case "life_inv_raisin": {"raisin"};
			case "life_inv_jusraisin": {"jusraisin"};
			case "life_inv_vin": {"vin"};
			case "life_inv_champagne": {"champagne"};
			case "life_inv_figue": {"figue"};
			case "life_inv_bois": {"bois"};
			case "life_inv_charbon": {"charbon"};
			case "life_inv_olive": {"olive"};
			case "life_inv_huileolive": {"huileolive"};
			case "life_inv_argile": {"argile"};
			case "life_inv_poterie": {"poterie"};
			case "life_inv_tabac": {"tabac"};
			case "life_inv_cigarette": {"cigarette"};
			case "life_inv_cigare": {"cigare"};
			case "life_inv_acier": {"acier"};
			case "life_inv_acierino": {"acierino"};
			case "life_inv_houblon": {"houblon"};
			case "life_inv_orge": {"orge"};
			case "life_inv_biere": {"biere"};
			case "life_inv_esturgeon": {"esturgeon"};
			case "life_inv_caviar": {"caviar"};
			case "life_inv_rubis": {"rubis"};
			case "life_inv_rubistaille": {"rubistaille"};
			case "life_inv_or": {"or"};
			case "life_inv_barreor": {"barreor"};
			case "life_inv_or_ag": {"or_ag"};
			case "life_inv_peyotl": {"peyotl"};
			case "life_inv_mescaline": {"mescaline"};
			case "life_inv_sassafras": {"sassafras"};
			case "life_inv_mdma": {"mdma"};
			case "life_inv_morphine": {"morphine"};
			case "life_inv_speed": {"speed"};
			case "life_inv_speedball": {"speedball"};
		};
	};
};
