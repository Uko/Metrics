complexity
highValueFor: anEntity

	"^ 1 - ((self metric value: anEntity) gaussMF: standardDeviation * (0.9 sqrt) c: average)"
	
	(self metric value: anEntity) in: [ :val |
		val < average ifTrue: [ ^ 0 ].
		val < ((average + standardDeviation) * 1.5) ifTrue: [
			^ (val - average) / ((average + standardDeviation) * 1.5 - average) ].
		^ 1 ]