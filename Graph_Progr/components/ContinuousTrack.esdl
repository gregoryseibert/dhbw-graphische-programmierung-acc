package components;

static class ContinuousTrack {
	real totalDistance = 0.0;
	
	public real getTrackPosition(real position, real ds, real trackSize) {
		totalDistance += ds;
		
		if (position + ds > trackSize) {
			return position + ds - trackSize;
		}
		
		if (position + ds < 0.0) {
			return trackSize - position + ds;
		}
		
		return (ds + position);
	}
	
	@no_side_effect
	public real getTotalDistance() {
		return totalDistance;
	}
}