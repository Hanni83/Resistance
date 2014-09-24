/*
	File: welcomecredits.sqf
	Author: HellsGate
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 1; //<-- How long is the text on the screen for ? Recommended: 1 

sleep 3; //Wait in seconds before the credits start after player is in-game
//playSound "Intro"; // This calls the code inside of description.ext //

_role1 = "Bienvenue sur ...";
_role1names = ["RESISTANCE"];
_role2 = "Notre forum :";
_role2names = ["http://resistance.xooit.eu"];
_role3 = "Notre serveur TeamSpeack 3 :";
_role3names = ["speak2-6.teamspeak.net:19067"];
_role4 = "Noubliez pas que notre mods est ...";
_role4names = ["OBLIGATOIRE. Merci"];
_role5 = "Bon jeu a vous ...";
_role5names = ["sur notre serveur !"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names]
];