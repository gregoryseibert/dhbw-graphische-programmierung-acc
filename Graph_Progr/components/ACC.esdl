package components;

static class ACC {
	sysconst boolean schaltstellung = false;
	boolean temp;
	boolean res;
	real output;
	characteristic real c = 0.0;
	real v;

	@generated("blockdiagram")
	@thread
	public void calc() {
	}
}