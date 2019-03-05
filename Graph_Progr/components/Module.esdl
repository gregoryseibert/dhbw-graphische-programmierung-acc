package components;

static class Module
writes accMessage.accIsActive
reads breakpedMessage.breakpedPosition, gaspedMessage.gaspedPosition, accMessage.accTargetSpeed, accMessage.accIsActive {
	real trackPosition;
	Component Component_instance;
	real dh;
	real v;
	real totalDistance;
	real dtime;
	ACC ACC_instance;
	ACC ACC_instance_3;

	@thread
	@generated("blockdiagram")
	public void calc() {
		trackPosition = ContinuousTrack.getTrackPosition(Component_instance.getPosition(), Component_instance.get_ds(), Component_instance.getTracksize()); // Main/calc 1
		dh = Component_instance.get_dh(); // Main/calc 2
		v = Component_instance.get_v(); // Main/calc 3
		totalDistance = ContinuousTrack.getTotalDistance(); // Main/calc 4
		Component_instance.calc(ACC_instance_3.getBrakepedPosition(), ACC_instance_3.getGaspedPosition(), DeltaTimeService.deltaT); // Main/calc 5
		ACC_instance_3.calc(accMessage.accIsActive, breakpedMessage.breakpedPosition, gaspedMessage.gaspedPosition, Component_instance.get_v(), accMessage.accTargetSpeed); // Main/calc 6
		accMessage.accIsActive = ACC_instance_3.getIsActive(); // Main/calc 7
	}
}