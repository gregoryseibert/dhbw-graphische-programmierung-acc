package components;

static class Driver 
writes gaspedMessage.gaspedPosition , breakpedMessage.breakpedPosition{
	
	characteristic real inGaspedPosition = 0.0;
	characteristic real inBreakpedPosition = 0.0;
	
	boolean turnAccOn = false;
	
	boolean turnAccOff = false;
	
	boolean accState = false;
	
	public void setAcc(){
		
		
		if (turnAccOn && accState == false) {
			
			accState = turnAccOn;
			turnAccOn = false;
			
		}
		
		if (turnAccOff && accState == true) {
			
			accState = turnAccOff;
			turnAccOff = false;
			
		}
		
		if (turnAccOn == true && turnAccOff == true) {
			
			accState = false;
			
		}
		
	}
	
	
	@thread
	public void drive() {
		gaspedMessage.gaspedPosition = inGaspedPosition;
		breakpedMessage.breakpedPosition = inBreakpedPosition;
		
		setAcc();
		
		
	}
}