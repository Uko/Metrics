complexity
highValueFor: anEntity

	"^ 1 - ((self metric value: anEntity) gaussMF: standardDeviation * (0.9 sqrt) c: average)"
	
	"(self metric value: anEntity) in: [ :val |
		val < average ifTrue: [ ^ 0 ].
		val < ((average + standardDeviation) * 1.5) ifTrue: [
			^ (val - average) / ((average + standardDeviation) * 1.5 - average) ].
		^ 1 ]"
	
	(self metric value: anEntity) in: [ :val |
		| midpoint |
		midpoint := (max + average + standardDeviation) / 2.
		val < average ifTrue: [ ^ 0 ].
		val < (average + standardDeviation) ifTrue: [
			^ (val - average) / standardDeviation / 2 ].
		val < midpoint ifTrue: [
			^ 0.5 / (midpoint - average - standardDeviation) * (val - average - standardDeviation) + 0.5 ].
		^ 1 ]