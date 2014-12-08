as yet unclassified
valueFor: anEntity

	^ (anEntity perform: self metric) / (average + standardDeviation)