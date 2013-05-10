// Markers.sqf
// this file is for the display of markers on the map that shows cops position.






while {true} do
{
    {
        deleteMarkerLocal _x;
    
    } foreach Markers;
	
	
	//Reset Markers array other wise array will just keep getting bigger every loop
	Markers = [];
    if (side player == East) then {
    
        { 
            if (side _x == East) then
            {
                
                _marker = createMarkerLocal[name _x, getpos _x];
                _marker setMarkerTypeLocal "hd_dot";
                _marker setMarkerColorLocal "ColorBlack";
                _text = format ["%1: %2",_x,(name _x)];
                _marker setMarkerTextLocal _text;
                Markers = Markers + [_marker];
            };

        } foreach playableUnits;
    };
    
    sleep 2;
}
