instance creation
newOn: aPackages

	^ self new
		initializePackages: aPackages;
		yourself