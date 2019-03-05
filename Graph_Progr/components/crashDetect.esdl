package components;

static class crashDetect
reads mes_crashDetect.crash
writes mes_accState.active {
	FuSi FuSi_instance_2;

	@generated("blockdiagram")
	@thread
	public void calc() {
		mes_accState.active = FuSi_instance_2.crashHandling(mes_crashDetect.crash); // Main/calc 1
	}
}