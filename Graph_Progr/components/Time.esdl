package components;
type TimeType is real 0.0 .. 100.0;
static class DeltaTimeService {
    /**
     * This value contains the delta time between two subsequent task activations in seconds
     */
    @dT
    public TimeType deltaT = 0.0;
    representation Float64Resolution {
        represent deltaT using {
            datatype = float64;
        };
    }
    representation FixpointMilliSecondResolution {
        represent deltaT using {
            datatype = uint32;
            delta = 1.0e-3; // millisecond resolution
        };
    }
}
