/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "heroinu": {6};
	case "heroinp": {4};
	case "cannabis": {3};
	case "marijuana": {2};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {5};
	case "copper_r": {3};
	case "iron_r": {4};
	case "diamond": {4};
	case "diamondc": {2};
	case "cocaine": {6};
	case "cocainep": {4};
	case "spikeStrip": {15};
	case "barricade": {5};
	case "barrier": {2};
	case "cone": {1};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "raisin": {4};
	case "jusraisin": {3};
	case "vin": {2};
	case "champagne": {2};
	case "figue": {1};
	case "bois": {2};
	case "charbon": {1};
	case "olive": {2};
	case "huileolive": {1};
	case "argile": {2};
	case "poterie": {1};
	case "tabac": {3};
	case "cigarette": {2};
	case "cigare": {2};
	case "acier": {3};
	case "acierino": {3};
	case "houblon": {2};
	case "orge": {2};
	case "biere": {4};
	case "esturgeon": {2};
	case "caviar": {1};
	case "rubis": {4};
	case "rubistaille": {2};
	case "or": {6};
	case "barreor": {4};
	case "or_ag": {4};
	case "peyotl": {4};
	case "mescaline": {2};
	case "sassafras": {4};
	case "mdma": {2};
	case "morphine": {1};
	case "speed": {3};
	case "speedball": {2};
	default {1};
};
