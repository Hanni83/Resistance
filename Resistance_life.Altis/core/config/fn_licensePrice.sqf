/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {500}; //Drivers License cost
	case "boat": {5000}; //Boating license cost
	case "pilot": {50000}; //Pilot/air license cost
	case "gun": {30000}; //Firearm/gun license cost
	case "dive": {5000}; //Diving license cost
	case "cair": {35000}; //Cop Pilot License cost
	case "swat": {350000}; //Swat License cost
	case "cg": {80000}; //Coast guard license cost
	case "heroin": {350000}; //Heroin processing license cost
	case "marijuana": {270000}; //Marijuana processing license cost
	case "gang": {150000}; //Gang license cost
	case "rebel": {1250000}; //Rebel license cost
	case "truck": {45000}; //Truck license cost
	case "diamond": {70000};
	case "cocaine": {375000};
	case "iron": {15000};
	case "copper": {10000};
	case "mair": {15000};
	case "home": {75000};
	case "jusraisin": {3500};
	case "poterie": {5000};
	case "huileolive": {7500};
	case "cigarette": {55000};
	case "biere": {45000};
	case "vin": {40000};
	case "cigare": {85000};
	case "champagne": {50000};
	case "caviar": {55000};
	case "rubistaille": {60000};
	case "barreor": {65000};
	case "or_ag": {10000};
	case "mescaline": {375000};
	case "mdma": {290000};
	case "charbon": {1500};
	case "speed": {150000};
	case "speedball": {150000};
	case "acier": {10000};
	case "acierino": {10000};
	case "transaltis": {10000};
    case "don": {10000};
    case "merc": {10000};
    case "cant": {10000};
};