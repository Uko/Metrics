as yet unclassified
isVeryHightFor: anEntity

	

	^ (anEntity perform: self metric) > (average + standardDeviation)