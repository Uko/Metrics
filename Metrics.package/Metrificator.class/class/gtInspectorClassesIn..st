gt
gtInspectorClassesIn: composite
	<gtInspectorPresentationOrder: 30>
	^ composite table
		title: [ 'Metrics' ];
		display: [ self metrics ];
		column: 'Metric'
		evaluated: [ :m | m name ]
		sortedBy: [ :a :b |
			a class name <
			b class name ];
		
		column: 'Average'
		evaluated: [ :m | m average round: 2 ]
		sortedBy: [ :a :b |
			(a average) <
			(b average) ];
		
		column: 'Standard deviation'
		evaluated: [ :m | m standardDeviation round: 2 ]
		sortedBy: [ :a :b |
			(a standardDeviation) <
			(b standardDeviation) ];
		
		send: #yourself