testing
isVeryHightFor: anEntity

	

	^ (self metric value: anEntity) > (average + standardDeviation)