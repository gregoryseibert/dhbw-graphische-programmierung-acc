package components;

static class DriverBlock
writes gaspedMessage.gaspedPosition, breakpedMessage.breakpedPosition {
	characteristic MyBrakeppedalTable MyBrakeppedalTable_table = {{1.0, 2.0, 3.0}, {1.0, 2.0, 3.0}};
	characteristic MyGasppedalTable MyGasppedalTable_table = {{1.0, 2.0, 3.0}, {1.0, 2.0, 3.0}};
	characteristic real c = 0.0;
	real v;

	@generated("blockdiagram")
	public void calc(real in dtime) {
		gaspedMessage.gaspedPosition = MyGasppedalTable_table.getAt(v); // Main/calc 1
		breakpedMessage.breakpedPosition = MyBrakeppedalTable_table.getAt(v); // Main/calc 2
	}
}