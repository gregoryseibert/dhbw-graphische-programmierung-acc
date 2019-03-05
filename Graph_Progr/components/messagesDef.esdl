package components;

data interface vMessage {
	
	real veloCar = 0.0;
	
}

data interface gaspedMessage {
	
	real gaspedPosition = 0.0;
	
}

data interface breakpedMessage {
	
	real breakpedPosition = 0.0;
	
}

data interface accMomentumMessage {
	
	real accMomentum = 0.0;
	
}

data interface mes_accState {
	
	boolean active = false;
}

data interface mes_crashDetect {
	
	boolean crash = false;
	
}

data interface accStateChange{
	boolean newState=false;
}

data interface accMessage {
	
	boolean accIsActive = false;
	
	real accTargetSpeed = 0.0;
}