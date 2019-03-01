application {
	class components.DeltaTimeService
	class components.Component
	class components.Driver
}
schedule {
	startup {
	}
	shutdown {
	}
	task Task0 priority 0 period 10ms delay 0ms {
		process components.Driver.drive
		process components.Component.vCar
	}
}