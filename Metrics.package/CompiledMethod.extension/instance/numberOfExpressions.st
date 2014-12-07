*metrics
numberOfExpressions

	^ self propertyValueAt: #numberOfExpressions ifAbsent: [ 
		self
			propertyValueAt: #numberOfExpressions
			put: (self parseTree allChildren select: #isValue) size ]