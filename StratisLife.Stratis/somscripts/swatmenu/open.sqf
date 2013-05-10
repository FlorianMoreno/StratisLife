player removeaction act1;
player removeaction act2;
player removeaction act3;
player removeaction act4;
player removeaction act5;
player removeaction act6;
player removeaction act7;
player removeaction act8;
player removeaction act9;
player removeaction act10;
player removeaction act11;

if ambush then {act5 = player addaction ["---SWAT MENU---", "copscripts\1.sqf", [], 1, false, true, "", ""]} else {sleep 1; hint "not available"};
sleep 0.02;
if ambush then {act7 = player addaction ["Impound Nearest Car", "impound\impound.sqf", [], 1, false, true, "", ""]} else {sleep 1; hint "not available"};
sleep 0.02;
if attack then { act2 = player addaction ["Pullout Civs in Nearest Car", "vehiclelock\eject.sqf", [], 1, false, true, "", ""]} else {sleep 1; hint "not available"};
sleep 0.02;
if rescue then { act3 = player addaction ["Search Nearest Civ", "copscripts\frisk-nearest.sqf", [], 1, false, true, "", ""]} else {sleep 1; hint "not available"};
sleep 0.02;
if defend then { act4 = player addaction ["Restrain Nearest Civ", "copscripts\restrain-nearest.sqf", [], 1, false, true, "", ""]} else {sleep 1; hint "not available"};
sleep 0.02;
act11 = player addaction ["Close Cop Menu", "somscripts\swatmenu\close_menu.sqf", [], 1, false, true, "", ""];
sleep 0.02l
if ambush then {act6 = player addaction ["---SWAT MENU---", "copscripts\1.sqf", [], 1, false, true, "", ""]} else {sleep 1; hint "not available"};



