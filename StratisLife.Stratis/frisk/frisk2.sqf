_green = "#4CCF00";
_red = "#FF0000";
_black = "#000000";
_moneygreen =  "#4CCF00";
_moneyred = "#FF0000";

_spacecolor1 = "#FF8F8F";
_spacecolor2 = "#FFA78F";
_spacecolor3 = "#FFBA8F";
_spacecolor4 = "#FFD08F";
_spacecolor5 = "#FFE18F";
_spacecolor6 = "#FFF28F";
_spacecolor7 = "#F4FF8F";
_spacecolor8 = "#E1FF8F";
_spacecolor9 = "#CEFF8F";
_spacecolor10 = "#B2FF8F";
_spacecolor11 = "#8FFFC3";
_spacecolor12 = "#8FFFEA";
_spacecolor13 = "#8FF8FF";

_victim = _this select 0;
_shooter = _this select 1;
if (player == _shooter) then {
hint format ["You are frisking: %1...",(name _victim)];
sleep 3;
};
if (player == _victim) then {
moneyvictim = (player getVariable "mymoney");
publicVariable "moneyvictim"; 

usedspacevictim = (player getVariable "usedspace");
publicVariable "usedspacevictim";

totalspacevictim = (player getVariable "totalspace");
publicVariable "totalspacevictim"; 

itemfishvictim = (player getVariable "itemfish");
publicVariable "itemfishvictim"; 

itemapplevictim = (player getVariable "itemapple");
publicVariable "itemapplevictim"; 

itemwoodvictim = (player getVariable "itemwood");
publicVariable "itemwoodvictim"; 

itemunpheroinvictim = (player getVariable "itemunpheroin");
publicVariable "itemunpheroinvictim"; 

itemproheroinvictim = (player getVariable "itemproheroin");
publicVariable "itemproheroinvictim";

itemwhalevictim = (player getVariable "itemwhale");
publicVariable "itemwhalevictim"; 

itemrabbitmeatvictim = (player getVariable "itemrabbitmeat");
publicVariable "itemrabbitmeatvictim"; 

itemunpoilvictim = (player getVariable "itemunpoil");
publicVariable "itemunpoilvictim"; 

itemprooilvictim = (player getVariable "itemprooil");
publicVariable "itemprooilvictim"; 

gotlicensevictim = (player getVariable "gotlicense");
publicVariable "gotlicensevictim"; 

driverlicensevictim = (player getVariable "driverlicense");
publicVariable "driverlicensevictim"; 

boatlicensevictim = (player getVariable "boatlicense");
publicVariable "boatlicensevictim"; 

airlicensevictim = (player getVariable "airlicense");
publicVariable "airlicensevictim"; 

huntinglicensevictim = (player getVariable "huntinglicense");
publicVariable "huntinglicensevictim"; 

pistollicensevictim = (player getVariable "pistollicense");
publicVariable "pistollicensevictim"; 

riflelicensevictim = (player getVariable "riflelicense");
publicVariable "riflelicensevictim"; 

oilprocesslicensevictim = (player getVariable "oilprocesslicense");
publicVariable "oilprocesslicensevictim"; 

havedmissionvictim = havedmission;
publicVariable "havedmissionvictim"; 

iswantedvictim = (player getVariable "iswanted");
publicVariable "iswantedvictim"; 

};

if (player == _shooter) then {
if (usedspacevictim < 0) then {
gotnothinginvvictim = format ["<t color='#FF6666' size='1'>I see that %1's inventory is bugged, Please report it to a developer. :/ <br/>",_victim];
} else {
gotnothinginvvictim = format [""];
};

if (usedspacevictim == 0) then {
gotnothinginvvictim = format ["<t color='#F6FF00' size='1'>%1 doesn't have anything in his inventory. <br/>",(name _victim)];
}
else {
gotnothinginvvictim = format [""];
};

if (itemfishvictim > 0) then {
gotfishinvvictim = format ["<t color='#B5FF8A' size='1'>Fish:</t><t color='#4CCF00' size='1'> %1</t> <br/>",itemfishvictim];
}
else {
gotfishinvvictim = format [""];
};

if (itemapplevictim > 0) then {
gotappleinvvictim = format ["<t color='#B5FF8A' size='1'>Apple:</t><t color='#4CCF00' size='1'> %1</t> <br/>",itemapplevictim];
}
else {
gotappleinvvictim = format [""];
};

if (itemwoodvictim > 0) then {
gotwoodinvvictim = format ["<t color='#B5FF8A' size='1'>Wood:</t><t color='#4CCF00' size='1'> %1</t> <br/>",itemwoodvictim];
}
else {
gotwoodinvvictim = format [""];
};

if (itemproheroinvictim > 0) then {
gotproheroininvvictim = format ["<t color='#FF8080' size='1'>Processed Heroin:</t><t color='#FF0000' size='1'> %1</t> <br/>",itemproheroinvictim];
}
else {
gotproheroininvvictim = format [""];
};

if (itemunpheroinvictim > 0) then {
gotunpheroininvvictim = format ["<t color='#FF8080' size='1'>Unprocessed Heroin:</t><t color='#FF0000' size='1'> %1</t> <br/>",itemunpheroinvictim];
}
else {
gotunpheroininvvictim = format [""];
};

if (itemwhalevictim > 0) then {
gotwhaleinvvictim = format ["<t color='#FF8080' size='1'>Whale:</t><t color='#FF0000' size='1'> %1</t> <br/>",itemwhalevictim];
}
else {
gotwhaleinvvictim = format [""];
};

if (itemunpoilvictim > 0) then {
gotunpoilinvvictim = format ["<t color='#B5FF8A' size='1'>Unprocessed Oil:</t><t color='#4CCF00' size='1'> %1</t> <br/>",itemunpoilvictim];
}
else {
gotunpoilinvvictim = format [""];
};

if (itemprooilvictim > 0) then {
gotprooilinvvictim = format ["<t color='#B5FF8A' size='1'>Processed Oil:</t><t color='#4CCF00' size='1'> %1</t> <br/>",itemprooilvictim];
}
else {
gotprooilinvvictim = format [""];
};

if (itemrabbitmeatvictim > 0) then {
gotrabbitmeatinvvictim = format ["<t color='#B5FF8A' size='1'>Rabbit Meat:</t><t color='#4CCF00' size='1'> %1</t> <br/>",itemrabbitmeatvictim];
}
else {
gotrabbitmeatinvvictim = format [""];
};

if (gotlicensevictim == 0) then {
gotnolicenseinvvictim = format ["<t color='#F6FF00' size='1'>%1 doesn't have any licenses.<br/>",(name _victim)];
}
else {
gotnolicenseinvvictim = format [""];
};

if (driverlicensevictim == 1) then {
havedriverinvvictim = format ["<t color='#D0BAFF' size='1'>Driver license</t> <br/>"];
}
else {
havedriverinvvictim = format [""];
};

if (huntinglicensevictim == 1) then {
havehuntinginvvictim = format ["<t color='#D0BAFF' size='1'>Hunting license</t> <br/>"];
}
else {
havehuntinginvvictim = format [""];
};

if (boatlicensevictim == 1) then {
haveboatinvvictim = format ["<t color='#D0BAFF' size='1'>Boat license</t> <br/>"];
}
else {
haveboatinvvictim = format [""];
};

if (airlicensevictim == 1) then {
haveairinvvictim = format ["<t color='#D0BAFF' size='1'>Air license</t> <br/>"];
}
else {
haveairinvvictim = format [""];
};

if (pistollicensevictim == 1) then {
havepistolinvvictim = format ["<t color='#D0BAFF' size='1'>Pistol license</t> <br/>"];
}
else {
havepistolinvvictim = format [""];
};

if (riflelicensevictim == 1) then {
haverifleinvvictim = format ["<t color='#D0BAFF' size='1'>Rifle license</t> <br/>"]; 
}
else {
haverifleinvvictim = format [""];
};

if (oilprocesslicensevictim == 1) then {
haveoilinvvictim = format ["<t color='#D0BAFF' size='1'>Oil Processing license</t> <br/>"]; 
}
else {
haveoilinvvictim = format [""];
};

if (havedmissionvictim == 0) then {
havedmission1invvictim = parseText format ["No Delivery Job"];
};
if (havedmissionvictim == 1) then {
havedmission1invvictim = parseText format ["Package: DP1"];
};
if (havedmissionvictim == 2) then {
havedmission1invvictim = parseText format ["Package: DP2"];
};

if (iswantedvictim == 1) then {
iswantedinvvictim = parseText format ["%1 is wanted!",(name _victim)];
wantedcolorinvvictim = _red;
}
else {
iswantedinvvictim = parseText format ["%1 is not wanted.",(name _victim)];
wantedcolorinvvictim = _green;
};

if (mymoneyvictim == 0) then {
moneycolorinvvictim = _moneyred;
}
else {
moneycolorinvvictim = _moneygreen;
};

if (usedspacevictim > 60) then {
usedcolorinvvictim = _black;
}
else {
if (usedspacevictim > 55) then {
usedcolorinvvictim = _spacecolor1;
}
else {
if (usedspacevictim > 50) then {
usedcolorinvvictim = _spacecolor2;
}
else {
if (usedspacevictim > 45) then {
usedcolorinvvictim = _spacecolor3;
}
else {
if (usedspacevictim > 40) then {
usedcolorinvvictim = _spacecolor4;
}
else {
if (usedspacevictim > 35) then {
usedcolorinvvictim = _spacecolor5;
}
else {
if (usedspacevictim > 30) then {
usedcolorinvvictim = _spacecolor6;
}
else {
if (usedspacevictim > 25) then {
usedcolorinvvictim = _spacecolor7;
}
else {
if (usedspacevictim > 20) then {
usedcolorinvvictim = _spacecolor8;
}
else {
if (usedspacevictim > 15) then {
usedcolorinvvictim = _spacecolor9;
}
else {
if (usedspacevictim > 10) then {
usedcolorinvvictim = _spacecolor10;
}
else {
if (usedspacevictim > 5) then {
usedcolorinvvictim = _spacecolor11;
}
else {
if (usedspacevictim > 1) then {
usedcolorinvvictim = _spacecolor12;
}
else {
if (usedspacevictim == 0) then {
usedcolorinvvictim = _spacecolor13;
}
else {
if (usedspacevictim < 0) then {
usedcolorinvvictim = _black;
}
};};};};};};};};};};};};};};

sleep 2;
_str = parseText format ["
<t color='#D9B398' size='2'>%23</t>
<br/>
<t color='%1' size='1.2'>Used space: %2/%3</t>
<br/>
<t color='%4' size='1.2'>Money: %5</t>
<br/>
<br/>
<t color='#D9B398' size='1.5'>Inventory</t>
<br/>
%6
%7
%8
%9
%10
%11
%25
%26
%12
<br/>
<t color='#D9B398' size='1.5'>Licenses</t>
<br/>
%14
%15
%16
%18
%19
%17
%24
<br/>
<t color='#D9B398' size='1.5'>Other</t>
<br/>
<t color='#B3B3B3' size='1'>%20</t>
<br/>
<t color='%21'>%22</t>
<br/>
",
usedcolorinvvictim, //1
usedspacevictim, //2
totalspacevictim, //3
moneycolorinvvictim, //4
moneyvictim, //5
gotnothinginvvictim, //6
gotfishinvvictim, //7
gotappleinvvictim, //8
gotproheroininvvictim, //9
gotwhaleinvvictim, //10
gotunpoilinvvictim, //11
gotprooilinvvictim, //12
gotnolicenseinvvictim, //13
havedriverinvvictim, //14
haveboatinvvictim, //15
haveairinvvictim, //16
havepistolinvvictim, //17
haverifleinvvictim, //18
haveoilinvvictim, //19
havedmission1invvictim, //20
wantedcolorinvvictim, //21
iswantedinvvictim, //22
(name _victim), //23
havehuntinginvvictim, //24
gotrabbitmeatinvvictim, //25
gotwoodinvvictim //26
];
hint _str;
sleep 1;
moneyvictim = 0;
publicVariable "moneyvictim"; 

usedspacevictim = 0;
publicVariable "usedspacevictim";

itemfishvictim = 0;
publicVariable "itemfishvictim"; 

itemapplevictim = 0;
publicVariable "itemapplevictim"; 

itemwoodvictim = 0;
publicVariable "itemwoodvictim"; 

itemheroinvictim = 0;
publicVariable "itemheroinvictim"; 

itemwhalevictim = 0;
publicVariable "itemwhalevictim"; 

itemunpoilvictim = 0;
publicVariable "itemunpoilvictim"; 

itemprooilvictim = 0;
publicVariable "itemprooilvictim"; 

gotlicensevictim = 0;
publicVariable "gotlicensevictim"; 

driverlicensevictim = 0;
publicVariable "driverlicensevictim"; 

boatlicensevictim = 0;
publicVariable "boatlicensevictim"; 

airlicensevictim = 0;
publicVariable "airlicensevictim"; 

riflelicensevictim = 0;
publicVariable "riflelicensevictim"; 

pistollicensevictim = 0;
publicVariable "pistollicensevictim"; 

boatlicensevictim = 0;
publicVariable "boatlicensevictim"; 

oilprocesslicensevictim = 0;
publicVariable "oilprocesslicensevictim"; 

havedmissionvictim = 0;
publicVariable "havedmissionvictim"; 

iswantedvictim = 0;
publicVariable "iswantedvictim"; 

usedspacevictim = 0;
publicVariable "usedspacevictim"; 

totalspacevictim = 0;
publicVariable "totalspacevictim"; 

};