as yet unclassified
niceValueFor: anEntity

	^ (((self valueFor: anEntity) * 100) printShowingDecimalPlaces: 0), '%'