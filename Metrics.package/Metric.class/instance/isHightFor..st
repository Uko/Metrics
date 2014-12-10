testing
isHightFor: anEntity

	

	^ (self metric value: anEntity) between: average and: average + standardDeviation