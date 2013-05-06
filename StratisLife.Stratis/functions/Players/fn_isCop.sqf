/*
    Function: LIFE_fnc_isCop
    
    Takes a player and returns true if they are in the cop slots.
    returns false otherwise.
    
    example: amISwat = [player] call LIFE_fnc_isCop;
    amICop will be true or false.
    
    A cop member is determined by the value of the "name" field given it
    within the map. It must be called "swat_#" where "#" is a number that
    increments by 1 for each cop character. "#" should start from 1.
*/

_ply = _this select 0;
 
_isCop = false;

_copTeam = [];

// _copPlayers is a total number of cop chracters in the mission.
// if a cop character is removed or added, this should equal the total
// on the map.
_copPlayers = 25;

for "_i" from 0 to _copPlayers do
{
    _copTeam set [ _i, format["Cop_%1", _i] ];
    //don't know why but the name changes case for no reason. Quick and dirty fix as there's no predefined string tolower manipulation.
    //_copTeam set [ _i + _copPlayers, format["swat_%1", _i] ];
};

playerString = format["%1", _ply];

if ( playerString in _copTeam ) then
{
    _isCop = true;
};

_isCop;
