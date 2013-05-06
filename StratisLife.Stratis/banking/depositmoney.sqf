if(floor parseNumber (ctrlText 11117) > 0) then 
{
	if((player getVariable 'mymoney') >= floor parseNumber (ctrlText 11117)) then 
	{
		player setVariable['bankmoney',(player getVariable 'bankmoney') + floor parseNumber (ctrlText 11117),true];
		player setVariable['mymoney',(player getVariable 'mymoney') - floor parseNumber (ctrlText 11117),true];
		closeDialog 0;
		execVM 'banking\bankmenu.sqf';
	};
};