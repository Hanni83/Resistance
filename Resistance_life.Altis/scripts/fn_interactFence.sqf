/*
    File: fn_interactFence.sqf
    Author: Robert "Jimbobob"
	Traduit et �dit� par: Jack Frost
    
    Description:
    Allows players to cut wire fences.
*/

switch (playerSide) do
{
    case west:
    {
        hint "Vous avez réparé la clôture."; //prints message
        _nObject = nearestObject [player, "Land_CncWall1_F","Land_Razorwire_F","Land_Mil_WiredFence_F"]; //runs the script on the nearest wall of that class ref
        _nObject setDamage 0; // repairs the fence
    };
    case civilian:
    {
        if(life_inv_fencecutters < 1) exitWith { hint "Vous n'avez pas de pince coupante."; }; // line for not having cutters
        if(life_inv_fencecutters > 1) then //line for having wire cutters
        {
            life_inv_fencecutters = life_inv_fencecutters - 1; //uses the cutters
            hint "Vous avez couper la clôture."; //prints message
            _nObject = nearestObject [player, "Land_CncWall1_F","Land_Razorwire_F","Land_Mil_WiredFence_F"]; //runs the script on the nearest wall of that class ref
            _nObject setDamage 1;; // destroys the fence
        };
    };
    
    case independent:
    {
        hint "Vous n'êtes pas civil."; //prints message
    };
};