package components;

static class Module
reads breakpedMessage.breakpedPosition, gaspedMessage.gaspedPosition {
	real trackPosition;
	Component Component_instance;
	real dh;
	real v;
	real totalDistance;
	real dtime;

	@thread
	@generated("blockdiagram")
	public void calc() {
		trackPosition = ContinousTrack.getTrackPosition(Component_instance.getPosition(), Component_instance.get_ds(), Component_instance.getTracksize()); // Main/calc 1
		dh = Component_instance.get_dh(); // Main/calc 2
		v = Component_instance.get_v(); // Main/calc 3
		totalDistance = ContinousTrack.getTotalDistance(); // Main/calc 4
		Component_instance.calc(breakpedMessage.breakpedPosition, gaspedMessage.gaspedPosition, DeltaTimeService.deltaT); // Main/calc 5
	}
}