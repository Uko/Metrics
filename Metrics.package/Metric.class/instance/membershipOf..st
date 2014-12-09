member
membershipOf: anEntity

	^ (anEntity perform: self metric) gaussMF: standardDeviation c: average