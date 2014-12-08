*metrics
numberOfInstanceVariables
	"count all methods that are local (not comming from a trait)"
	| num |
	num := self instVarNames size.
	^ self isMeta  
		ifTrue: [ num ]
		ifFalse: [ num + self class numberOfInstanceVariables ] 