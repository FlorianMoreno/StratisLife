while {true} do
{
	sleep 60 * 2;

    ["Clock",["Paycheck Soon", "Next paycheck in 3 minutes."]] call bis_fnc_showNotification;
    sleep 60 * 3;
    
    ["Clock",["Paycheck Soon", "Next paycheck in 1 minute."]] call bis_fnc_showNotification;
	sleep 60 * 1;
    

    ["PayCheck", [ format["You recieved a paycheck of %1 strats!",(player getVariable "mypaycheck")] ] ] call bis_fnc_showNotification;
	
    starttrue = 1;
    player setVariable['bankmoney',(player getVariable 'bankmoney') + (player getVariable 'mypaycheck'),true];
};