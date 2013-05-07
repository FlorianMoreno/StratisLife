createDialog "HeliMenu";
ctrlSetText[11126,format["Money: %1",(player getVariable "mymoney")]];
if(side player == west) then
{
	lbAdd[11127,"Little Bird : 80000"];
	lbAdd[11127,"KA60 : 100000"];
};
if(side player == civilian) then
{
	lbAdd[11127,"Little Bird : 209800"];
	lbAdd[11127,"KA60 : 249991"];
};