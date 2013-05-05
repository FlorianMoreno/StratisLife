private["_motd", "_rules", "_faq", "_changelog", "_contact"];

// _tmpStr is just a temporary string to make editing text easier.
_tmpStr = "";

/* Start of Multi Op Gaming MOTD */

    _motdTitle = "Multi Op Gaming";
    
    // _mogText will contain all the strings of the MOTD. Milti-Dim array
    _mogText = [];
    
    // Generic multi op gaming
    _tmpStr = "Multi Op Gaming<br/>"
            + "<br/>"
            + "Teamspeak: ts.multiopgaming.net<br/>"
            + "Website: http://multiopgaming.net";
            
    _mogText set [ (count _mogText), [ "Contact:", _tmpStr ] ];
    
    // Create a main item on the left map panel
    player createDiarySubject [ "MOGMotd", _motdTitle ];
    
    // loop through all the rules and add them into the map under the newly created .
    for [ {_i = (count _mogText) - 1}, {_i >= 0 }, {_i = _i - 1} ] do
    {
        _motdSubTitle = (_mogText select _i) select 0;
        _motdSubDescription = (_mogText select _i) select 1;
        
        player createDiaryRecord ["MOGMotd", [ _motdSubTitle, _motdSubDescription ] ];
    };

/* End of Multi Op Gaming MOTD */


/* Start of Multi Op Gaming Rules */

     _rulesTitle = "Rules";

    // _rulesText will contain all the strings of the rules. Multi-Dim array
    _rulesText = [];

    // 1
    _tmpStr = "Admins have the final say. No exceptions<br/>"
            + "If you feel an admin is abusing their power, report them.";
    
    _rulesText set [ (count _rulesText), [ "1: Admins have final say.", _tmpStr ] ];
    
    // 2
    _tmpStr = "Hacking, exploiting or intentionally glitching is prohibited and will result in a ban.<br/>"
            + "No exceptions.";

    _rulesText set [ (count _rulesText), [ "2: No hacking or exploiting.", _tmpStr ] ];
    
    // 3
    _tmpStr = "Absolutely no Random-Deathmatching.<br/>"
            + "RDM is the quickest way to secure a ban on Stratis Life. RDM can fall under any of these categories:<br/>"
            + "    Killing somebody for no reason.<br/>"
            + "    Killing somebody who won’t do what you are saying.<br/>"
            + "    Killing somebody you don’t like.<br/>"
            + "    Running people over with cars.<br/>"
            + "    Anything else we deem to be RDM.<br/>"
            + "<br/>"
            + "Terrorism is no excuse for RDM.<br/>"
            + "<br/>"
            + "Before reporting somebody for RDM, please ask the person (who killed you) why they killed you. There may very well be a legitimate reason for killing you.";
    
    _rulesText set [ (count _rulesText), [ "3: No random deathmatching.", _tmpStr ] ];
    
    // 4
    _tmpStr = "Do not use global chat to converse or complain.<br/>"
            + "<br/>"
            + "If you have any concerns please follow the contact section.";
            
    _rulesText set [ (count _rulesText), [ "4: Stay off of global chat.", _tmpStr ] ];
    
    // 5
    _tmpStr = "Police must be in Teamspeak AT ALL TIMES."
            + "<br/>"
            + "View the contact section for details.";
    
    _rulesText set [ (count _rulesText), [ "5: Police must be on teamspeak.", _tmpStr ] ];
    
    // 6
    _tmpStr = "Don't park your car in popular areas such as:<br/>"
            + "    Civ spawn<br/>"
            + "    Petrol station/garage<br/>"
            + "    Middle of roads.";
            
    _rulesText set [ (count _rulesText), [ "6: Be considerate when parking.", _tmpStr ] ];
    
    // 7
    _tmpStr = "Anything said in teamspeak is not in character.<br/>"
            + "Use it as a means of general chat and long distance communication/cooperation.";
            
    _rulesText set [ (count _rulesText), [ "7: Teamspeak is not in character.", _tmpStr ] ];
    
    // 8
    _tmpStr = "If you are restrained, you must, at all times, follow the orders of the police.<br/>"
            + "This is void if all nearby officers are dead or if the police leave.";
            
    _rulesText set [ (count _rulesText), [ "8: Follow police orders.", _tmpStr ] ];
    
    // 9
    _tmpStr = "Re-spawning to get out of being arrested/restrained is cheating. You will be kicked.";
    
    _rulesText set [ (count _rulesText), [ "9: Don't abuse respawn.", _tmpStr ] ];
    
    // 10
    _tmpStr = "No Ghosting. This means you may not release information over chat or in Teamspeak after you are dead.";
    
    _rulesText set [ (count _rulesText), [ "10: No ghosting.", _tmpStr ] ];
    
    // 11
    _tmpStr = "Stealing is allowed, but follow these rules when doing so:<br/>"
            + "    You may NOT steal from somebodies backpack (unless they are dead) or the gear of somebodies car. If you are caught doing this, you will receive a kick.<br/>"
            + "    Stealing from Police weapons boxes or vehicles is not allowed, and you will be kicked.<br/>"
            + "    Stealing Police equipment from anywhere outside Cop compounds is fair game, but illegal. Deadly force is authorized against civilians with Cop equipment (Uniforms, Vehicles, Assault Rifles).<br/>"
            + "    You may not steal a vehicle as soon as it is spawned.";
    
    _rulesText set [ (count _rulesText), [ "11: Theft/stealing is restricted.", _tmpStr ] ];
    
    // 12
    _tmpStr = "If you're killed by a civilian from another gang, or by a police officer, you start a new life.<br/>"
            + "If you die any other way (crashing your car into a tree, jumping off a building, hitting respawn, etc) you keep your life and you will retain all warrants for your arrest.";
            
    _rulesText set [ (count _rulesText), [ "12: New life rule.", _tmpStr ] ];
    
    // 13
    _tmpStr = "Gang members must be in teamspeak on the gang/rebel channel. Non-Gang members may NOT be in a gang channel.<br/>"
            + "Gangs cannot fight each other unless war has been declared.<br/>"
            + "Wars can only be declared by gang leaders.<br/>"
            + "Killing or Stealing from another gang is considered a declaration of war.<br/>"
            + "Gang members may not kill unarmed rival gang members.";
            
    _rulesText set [ (count _rulesText), [ "13: Gang rules.", _tmpStr ] ];
    
    // 14
    _tmpStr = "Weapons must be holstered/lowered inside the city. If not, you may be arrested and or have your weapons confiscated.<br/>"
            + "Possession of an unlicensed weapons is illegal. You WILL be arrested and have your weapons confiscated.<br/>"
            + "Civilians with an unholstered weapon in the immediate vicinity of the bank can be killed or arrested without warning.";
    
    _rulesText set [ (count _rulesText), [ "14: Weapons must be lowered.", _tmpStr ] ];
    
    // 15
    _tmpStr = "Civilians may never land aircraft on any road. This is illegal.<br/>"
            + "Civilians may never land aircraft within city limits (unless it is a designated area, like a helipad or runway) If caught, you may be arrested.<br/>"
            + "If a person who is wanted for a crime is flying, they will be asked to land (even if they are outside of city limits)if they do not land the aircraft may be shot down by police.<br/>"
            + "Intentionally crashing an aircraft is not allowed at any time or for any reason.";
            
    _rulesText set [ (count _rulesText), [ "15: Flying/Landing is restricted.", _tmpStr ] ];
    
    // 16
    _tmpStr = "Cops MUST HAVE A NON LETHAL WEAPON.<br/>"
            + "Cops may use lethal force during bank robbery if the identity of the suspect is 100% confirmed. Cops cannot just go off tips.<br/>"
            + "LETHAL FORCE SHOULD ONLY BE USED IF YOUR LIFE IS IN IMMEDIATE DANGER (however there are occasions where lethal may be used even if your life is not in danger. For ex, a suspect who is wanted for murder may be killed at any time).<br/>"
            + "Cops MAY NEVER RANDOM SEARCH. An officer must have probable cause. (IE. Searching a civ that was near the bank while the bank was being robbed).<br/>"
            + "Cops can search civilians at any scene of a crime.<br/>"
            + "Police can search civilians if they are in or near an illegal location (IE. drug fields, whaling, black market, etc.. etc).<br/>"
            + "Being in the same vehicle as a wanted felon is probable cause for search.<br/>"
            + "Cops may fire upon a vehicle that has attempted to hit them, if taking fire or vehicle has a murder suspect.<br/>"
            + "Cops must obey traffic laws unless they are responding to a call.<br/>"
            + "Police must have their sirens on if responding to a call.<br/>"
            + "Cops must ask the owner to move any illegally parked vehicle. If the owner refuses or doesn’t respond, the car will be impounded without compensation.<br/>"
            + "Any vehicle used in a crime must be impounded.<br/>"
            + "Cops may not randomly impound vehicles.<br/>"
            + "Police may never destroy an unarmed civilian vehicle UNLESS the civilian intentionally uses the vehicle to block or ram police vehicles.<br/>"
            + "Evading the police, even if a collision ensues, is NOT cause to destroy a civilians car.<br/>"
            + "Any weapon used in a crime can be confiscated.<br/>"
            + "During a traffic stop, police should never search a civilian or ask a civilian to put their hands up.<br/>"
            + "Cops cannot camp the bank. They may patrol these areas but may not stay for an extended period of time.<br/>"
            + "Cops may NOT check for gun license of unwanted civs outside of a town, unless the civilian is operating the weapon unsafely by firing across a roadway or firing towards buildings.<br/>"
            + "The coast guard (cops in boats) may stop and search any boat and its occupants at any time. Cops who are not using boats may not search a civs watercraft without probable cause.<br/>"
            + "The coast guard (cops in boats) may kill a civ that is fleeing in a watercraft. They must, however, give them fair warning before hand..<br/>"
            + "Cops may restrain civs for their own safety if they feel their lives are in danger. Cops cannot restrain civilians during routine traffic stops.<br/>"
            + "Cops may search any civilian and vehicle at any manned checkpoint.<br/>"
            + "When a civ is restrained the police must tell the civ what the charges are.<br/>"
            + "The firearms dealer is a legal shop and a civ being near it is not a reason to search them.<br/>"
            + "The cops may execute search warrants if a player has attempted to murder police officers with a gun.<br/>"
            + "The police must announce and actually serve the warrant within 5 minutes of announcing or you cannot search.<br/>"
            + "Cops may not announce another search warrant for the same crime if they fail to execute it the first time.<br/>"
            + "Cops may not call a 2nd search warrant for the same crime even they successfully execute the first one. All searches must be done within the 5 minutes of the first announcement.<br/>"
            + "The cops may also serve warrants anywhere they have probable cause to believe a felony.";
            
    _rulesText set [ (count _rulesText), [ "16: Cop rules.", _tmpStr ] ];

    // Create a main item on the left map panel
    player createDiarySubject [ "MOGRules", _rulesTitle ];
    
    // loop through all the rules and add them into the map under the newly created .
    for [ {_i = (count _rulesText) - 1}, {_i >= 0 }, {_i = _i - 1} ] do
    {
        _ruleTitle = (_rulesText select _i) select 0;
        _ruleDescription = (_rulesText select _i) select 1;
        
        player createDiaryRecord ["MOGRules", [ _ruleTitle, _ruleDescription ] ];
    };
    
/* End of Multi Op Gaming Rules */
