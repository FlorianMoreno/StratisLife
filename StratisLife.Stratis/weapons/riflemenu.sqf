createDialog "RifleMenu";
ctrlSetText[11172,format["Money: %1",(player getVariable "mymoney")]];
if(side player == west) then
{
	lbAdd[11173,"MXC : 30000/4000"];
};
if(side player == civilian) then
{
	lbAdd[11173,"TRG20 : 70000/7500"];
	lbAdd[11173,"Katiba : 70000/7500"];
};