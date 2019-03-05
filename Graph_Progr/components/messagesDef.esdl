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

data interface accStateChange{
	boolean newState=false;
}