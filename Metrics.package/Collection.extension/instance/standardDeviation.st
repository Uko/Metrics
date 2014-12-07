*metrics
standardDeviation

	| average |
	
	average := self average.
	
	^ (self collect: [ :el | (el - average) squared ]) average sqrt 