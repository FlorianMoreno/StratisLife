_victim = _this select 0;
_shooter = _this select 1;
if (player == _victim) then {
victim2 = 0;
_unit = _victim;
_anim = "AmovPercMstpSnonWnonDnon";
isrestrained = 0;
free = 0;
sleep 1;
["Restrained",["Un-Restrained", "You are free to move again."]] call bis_fnc_showNotification;
if (animationState _unit != "AmovPercMstpSnonWnonDnon_Ease") then {
_unit switchMove _anim;
_unit playMove _anim;
waitUntil{animationState _unit != _anim};
_anim = "";
};

victim2 = 0;
};
hint format["%1 has been unrestrained by %2!",(name _victim),(name _shooter)];
if (side player == west) then {
_victim removeAction unrestrain;
_victim removeAction jail;
_victim removeAction frisk;
meintazer = 0;
};