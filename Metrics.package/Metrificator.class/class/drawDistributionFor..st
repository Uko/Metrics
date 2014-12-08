as yet unclassified
drawDistributionFor: aMetric
	| methods b ds |
	methods := aMetric population groupedBy: aMetric metric.
	methods := methods associations sortedAs: #key.

	b := RTGrapherBuilder new.
	b extent: 800 @ 400.
	
	ds := RTDataSet new.
	"ds noDot."
	ds points: methods.
	ds connectColor: Color red.
	ds x: [ :el | el key ].
	ds y: [ :el | el value size ].
	b add: ds.
	
	b axisXWithNumberOfTicks: 10.
	b axisYWithNumberOfTicks: 5.
	
	b build.
	
	b := RTLegendBuilder new
		view: b view;
		addText: aMetric class name;
		yourself.

	b open