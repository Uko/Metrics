testing
isVeryHightFor: anEntity

	

	^ (anEntity perform: self metric) > (average + standardDeviation)