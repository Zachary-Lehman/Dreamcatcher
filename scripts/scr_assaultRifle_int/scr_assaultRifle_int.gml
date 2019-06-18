///assaultRifle_init
coneOfSightLeft = 20;
coneOfSightRight = -20;
coneLeft = (image_angle+coneOfSightLeft) mod 360;
coneRight = (image_angle+coneOfSightRight+360) mod 360;

coneOfSightLength = 500;
weapon = assaultRifle;
bulletOffset = 15;
bulletSpeed = 60;
ROF = 0;
weaponType = 2;