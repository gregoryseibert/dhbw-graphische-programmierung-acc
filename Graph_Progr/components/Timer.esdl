package components;

static class Timer
reads accStateChange.newState {
	boolean newState;
	static boolean on=false;
	real remTime=0.0;
	//wird nur einmal aufgerufen
	@thread
	public void turn() {
		newState = accStateChange.newState; 
		if(newState){
			remTime=3.0;
			on=true;
		}
		remTime-=DeltaTimeService.deltaT;
		if(remTime<0.0){
			on=false;
		}
		
		
	}
}