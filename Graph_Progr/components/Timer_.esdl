package components;

static class Timer_
reads accStateChange.newState {
	characteristic real c = 0.0;
	boolean v;
	real v_2;

	@generated("blockdiagram")
	@thread
	public void calc() {
		Timer.turn(accStateChange.newState, DeltaTimeService.deltaT); // Main/calc 1
	}
}