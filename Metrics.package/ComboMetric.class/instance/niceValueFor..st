complexity
niceValueFor: anEntity

	^ (((self valueFor: anEntity) * 100) printShowingDecimalPlaces: 0), '%'