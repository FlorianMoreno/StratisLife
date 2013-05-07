_victim = _this select 0;
_shooter = _this select 1;

player globalChat format["%1 has been arrested by %2",(name _victim),(name _shooter)];

if (player == _victim) then
{
    player playMove "";
    
    ["Jail",["ARRESTED!", "You have been placed under arrest!."]] call bis_fnc_showNotification;
    
    removeAllWeapons _victim;
    
    isrestrained = 0;
    victim2 = 0;
    
    player setVariable["bailed",0,true];
    player setVariable["arrested",1,true];
    player setPos [3202.18,5815.39,1.0];
    
    if ((player getVariable "bankmoney") >= 5000) then
    {
        player setVariable["bankmoney",(player getVariable "bankmoney") - 5000,true];
        hint format["You have been fined for 5000 $! You got %1 $ in your bank left!",(player getVariable "bankmoney")];
    };
};

if (side player == west) then
{
    _victim removeAction unrestrain;
    _victim removeAction jail;
    _victim removeAction frisk;
};

if (player == _victim) then
{
    while {((player getVariable "arrested") >= 1) and ((player getVariable "bailed") <= 0)} do
    {
        victim2 = 0;
		sleep 3;
		["Jail",["Sentence!", "You have 3 minutes of your sentence left."]] call bis_fnc_showNotification;
        sleep 120;
		["Jail",["Sentence!", "You have 1 minute of your sentence left."]] call bis_fnc_showNotification;
		sleep 60;
		if (((player getVariable "bailed") == 0) or ((player getVariable "arrested") == 1))  then
		{
        ["Jail",["Free to go!", "You have served your sentance!"]] call bis_fnc_showNotification;
        player setPos [2880.93,6063.92,1.205];
		player setVariable["arrested",0,true];
		}
		else
		{
		};
    };
};
