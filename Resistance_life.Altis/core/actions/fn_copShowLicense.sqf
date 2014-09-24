/*

	Show cop license to target player

*/

private["_target", "_message","_rank","_coplevel"];

_target = cursorTarget;

if(playerSide != west) exitWith
{
	hint "Vous n'êtes pas un Policier!";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_rank = "";

//Set rank
switch ( _coplevel ) do
{
	case 1: { _rank = "Recrue"; };
	case 2: { _rank = "Caporal"; };
	case 3: { _rank = "Sergent"; };
	case 4: { _rank = "Sergent-Chef"; };
	case 5: { _rank = "Lieutenant"; };
	case 6: { _rank = "* Capitaine *"; };
	case 7: { _rank = "** Major **"; };
	//case 8: { _rank = "*** Colonel ***"; };
	default {_rank =  "*** Colonel ***";};
};

//Compose message
_message = format["<img size='10' color='#FFFFFF' image='textures\police_gold.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.5'>%2</t><br/><t size='1'>Département de Police</t>", name player, _rank];

//Show license to target player
[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
