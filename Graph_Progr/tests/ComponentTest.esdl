package tests;

import assertLib.Assert;

import components.ContinousTrack;
import components.Component;


type Table is table real -> real;

static class SlopeTests {
	characteristic real TrackSize = 1000.0;
	//real newPosition;
	real s = 0.0;
	real ds = 0.0;
	real dh = 0.0;
	Component Comp;
	real totaldist = 0.0 ;
	/*
	 * check slope is under 20%
	 */
	@Test
	public void testSlopeLimit() {
		
		while(totaldist < (2.0*TrackSize)) {
			Comp.calc(0.0, 100.0, 0.01);		
			dh = Comp.get_dh();
			ds = Comp.get_ds();
			s= ContinousTrack.getTrackPosition(s,ds,TrackSize);
			totaldist = ContinousTrack.getTotalDistance();
			Assert.assertTrue(dh/ds <= 0.2);
			Assert.assertTrue(dh/ds >= -0.2);		
		}
	}
}
