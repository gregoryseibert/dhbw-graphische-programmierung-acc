package components;

class ACC {
	const real speedTolerance = 0.01;
	const real accPedPosition = 100.0;
	real prevGaspedPosition;
	real prevBrakepedPosition;
	real accGaspedPosition;
	real accBrakepedPosition;
	boolean isActive = false;
	
	public void calc(boolean isActive, real in brakepedPosition, real in gaspedPosition, real in v, real in targetSpeed) {
		this.isActive = isActive;
		
		if(!isActive) {
			this.prevBrakepedPosition = brakepedPosition;
			this.prevGaspedPosition = gaspedPosition;
			this.accBrakepedPosition = brakepedPosition;
			this.accGaspedPosition = gaspedPosition;
		
			return;
		}
		
		//if the brakeped position is set manually
		if(this.prevBrakepedPosition != brakepedPosition) {
			this.isActive = false;
			
			return;
		}
		
		//if the gasped position is set manually
		if(this.prevGaspedPosition != gaspedPosition) {
			setGaspedPosition(gaspedPosition);
			
			return;
		}
		
		this.prevBrakepedPosition = brakepedPosition;
		this.prevGaspedPosition = gaspedPosition;
		
		if(v > targetSpeed + targetSpeed * speedTolerance) {
			setBrakepedPosition(accPedPosition);
		}
		
		if(v < targetSpeed - targetSpeed * speedTolerance) {
			setGaspedPosition(accPedPosition);
		}
	}
	
	private void setGaspedPosition(real position) {
		this.accGaspedPosition = position;
		this.accBrakepedPosition = 0.0;
	}
	
	private void setBrakepedPosition(real position) {
		this.accGaspedPosition = 0.0;
		this.accBrakepedPosition = position;
	}
	
	public real getGaspedPosition () {
		return accGaspedPosition;
	}
	
	public real getBrakepedPosition () {
		return accBrakepedPosition;
	}
	
	public boolean getIsActive() {
		return isActive;

	}
}