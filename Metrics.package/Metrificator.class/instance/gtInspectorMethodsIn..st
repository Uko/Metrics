as yet unclassified
gtInspectorMethodsIn: composite
	<gtInspectorPresentationOrder: 30>
	^ composite table
		title: [ 'Methods' ];
		display: [ self methods ];
		column: 'Comlpexity'
		evaluated: [ :m | LargeMethodMetric default niceValueFor: m ]
		width: 80
		tags: nil
		sortedBy: [ :a :b |
			(LargeMethodMetric default valueFor: a) >
			(LargeMethodMetric default valueFor: b) ];
		column: 'Class' evaluated: #methodClass sortedBy: [ :a :b |
			(a methodClass name) <
			(b methodClass name) ];
		column: 'Method' evaluated: #selector sortedBy: [ :a :b |
			(a selector name) <
			(b selector name) ];
		send: #yourself