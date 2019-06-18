//Moves selected character left
if (selected = true){
	if (stamina > 0){
		x -= 4;
		stamina += staminaUse;
		currentState = states.idle;
	}
}