//weapons
unarmed = 1;
assaultRifle = 2;
//weapon types
melee = 1;
gun = 2;
grenade = 3;
launcher = 4;
elemental = 5;
//initializes variables
target = -1;
currentState = states.idle;
spd = 7;
acc = .75;
stamina = 100;
selected = false;
weapon = 1;
predictedStaminaUse = distance_to_object(obj_mouseCursor);
staminaUse = -.5;
attacking = false;
ROF = 0;
weaponType = 1;
//draws certain GUI elements 
instance_create_depth(900, 400, 0, obj_endTurn);
instance_create_depth(0, 0, 0, obj_mouseCursor);