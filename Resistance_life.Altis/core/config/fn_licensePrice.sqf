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
	case "heroin": {150000}; //Heroin processing license cost
	case "marijuana": {120000}; //Marijuana processing license cost
	case "gang": {100000}; //Gang license cost
	case "rebel": {750000}; //Rebel license cost
	case "truck": {25000}; //Truck license cost
	case "diamond": {70000};
	case "cocaine": {175000};
	case "iron": {15000};
	case "copper": {10000};
	case "mair": {15000};
	case "home": {75000};
	case "jusraisin": {3500};
	case "poterie": {5000};
	case "huileolive": {7500};
	case "cigarette": {35000};
	case "biere": {30000};
	case "vin": {40000};
	case "cigare": {75000};
	case "champagne": {50000};
	case "caviar": {55000};
	case "rubistaille": {60000};
	case "barreor": {65000};
	case "or_ag": {10000};
	case "mescaline": {175000};
	case "mdma": {90000};
	case "charbon": {1500};
	case "speed": {45000};
	case "speedball": {45000};
	case "acier": {10000};
	case "acierino": {10000};
	case "transaltis": {10000};
};