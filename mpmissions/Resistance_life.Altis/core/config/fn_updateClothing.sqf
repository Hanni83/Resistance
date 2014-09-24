/*

	Updates player clothing by replacing vanilla by custom ones
        by Audacious

*/

private["_uniform","_backpack"];

///Uniform
////////////////

_uniform = uniform player;

switch(true) do
{
	case (playerSide == west && _uniform == "U_B_CombatUniform_mcam"):
	{
		if( (call life_coplevel) > 1) then
		{
			player setObjectTextureGlobal  [0, "textures\cop_uniform.jpg"]; 
		}
		else
		{
			player setObjectTextureGlobal  [0, "textures\cop_cadet.jpg"]; 
		};
		
		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
	
	case (playerSide == independent && _uniform == "U_I_HeliPilotCoveralls"):
	{
		if( (call life_mediclevel) > 3) then
		{
			player setObjectTextureGlobal  [0, "\Resistance\Skins\cloth_med\medic_uniform.jpg"];
		}
		else
		{
			player setObjectTextureGlobal  [0, "\Resistance\Skins\cloth_med\medic_uniform.jpg"]; 
		};
		
		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
};

///backpack
////////////////