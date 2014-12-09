complexity
valueFor: anEntity

	^ metrics inject: 0 into: [ :value :metric |
		value max: (metric valueFor: anEntity) ] 