package components;

static class Timer
{
	
	public boolean on = false;
	real remTime=0.0;
	//wird nur einmal aufgerufen

	public void turn(boolean newState, real difTime) {
		if(newState){
			remTime=3.0;
			on=true;
		}
		remTime-=difTime;
		if(remTime<0.0){
			on=false;
		}
		
		
	}
}