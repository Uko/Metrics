as yet unclassified
isHightFor: anEntity

	

	^ (anEntity perform: self metric) between: average and: average + standardDeviation