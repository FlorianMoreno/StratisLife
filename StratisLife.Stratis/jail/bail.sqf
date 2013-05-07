if ((player getVariable "bankmoney") < 50000) then
	{
	["Jail",["Bribe FAILED", "You need 50k in your bank to bribe me!."]] call bis_fnc_showNotification;
	} 
else {
	victim2 = 0;
	player setVariable["arrested",0,true];
	player setVariable["bailed",1,true];
	player setVariable["bankmoney",(player getVariable "bankmoney") - 50000,true];
	["Bail",["Bribe Accepted", "You bribed the guard, You're free!."]] call bis_fnc_showNotification;
	player setPos [2880.93,6063.92,1.205];	
};