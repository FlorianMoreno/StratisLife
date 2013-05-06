/*
    Function: LIFE_fnc_swatLoadout
    
    Takes a player and kits them out with the default swat gear.
    
    example: [player] call LIFE_fnc_swatLoadout;
    player will be given default swat gear.
*/

_ply = _this select 0;

//remove everything

//Backpack
    removebackpack _ply;

//Uniform
    removeuniform _ply;
    _ply adduniform "U_O_PilotCoveralls";

//Headgear
    removeheadgear _ply;
    _ply addheadgear "H_HelmetB_paint";

//Vest
    removevest _ply;
    _ply addVest "V_PlateCarrierGL_rgr";

//Weapons
    removeAllWeapons _ply;
    
  //Primary
    _ply addWeapon "arifle_Khaybar_C_F";
    _ply addPrimaryWeaponItem "optic_Aco";
  
  //Secondary
    _ply addWeapon "hgun_P07_F";

//Magazines
    _ply addMagazines ["30Rnd_65x39_caseless_green", 9];
    _ply addMagazines ["16rnd_9x21_mag", 5];

//Grenades
    _ply addMagazines ["HandGrenade",1];

//Items
    _ply addItem "ItemGPS";
    _ply assignItem "itemGPS";
    
    _ply addItem "FirstAidKit";
    _ply addItem "FirstAidKit";
    _ply addItem "FirstAidKit";
    _ply addItem "FirstAidKit";
    _ply addItem "FirstAidKit";
    _ply addItem "FirstAidKit";

    // The Medikit takes up too much room and require a backpack.
    //_ply addItem "Medikit";
