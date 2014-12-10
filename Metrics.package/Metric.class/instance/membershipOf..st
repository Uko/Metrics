member
membershipOf: anEntity

	^ (self metric value: anEntity) gaussMF: standardDeviation * (0.5 sqrt) c: average