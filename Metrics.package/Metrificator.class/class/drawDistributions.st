as yet unclassified
drawDistributions
	ClassMetric allSubclasses,
	MethodMetric allSubclasses
		do: [ :m | self drawDistributionFor: m default ]
		displayingProgress: [ :m | 'Plotting ', m name ]