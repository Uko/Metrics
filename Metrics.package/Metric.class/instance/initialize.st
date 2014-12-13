initialization
initialize
	super initialize.
	population := self population.
	average := population average: self metric.
	standardDeviation := population standardDeviation: self metric.
	max := self metric value: (population detectMax: [ :e | self metric value: e ])