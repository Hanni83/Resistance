/*
file: fn_robShops.sqf
Author: MrKraken
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description:
Executes the rob shob action!
Idea developed by PEpwnzya v1.0
*/
/*
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
//_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name

if(side _robber != civilian) exitWith { hint "Vous ne pouvez pas voler cette station!" };
if(_robber distance _shop > 5) exitWith { hint "Vous devez être à moins de 5m de la caisse pour la voler!" };

if !(_kassa) then { _kassa = 1000; };
if (_rip) exitWith { hint "Le vol est déjà en cours!" };
if (vehicle player != _robber) exitWith { hint "Sortez de votre véhicule!" };

if !(alive _robber) exitWith {};
if({side _x == west} count playableUnits < 2) exitWith {hint "Il faut 2 Policier en ligne pour voler la caisse."};
if (currentWeapon _robber == "") exitWith { hint "Haha, vous ne me menacez pas! Sortez de là, vous Hobo!" };
if (_kassa == 0) exitWith { hint "Il n'y a pas d'argent dans la caisse !" };

_rip = true;
_kassa = 20000 + round(random 30000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance >= 85) then { hint "Le caissier a déclenché l'alarme silencieuse, la police a été alerté!"; [[1,format["ALARM! - La station essence: %1 a été voler!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; };

_cops = (west countSide playableUnits);
if(_cops < 2) exitWith{[[_vault,-1],"disableSerialization;",false,false] spawn life_fnc_MP; hint "Il n'y a pas assez de policier connecté pour voler la station.";};
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Vol en cours, rester proche (10m) (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;
 
if(_rip) then
{
while{true} do
{
sleep 0.85;
_cP = _cP + 0.01;
_progress progressSetPosition _cP;
_pgText ctrlSetText format["Vol en cours, rester proche (10m) (%1%2)...",round(_cP * 100),"%"];
_Pos = position player; // by ehno: get player pos
				                _marker = createMarker ["Marker200", _Pos]; //by ehno: Place a Maker on the map
				                "Marker200" setMarkerColor "ColorRed";
				                "Marker200" setMarkerText "!ATTENTION! Vol En Cours !ATTENTION!";
				                "Marker200" setMarkerType "mil_warning";			
if(_cP >= 1) exitWith {};
if(_robber distance _shop > 10.5) exitWith { };
if!(alive _robber) exitWith {};
};
if!(alive _robber) exitWith { _rip = false; };
if(_robber distance _shop > 10.5) exitWith { deleteMarker "Marker200"; _shop switchMove ""; hint "Vous devez être a moins de 10m de la caisse! - La caisse est maintenant vérouiller."; 5 cutText ["","PLAIN"]; _rip = false; };
5 cutText ["","PLAIN"];

titleText[format["Vous avez volé %1$, maintenant partez avant que les flics arrivent!",[_kassa] call life_fnc_numberText],"PLAIN"];
deleteMarker "Marker200"; // by ehno delete maker
life_cash = life_cash + _kassa;

_rip = false;
life_use_atm = false;
sleep (30 + random(180));
life_use_atm = true;
if!(alive _robber) exitWith {};
[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};
sleep 300;
_action = _shop addAction["Voler la caisse",life_fnc_robShops];	
_shop switchMove "";*/

/*
file: fn_robShops.sqf
Author: MrKraken, modded by Teej
 - Added randomized marker name
 - Various fixes & string changes
 - Added attempted robbery
 - Added abort for being restrained
 - Added abort for being arrested
 - Added fix for being killed
 
Made from MrKrakens bare-bones shop robbing tutorial on www.altisliferpg.com forums
Description:
Executes the rob shop action!
Idea developed by PEpwnzya v1.0
*/
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_Pos","_rndmrk","_mrkstring"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_action = [_this,2] call BIS_fnc_param;//Action name
_cops = (west countSide playableUnits);

if(_cops < 1) exitWith {hint "Il n'y a pas assez de policier connecté pour voler la station.";};
if(side _robber == west) exitWith { hint "Vous n'avez pas autre chose a faire ?" };
if(side _robber == independent) exitWith { hint "Vous n'avez pas des gens a soigner plutôt ?" };
if(_robber distance _shop > 5) exitWith { hint "Vous devez être à moins de 5m de la caisse enregistreuse pour la dépouiller!" };
if (vehicle player != _robber) exitWith { hint "Sortez de votre véhicule!" };

if !(_kassa) then { _kassa = 1000; };
if (_rip) exitWith { hint "Vol qualifié déjà en cours!" };
if (currentWeapon _robber == "") exitWith { hint "Je n'ai pas peur de vous! Sortez d'ici!" };

if !(alive _robber) exitWith {};
if (_kassa == 0) exitWith { hint "Il n'y a pas d'argent dans la caisse !" };

_rip = true;
_kassa = 10000 + round(random 5000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance >= 85) then { hint "Le caissier a déclenché l'alarme silencieuse, la police a été alerté !"; [[1,format["ALARME ! - Magasin: %1 est en train d'être volé!", _shop]],"life_fnc_broadcast",west,false] spawn life_fnc_MP; };
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Vol en cours, rester à moins de 5m (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if(_rip) then
{
   _rndmrk = random(1000);
   _mrkstring = format ["wrgMarker%1", _rndmrk];
   _Pos = position player; // by ehno: get player pos
   _marker = createMarker [_mrkstring, _Pos]; //by ehno: Place a Marker on the map
   _marker setMarkerColor "ColorRed";
   _marker setMarkerText "!ATTENTION! Vol en cours !ATTENTION!";
   _marker setMarkerType "mil_warning";
   // [[1,"A store is being robbed!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP; // General broadcast alert to everyone, uncomment for testing, or if you want it anyway.

   while{true} do
   {
      sleep 2.00;
      _cP = _cP + 0.01;
      _progress progressSetPosition _cP;
      _pgText ctrlSetText format["Vol en cours, rester à moins de 5m (%1%2)...",round(_cP * 100),"%"];
	  
      if(_cP >= 1 OR !alive _robber) exitWith {};
      if(_robber distance _shop > 5.1) exitWith { };
	  if((_robber getVariable["restrained",false])) exitWith {};
	  if(life_istazed) exitWith {} ;
	  if(life_interrupted) exitWith {};
   };
   
   if!(alive _robber) exitWith { deleteMarker _marker; _rip = false; _shop switchMove ""; 5 cutText ["","PLAIN"];};
   if(_robber distance _shop > 5.1) exitWith { deleteMarker _marker; _shop switchMove ""; hint "Vous êtes partis trop loin ! - la caisse a été vérouillé!"; 5 cutText ["","PLAIN"]; _rip = false; [[getPlayerUID _robber,name _robber,"211A"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP; };
   if(_robber getVariable "restrained") exitWith { deleteMarker _marker; _rip = false; _shop switchMove ""; hint "Vous avez été arrêté!"; 5 cutText ["","PLAIN"];};
   if(life_istazed) exitWith { deleteMarker _marker; _rip = false; _shop switchMove ""; hint "Vous avez été tazer!"; 5 cutText ["","PLAIN"];};
   
   5 cutText ["","PLAIN"];
   titleText[format["Vous avez volé %1$, maintenant partez avant que les flics arrivent!",[_kassa] call life_fnc_numberText],"PLAIN"];
   deleteMarker _marker; // by ehno delete marker
   life_cash = life_cash + _kassa;

   _rip = false;
   life_use_atm = false;
   sleep (30 + random(180));
   life_use_atm = true;
   [[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};

sleep 1200;
_action = _shop addAction["Voler la caisse",life_fnc_robShops];	
_shop switchMove "";