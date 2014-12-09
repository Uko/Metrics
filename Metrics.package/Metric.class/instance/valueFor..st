complexity
valueFor: anEntity

	"^ (anEntity perform: self metric) / (average + standardDeviation)"
	"^ (anEntity perform: self metric) sigmA: 2.5 / standardDeviation c: average"
	
	^ 1 - (self membershipOf: anEntity) 