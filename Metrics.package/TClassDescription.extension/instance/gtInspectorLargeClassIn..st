*metrics
gtInspectorLargeClassIn: composite
	<gtInspectorPresentationOrder: 30> 
	composite list 
		title: (LargeClassMetric default niceValueFor: self) , ' Large';
		when: [ :class | class isMeta not ];
		display: [ :class | LargeClassMetric default metrics ];
		format: [ :metric | (metric niceValueFor: self) , ' ', metric name]