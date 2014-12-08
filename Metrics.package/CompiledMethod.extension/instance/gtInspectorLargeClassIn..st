*metrics
gtInspectorLargeClassIn: composite
	<gtInspectorPresentationOrder: 30> 
	composite list 
		title: (LargeMethodMetric default niceValueFor: self) , ' Large';
		display: [ :class | LargeMethodMetric default metrics ];
		format: [ :metric | (metric niceValueFor: self) , ' ', metric class name]