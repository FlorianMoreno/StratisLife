/*
    Function: LIFE_fnc_isSwat
    
    Takes a player and returns true if they are in the swat slots.
    returns false otherwise.
    
    example: amISwat = [player] call LIFE_fnc_isSwat;
    amISwat will be true or false.
    
    A swat member is determined by the value of the "name" field given it
    within the map. It must be called "swat_#" where "#" is a number that
    increments by 1 for each swat character. "#" should start from 1.
*/

_ply = _this select 0;
 
_isSwat = false;

_swatTeam = [];

// _swatPlayers is a total number of swat chracters in the mission.
// if a swat character is removed or added, this should equal the total
// on the map.
_swatPlayers = 12;

for "_i" from 0 to _swatPlayers do
{
    _swatTeam set [ _i, format["Swat_%1", _i] ];
    //don't know why but the name changes case for no reason. Quick and dirty fix as there's no predefined string tolower manipulation.
    _swatTeam set [ _i + _swatPlayers, format["swat_%1", _i] ];
};

playerString = format["%1", _ply];

if ( playerString in _swatTeam ) then
{
    _isSwat = true;
};

_isSwat;
