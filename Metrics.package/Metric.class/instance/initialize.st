initialization
initialize
	super initialize.
	population := self population.
	average := population average: self metric.
	standardDeviation := population standardDeviation: self metric