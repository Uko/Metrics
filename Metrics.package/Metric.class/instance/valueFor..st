complexity
valueFor: anEntity

	"^ (anEntity perform: self metric) / (average + standardDeviation)"
	"^ (anEntity perform: self metric) sigmA: 2.5 / standardDeviation c: average"
	"^ 1 - (self membershipOf: anEntity)"
	
	(self metric value: anEntity) in: [ :val |
		val < average ifTrue: [ ^ 0 ].
		val < (average + standardDeviation) ifTrue: [
			^ (val - average) / standardDeviation ].
		^ 1 ]