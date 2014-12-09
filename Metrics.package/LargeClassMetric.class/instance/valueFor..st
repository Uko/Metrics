as yet unclassified
valueFor: anEntity
	^ "(NOMMetric default highValueFor: anEntity) ||
		(NOIVMetric default highValueFor: anEntity) || "
			((NOMMetric default valueFor: anEntity) &&
			(NOIVMetric default valueFor: anEntity))