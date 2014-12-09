complexity
highValueFor: anEntity

	^ 1 - ((anEntity perform: self metric) gaussMF: standardDeviation * 2 c: average)