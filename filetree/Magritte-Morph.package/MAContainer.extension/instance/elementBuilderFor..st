*magritte-morph-converting
elementBuilderFor: anObject
	
	self flag: 'Commented out from #asMorphOn:'.
	"memento := anObject mementoClass
			model: anObject
			description: self."
	^ self blocClass buildElementFor: anObject"memento: memento"