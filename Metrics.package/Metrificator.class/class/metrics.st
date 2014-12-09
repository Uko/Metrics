metrics
metrics

	^ ClassMetric allSubclasses,
	  MethodMetric allSubclasses
		collect: #default