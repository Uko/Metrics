gt
gtInspectorClassesIn: composite
	<gtInspectorPresentationOrder: 30>
	^ composite table
		title: [ 'Classes' ];
		display: [ self classes ];
		column: 'Comlpexity'
		evaluated: [ :m | LargeClassMetric default niceValueFor: m ]
		width: 80
		tags: nil
		sortedBy: [ :a :b |
			(LargeClassMetric default valueFor: a) >
			(LargeClassMetric default valueFor: b) ];
		column: 'Class' evaluated: #yourself sortedBy: [ :a :b |
			(a name) <
			(b name) ];
		send: #yourself