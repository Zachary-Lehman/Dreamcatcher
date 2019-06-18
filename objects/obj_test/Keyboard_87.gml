//Moves selected character up
if (selected = true){
	if (stamina > 0){
		y -= 4;
		stamina += staminaUse;
		currentState = states.idle;
	}
}