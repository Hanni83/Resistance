/*
	File: fn_zoneCreator.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates triggers around the map to add the addAction for specific
	fields such as apples, cocaine, heroin, etc. This method is to reduce
	CPU load.
	
	Note: 
	Triggers are NOT my preferred method so this is considered temporary until a more suitable
	option is presented.
*/
private["_figueZones","_boisZones","_heroinZones","_cocaineZones","_weedZones","_oliveZones","_raisinZones","_tabacZones","_houblonZones","_orgeZones","_peyotlZones","_sassafrasZones"];
_figueZones = ["figue_1","figue_2","figue_3","figue_4"];
_boisZones = ["bois_1","bois_2","bois_3","bois_4"];
_heroinZones = ["heroin_1"];
_cocaineZones = ["cocaine_1"];
_weedZones = ["weed_1"];
_oliveZones = ["olive_1","olive_2"];
_raisinZones = ["raisin_1","raisin_2"];
_tabacZones = ["tabac_1"];
_houblonZones = ["houblon_1"];
_orgeZones = ["orge_1"];
_peyotlZones = ["peyotl_1","peyotl_2"];
_sassafrasZones = ["sassafras_1"];

//Create figue zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Figue = player addAction[(localize ""STR_Gather_Figue""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Figue;"];
} foreach _figueZones;

//Create bois zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Bois = player addAction[(localize ""STR_Gather_Bois""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Bois;"];
} foreach _boisZones;

//Create heroin zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_heroin = player addAction[(localize ""STR_Gather_Heroin""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Heroin;"];
} foreach _heroinZones;

//Create Weed zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Cannabis = player addAction[(localize ""STR_Gather_Cannabis""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Cannabis;"];
} foreach _weedZones;

//Create cocaine zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Coke = player addAction[(localize ""STR_Gather_Cocaine""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Coke;"];
} foreach _cocaineZones;

//Create olive zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Olive = player addAction[(localize ""STR_Gather_Olive""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Olive;"];
} foreach _oliveZones;

//Create raisin zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Raisin = player addAction[(localize ""STR_Gather_Raisin""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Raisin;"];
} foreach _raisinZones;

//Create tabac zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Tabac = player addAction[(localize ""STR_Gather_Tabac""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Tabac;"];
} foreach _tabacZones;

//Create houblon zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Houblon = player addAction[(localize ""STR_Gather_Houblon""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Houblon;"];
} foreach _houblonZones;

//Create orge zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Orge = player addAction[(localize ""STR_Gather_Orge""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Orge;"];
} foreach _orgeZones;

//Create peyotl zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Peyotl = player addAction[(localize ""STR_Gather_Peyotl""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Peyotl;"];
} foreach _peyotlZones;

//Create sassafras zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[50,50,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Sassafras = player addAction[(localize ""STR_Gather_Sassafras""),life_fnc_gather,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Sassafras;"];
} foreach _sassafrasZones;