package components;

type Table is table real -> real;
type Field is table real, real -> real;

class Component {
	real s;
	characteristic real TrackSize = 1000.0;
	real v;
	real ds;
	real h;
	real dh;
	real momentum;
	characteristic Field EngineMomentum = {{0.0, 5.0, 20.0, 60.126582278481, 80.0, 100.0}, {0.0, 30.0, 60.0, 90.0, 150.0, 200.0}, {{0.0, 0.0, 0.0, 0.0, 0.0, 0.0}, {0.0, 0.0, 0.0, 0.0, 0.0, 0.0}, {0.849999999999999, 0.6, 0.3, 0.0, 0.0, 0.0}, {3.15, 2.35, 1.55, 0.800000000000001, 0.399999999999999, 0.0}, {4.5, 3.6, 2.7, 1.5, 0.9, 0.0}, {5.0, 4.5, 3.8, 2.8, 1.9, 0.0}}};
	characteristic Table BrakeMomentum = {{0.0, 1.0, 40.0, 60.0, 80.0, 100.0}, {0.0, 0.0, -1.0, -2.0, -3.0, -4.0}};
	characteristic Table AirFriction = {{0.0, 30.0, 60.0, 90.0, 120.0, 150.0}, {0.0, -0.1, -0.2, -0.4, -0.8, -1.6}};
	static characteristic Table Landscape = {{0.0, 100.0, 145.569620253165, 202.53164556962, 221.518987341772, 240.0, 259.493670886076, 300.0, 350.0, 400.0, 450.0, 500.0, 600.0, 700.0, 750.0, 800.0, 810.0, 850.0, 900.0, 1000.0}, {0.0, 4.0, 7.125, 10.375, 10.75, 10.5, 9.0, 5.375, 2.625, 0.625, 1.25, 0.625, 0.0, 0.0, 1.375, 0.75, 0.375, 0.625, 0.0, 0.0}};

	@generated("blockdiagram")
	public void calc(real in brake, real in power, real in dtime) {
		ds = ((v * dtime) / 3.6); // Main/calc 1
		dh = (h - Landscape.getAt(s)); // Main/calc 2
		h = Landscape.getAt(s); // Main/calc 3
		momentum = EngineMomentum.getAt(power, v); // Main/calc 4
		v = ((3.6 * (BrakeMomentum.getAt((0.0 + brake)) + momentum + AirFriction.getAt(v) + (9.81 * (dh / ds))) * dtime) + v); // Main/calc 5
		s = (ds + s); // Main/calc 6
		if (s > TrackSize) {
			s = 0.0; // Main/calc 7/if-then 1
		} // Main/calc 7
		if (v < 0.0) {
			v = 0.0; // Main/calc 8/if-then 1
		} // Main/calc 8
	}

	@generated("blockdiagram")
	public real get_v() {
		return v; // Main/get_v 1
	}

	@generated("blockdiagram")
	public real get_ds() {
		return ds; // Main/get_ds 1
	}

	@generated("blockdiagram")
	public real get_dh() {
		return dh; // Main/get_dh 1
	}

	@generated("blockdiagram")
	public real getPosition() {
		return s; // Main/getPosition 1
	}

	@generated("blockdiagram")
	public real getTracksize() {
		return TrackSize; // Main/getTracksize 1
	}
}