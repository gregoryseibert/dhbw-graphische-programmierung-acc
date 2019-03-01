package components;

static class ContinousTrack {
	static real totalDistance = 0.0;
	
	public real getTrackPosition(real position, real ds, real trackSize) {
		totalDistance += ds;
		
		if (position + ds > trackSize) {
			return position + ds - trackSize;
		}
		
		return (ds + position);
	}
	
	@no_side_effect
	public real getTotalDistance() {
		return totalDistance;
	}
}