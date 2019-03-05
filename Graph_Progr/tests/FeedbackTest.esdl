
package tests;
import assertLib.Assert;
import components.Driver;
import components.Timer;

static class FeedbackTest {
	
	@Test
	public void test1() {
		Timer.turn(true, 0.01);
		Assert.assertTrue(Timer.on);
		Timer.turn(false, 2.5);
		Timer.turn(false,1.0);
		Assert.assertFalse(Timer.on);
		
	}
}