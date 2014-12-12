*metrics
packagesFromUrl: aString

	^ RPackageOrganizer default packages select: [ :package |
     MCWorkingCopy allManagers
          detect: [ :each | each packageName = package name ]
          ifFound: [ :mc |
				mc repositoryGroup repositories anySatisfy: [ :each |
					each location = aString ] ]
          ifNone: [ false ] ].