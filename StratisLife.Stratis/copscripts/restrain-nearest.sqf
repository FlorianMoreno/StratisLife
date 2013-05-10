
_player = player;
_nearciv = nearestObjects [player, ["Man"], 3];
if(count _nearciv == 0) then {
exitwith{};
} else {
[[(_nearciv select 0),_player], "restrainFunction", nil, false] spawn BIS_fnc_MP;
};