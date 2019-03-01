application {
	class tests.ComponentTest
}
schedule {
	startup {
	}
	shutdown {
	}
	task Task0 priority 0 period 10ms delay 0ms {
		process tests.ComponentTest.calc
		process tests.ComponentTest.get_v
		process tests.ComponentTest.get_ds
		process tests.ComponentTest.get_dh
	}
}