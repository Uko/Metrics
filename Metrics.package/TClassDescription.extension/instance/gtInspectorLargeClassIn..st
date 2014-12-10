*metrics
gtInspectorLargeClassIn: composite
	<gtInspectorPresentationOrder: 30> 
	composite table 
		title: (LargeClassMetric default niceValueFor: self) , ' Large';
		when: [ :class | class isMeta not ];
		display: [ :class | LargeClassMetric default metrics ];
		column: 'High'
		evaluated: [ :m | (m valueFor: self) round: 2 ]
		width: 60;
		
		column: 'Very high'
		evaluated: [ :m | (m highValueFor: self) round: 2 ]
		width: 80;
		
		column: 'Metric'
		evaluated: [ :m | m metric value:self ]
		width: 60;
		
		column: 'Name' evaluated: #name sortedBy: [ :a :b |
			(a name) <
			(b name) ];
		send: #yourself