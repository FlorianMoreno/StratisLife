//Create a rabbit to rabbit group

//get the target rabbit area on the map.
_targetPosition = position trgRabbit;

// make the rabbits spawn randomly within the boundry.
_randomX = (random 80.0) - 40.0; // generate random number between -40 and 40
_randomY = (random 80.0) - 40.0;

_targetPosition set [0, ((_targetPosition select 0) + _randomX)];
_targetPosition set [1, ((_targetPosition select 1) + _randomY)];

_rabbit = groupRabbit createUnit ["Rabbit_F", _targetPosition,[],0,"NONE"];

//add a killed event to the new rabbit
_rabbit addEventHandler ["Killed", {[_this] execVM "farming\rabbitHunting\killedRabbit.sqf";}];