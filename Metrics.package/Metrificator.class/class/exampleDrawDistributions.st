graphs
exampleDrawDistributions
	self metrics
		do: [ :m | self drawDistributionFor: m ]
		displayingProgress: [ :m |
			'Plotting ', m name ]