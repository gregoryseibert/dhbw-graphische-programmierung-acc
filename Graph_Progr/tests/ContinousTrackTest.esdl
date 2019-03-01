package tests;

import assertLib.Assert;

import components.ContinousTrack;

static class ComponentTests {
	characteristic real TrackSize = 1000.0;
	real newPosition;
	real s;
	real ds;

	/*
	 * check increase distance works fine
	 */
	@Test
	public void testIncreaseDistance() {
		s = 0.0;
		ds = 10.0;
		
		newPosition = ContinousTrack.getTrackPosition(s, ds, TrackSize);

		Assert.assertTrue(newPosition == s + ds);
	}

	/*
	 * check decrease distance works fine
	 */
	@Test
	public void testDecreaseDistance() {
		s = 0.0;
		ds = -10.0;
		
		newPosition = ContinousTrack.getTrackPosition(s, ds, TrackSize);

		Assert.assertTrue(newPosition == s + ds);
	}

	/*
	 * check increase distance reset works fine
	 */
	@Test
	public void testIncreaseDistanceReset() {
		s = 990.0;
		ds = 15.0;
		
		newPosition = ContinousTrack.getTrackPosition(s, ds, TrackSize);

		Assert.assertTrue(newPosition == s + ds - TrackSize);
	}
}