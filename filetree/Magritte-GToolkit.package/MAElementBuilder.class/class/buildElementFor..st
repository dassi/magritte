as yet unclassified
buildElementFor: anObject
	^ self new
		object: anObject;
		visit: anObject magritteDescription