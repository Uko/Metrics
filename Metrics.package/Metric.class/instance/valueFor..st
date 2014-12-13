complexity
valueFor: anEntity

	"^ (anEntity perform: self metric) / (average + standardDeviation)"
	"^ (anEntity perform: self metric) sigmA: 2.5 / standardDeviation c: average"
	"^ 1 - (self membershipOf: anEntity)"
	"(self metric value: anEntity) in: [ :val |
		val < average ifTrue: [ ^ 0 ].
		val < (average + standardDeviation) ifTrue: [
			^ (val - average) / standardDeviation ].
		^ 1 ]"
	
	(self metric value: anEntity) in: [ :val |
		val < average ifTrue: [ ^ 0 ].
		val < (average + standardDeviation) ifTrue: [
			^ (val - average) / standardDeviation / 2 ].
		"val < average + (standardDeviation / 2) + (max / 2) ifTrue: [
			^ val / max ]".
		^ 0.5 / (max - average - standardDeviation) * (val - average - standardDeviation) + 0.5 ]