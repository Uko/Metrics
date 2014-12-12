graphs
drawDistributionFor: aMetric
	| methods b ds |
	methods := aMetric population groupedBy: aMetric metric.
	methods := methods associations sortedAs: #key.

	b := RTGrapherBuilder new.
	b extent: 800 @ 400.
	
	ds := RTDataSet new.
	"ds noDot."
	ds points: methods.
	ds connectColor: Color blue.
	ds x: [ :el | el key ].
	ds y: [ :el | el value size ].
	b add: ds.
	
	ds := RTDataSet new.
	ds noDot.
	ds points: methods.
	ds connectColor: Color red.
	ds x: [ :el | el key ].
	ds y: [ :el | 
		(aMetric valueFor: el value anyOne) *
		(methods collect: [ :a | a value size ]) max ].
	b add: ds.

	ds := RTDataSet new.
	ds noDot.
	ds points: methods.
	ds connectColor: Color red muchLighter.
	ds x: [ :el | el key ].
	ds y: [ :el | 
		(aMetric highValueFor: el value anyOne) *
		(methods collect: [ :a | a value size ]) max ].
	b add: ds.
	
	b axisX.
	b axisY.
	
	b build.
	
	b := RTLegendBuilder new
		view: b view;
		addText: aMetric class name;
		yourself.

	b open