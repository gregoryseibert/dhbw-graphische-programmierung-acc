package components;

static class Driver 
writes gaspedMessage.gaspedPosition , breakpedMessage.breakpedPosition, accStateChange.newState, accMessage.accIsActive, accMessage.accTargetSpeed {
	
	characteristic real inGaspedPosition = 0.0;
	characteristic real inBreakpedPosition = 0.0;
	
	characteristic boolean accIsActive = false;
	characteristic real accTargetSpeed = 0.0;
	
	boolean turnAccOn = false;
	
	boolean turnAccOff = false;
	
	boolean accState = false;
	boolean newState= false;
	public void setAcc(){
		
		newState=false;
		if (turnAccOn && !accState) {
			
			accState = turnAccOn;
			turnAccOn = false;
			
		}
		
		if (turnAccOff && accState) {
			
			newState=true;
			turnAccOff = false;
			accState = turnAccOff;
			
		}
		
		if (turnAccOn && turnAccOff) {
			
			accState = false;
			
		}
		
	}
	
	
	@thread
	public void drive() {
		gaspedMessage.gaspedPosition = inGaspedPosition;
		breakpedMessage.breakpedPosition = inBreakpedPosition;
		accStateChange.newState = newState; 
		setAcc();
		
		accMessage.accIsActive = accIsActive;
		accMessage.accTargetSpeed = accTargetSpeed;
	}
}