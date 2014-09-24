/*
	File: fn_licenseType.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			case "driver": {_var = "license_civ_driver"}; //Drivers License cost
			case "boat": {_var = "license_civ_boat"}; //Boating license cost
			case "pilot": {_var = "license_civ_air"}; //Pilot/air license cost
			case "gun": {_var = "license_civ_gun"}; //Firearm/gun license cost
			case "dive": {_var = "license_civ_dive"}; //Diving license cost
			case "cair": {_var = "license_cop_air"}; //Cop Pilot License cost
			case "swat": {_var = "license_cop_swat"}; //Swat License cost
			case "cg": {_var = "license_cop_cg"}; //Coast guard license cost
			case "heroin": {_var = "license_civ_heroin"}; //Heroin processing license cost
			case "marijuana": {_var = "license_civ_marijuana"}; //Marijuana processing license cost
			case "gang": {_var = "license_civ_gang"}; //Gang license cost
			case "rebel": {_var = "license_civ_rebel"}; //Rebel License
			case "truck":{_var = "license_civ_truck"}; //Truck License
			case "diamond": {_var = "license_civ_diamond"};
			case "cocaine": {_var = "license_civ_coke"};
			case "iron": {_var = "license_civ_iron"};
			case "copper": {_var = "license_civ_copper"};
			case "mair": {_var = "license_med_air"};
			case "home": {_var = "license_civ_home"};
			case "jusraisin": {_var = "license_civ_jusraisin"};
			case "poterie": {_var = "license_civ_poterie"};
			case "huileolive": {_var = "license_civ_huileolive"};
			case "cigarette": {_var = "license_civ_cigarette"};
			case "biere": {_var = "license_civ_biere"};
			case "vin": {_var = "license_civ_vin"};
			case "cigare": {_var = "license_civ_cigare"};
			case "champagne": {_var = "license_civ_champagne"};
			case "caviar": {_var = "license_civ_caviar"};
			case "rubistaille": {_var = "license_civ_rubistaille"};
			case "barreor": {_var = "license_civ_barreor"};
			case "or_ag": {_var = "license_civ_or_ag"};
			case "mescaline": {_var = "license_civ_mescaline"};
			case "mdma": {_var = "license_civ_mdma"};
			case "charbon": {_var = "license_civ_charbon"};
			case "speed": {_var = "license_civ_speed"};
			case "speedball": {_var = "license_civ_speedball"};
			case "acier": {_var = "license_civ_acier"};
			case "acierino": {_var = "license_civ_acierino"};
			case "transaltis": {_var = "licese_civ_transaltis"};
			default {_var = ""};
		};
	};
	
	case 1:
	{
		switch (_type) do
		{
			case "license_civ_driver": {_var = "driver"}; //Drivers License cost
			case "license_civ_boat": {_var = "boat"}; //Boating license cost
			case "license_civ_air": {_var = "pilot"}; //Pilot/air license cost
			case "license_civ_gun": {_var = "gun"}; //Firearm/gun license cost
			case "license_civ_dive": {_var = "dive"}; //Diving license cost
			case "license_cop_air": {_var = "cair"}; //Cop Pilot License cost
			case "license_cop_swat": {_var = "swat"}; //Swat License cost
			case "license_cop_cg": {_var = "cg"}; //Coast guard license cost
			case "license_civ_heroin": {_var = "heroin"}; //Heroin processing license cost
			case "license_civ_marijuana": {_var = "marijuana"}; //Marijuana processing license cost
			case "license_civ_gang": {_var = "gang"}; //Gang license cost
			case "license_civ_rebel": {_var = "rebel"}; //Rebel License
			case "license_civ_truck":{_var = "truck"}; //Truck License
			case "license_civ_diamond": {_var = "diamond"};
			case "license_civ_coke": {_var = "cocaine"};
			case "license_civ_iron": {_var = "iron"};
			case "license_civ_copper": {_var = "copper"};
			case "license_med_air": {_var = "mair"};
			case "license_civ_home": {_var = "home"};
			case "license_civ_jusraisin": {_var = "jusraisin"};
			case "license_civ_poterie": {_var = "poterie"};
			case "license_civ_huileolive": {_var = "huileolive"};
			case "license_civ_cigarette": {_var = "cigarette"};
			case "license_civ_biere": {_var = "biere"};
			case "license_civ_vin": {_var = "vin"};
			case "license_civ_cigare": {_var = "cigare"};
			case "license_civ_champagne": {_var = "champagne"};
			case "license_civ_caviar": {_var = "caviar"};
			case "license_civ_rubistaille": {_var = "rubistaille"};
			case "license_civ_barreor": {_var = "barreor"};
			case "license_civ_or_ag": {_var = "or_ag"};
			case "license_civ_mescaline": {_var = "mescaline"};
			case "license_civ_mdma": {_var = "mdma"};
			case "license_civ_charbon": {_var = "charbon"};
			case "license_civ_speed": {_var = "speed"};
			case "license_civ_speedball": {_var = "speedball"};
			case "license_civ_acier": {_var = "acier"};
			case "license_civ_acierino": {_var = "acierino"};
			case "license_civ_transaltis": {_var = "transaltis"};
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;