	"forlolz" addPublicVariableEventHandler {if(isServer) then {diag_log format["%1",_this select 1];} else {[_this select 1] call fnc_hint;};};
	fnc_hint = compileFinal "_code = _this select 0;  hint format[""%1"", _code];";
	if(isServer) exitWith {};
	
	waitUntil {!isNull player && player == player};
	_fnc_patch_check =
	{
		private["_config","_entries","_flags"];
		_config = configFile >> "CfgPatches";
		_entries = [];
		_flags = [];
		
		for "_i" from 0 to count (_config)-1 do
		{
			_sel = _config select _i;
			if(isClass _sel) then
			{
				_name = configName _sel;
				_entries set[count _entries,_name];
			};
		};
		
		{
			if(_x in _entries) then
			{
				_flags set[count _flags,_x];
			};
		} foreach ["DevCon","Loki","GayWay","Darky"];
		
		if(count _flags > 0) then
		{
			//disableUserInput true;
			forlolz = format["%1 was flagged for \n\n%2\n\n Config Entries. Notify an admin about him.",name player,_flags];
			hint forlolz;
			publicVariable "forlolz";
		};
	};

	_fnc_wep_check = 
	{
		private["_flag","_legit"];
		_legit = ["arifle_MX_F","arifle_MXC_F","arifle_MXM_F","hgun_Rook40_F","hgun_P07_F","hgun_P07_snds_F","Binocular","arifle_SDAR_F","arifle_TRG20_F","srifle_EBR_F","arifle_Khaybar_F"];
		_flag = false;
		_weapons = weapons player;
		
		{
			if(!(_x in _legit)) then
			{
				player removeWeapon _x;
				forlolz = format["%1 was using %2.\n\nThis weapon is restricted, report it to an admin.",name player,_x];
				publicVariable "forlolz";
			};
		} foreach _weapons;
	};
	
	[] spawn
	{
		while {true} do
		{
			[] call _fnc_patch_check;
			sleep (5 * 60);
		};
	};
				
	sleep 15;
	[] spawn
	{
		while {true} do
		{
			if(!isNil {stealthAimBotOn}) then
			{
				_code = format["%1 is using an aimbot. Report it to an admin and laugh at his failure.", name player];
				forlolz = _code;
				publicVariable "forlolz";
				sleep 1;
				endMission "Loser";
			};
			
			if(!isNil {stealthMarkerToggle}) then
			{
				_code = format["%1 is using map-marker ESP. Report it to the no funzy police Alan.",name player];
				forlolz = _code;
				sleep 1;
				endMission "Loser";
			};
			
			if(!isNil {markerUnits}) then
			{
				_code = format["%1 is using map-marker ESP. Report it to the no funzy police Alan.",name player];
				forlolz = _code;
				sleep 1;
				endMission "Loser";
			};
			
			if(!isNil {scroll_m_init_star}) then
			{
				_code = format["%1 is using Infistar cheat", name player];
				forlolz = _code;
				publicVariable "anticheat";
				sleep 1;
				endMission "Loser";
			};
			
			if(!isNil {exstr1}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
				sleep 1;
				endMission "Loser";
			};
			
			if(!isNil {pathtoscrdir3}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
				sleep 1;
				endMission "Loser";
			};
			
			if(!isNil {Monky_funcs_inited}) then
			{
				_code = format["%1 is using Monky Cheat", name player];
				forlolz = _code;
				publicVariable "anticheat";
				sleep 1;
				endMission "Loser";
			};
			
			if(!isNil {Monky_initMenu}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
				sleep 1;
				endMission "Loser";
			};
			
			if(!isNil {player_zombieCheck}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
			};
			
			if(!isNil {godlol}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
			};
			
			if(!isNil {playericons}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
			};
			
			if(!isNil {abcdefGEH}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
			};
			
			if(!isNil {wierdo}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
			};
			
			if(!isNil {go_invisible_infiSTAR}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
			};
			
			if(!isNil {serverObjectMonitor}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
			};
			
			if(!isNil {enamearr}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
			};
			if(!isNil {initarr3}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
			};
			
			if(!isNil {locdb}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
			};
			
			if(!isNil {sCode}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
			};
			
			if(!isNil {infAmmoIndex}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
			};
			
			if(!isNil {nukeDONEstar}) then
			{
				_code = format["%1 is using cheats.", name player];
				forlolz = _code;
				publicVariable "anticheat";
			};
			
			[] call _fnc_wep_check;
			sleep 25;
		};
	};