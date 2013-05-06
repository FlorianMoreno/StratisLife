if(floor parseNumber (ctrlText 11145) > 0) then 
{
	if((player getVariable 'itemprooil') >= floor parseNumber (ctrlText 11145)) then 
	{
		player setVariable['itemprooil',(player getVariable 'itemprooil') - floor parseNumber (ctrlText 11145),true];
		player setVariable['mymoney',(player getVariable 'mymoney') + (oilsellprice * floor parseNumber (ctrlText 11145)),true];
		closeDialog 0;
		hint format ["You have %1$ on you;",player getVariable 'mymoney' ];
		player setVariable['usedspace',(player getVariable 'usedspace') - ( 10 * floor parseNumber (ctrlText 11145)),true];
	}
	else
	{
		Hint format ["you have %1 and need %2",(player getVariable 'itemprooil'),(floor parseNumber (ctrlText 11145))];
	};
};