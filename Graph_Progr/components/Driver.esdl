package components;

static class Driver 
writes gaspedMessage.gaspedPosition {
	@thread
	public void drive() {
		gaspedMessage.gaspedPosition = 30.0;
	}
}