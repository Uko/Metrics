*metrics
pragmaticMethods
	| methods |
	
	methods := self localMethods.
	^ self isMeta  
		ifTrue: [ methods ]
		ifFalse: [ methods, self class pragmaticMethods ]