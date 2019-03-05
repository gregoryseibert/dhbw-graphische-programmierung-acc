package components;

import components.ContinuousTrack;

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
		Component_instance.calc(breakpedMessage.breakpedPosition, gaspedMessage.gaspedPosition, DeltaTimeService.deltaT); // Main/calc 1
		trackPosition = ContinuousTrack.getTrackPosition(Component_instance.getPosition(), Component_instance.get_ds(), Component_instance.getTracksize()); // Main/calc 2
		dh = Component_instance.get_dh(); // Main/calc 3
		v = Component_instance.get_v(); // Main/calc 4
		totalDistance = ContinuousTrack.getTotalDistance(); // Main/calc 5
	}
}