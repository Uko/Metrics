*metrics
pragmaticMethods
	| methods |
	
	methods := self localMethods size.
	^ self isMeta  
		ifTrue: [ methods ]
		ifFalse: [ methods, self class pragmaticMethods ]