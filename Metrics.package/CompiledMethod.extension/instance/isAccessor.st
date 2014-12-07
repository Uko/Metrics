*metrics
isAccessor
	| name |
	name := self selector.
	self selector last = $: ifTrue: [ 
		name := name allButLast ].
	
	^ self methodClass instVarNames includes: name