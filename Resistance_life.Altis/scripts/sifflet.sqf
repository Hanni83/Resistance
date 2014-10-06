if (isnil "jepeuxsifflet") then {jepeuxsifflet = 0;};

if (jepeuxsifflet == 0) then 
{
	if (vehicle player == player) then 
	{
		jepeuxsifflet = 1;
		_player = player;
		[[_player], "siffletjoueur", nil, false] spawn BIS_fnc_MP;
		sleep 1.67;
		jepeuxsifflet = 0;
	};
};