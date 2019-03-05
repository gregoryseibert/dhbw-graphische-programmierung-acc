package tests;

import assertLib.Assert;
import components.FuSi;

static class FusiTest {
	FuSi test;
		
	/*
	 * check Fusi:
	 * 1.	Turn the ACC on
		2.	Trigger Crash
		3.	Check if ACC is turned off
	 
	 */
	@Test
	public void testCrashDetect() {
		boolean value1 = test.crashHandling(true);
		boolean value2 = test.crashHandling(false);
				Assert.assertFalse(value1);
				Assert.assertFalse(value2);
		

	}
}