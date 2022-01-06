Extension { #name : #MAElementDescription }

{ #category : #'*Magritte-Pharo7-Model' }
MAElementDescription >> printFor: anObject on: aWriteStream [ 
	(self read: anObject) ifNotNil: [ :value | aWriteStream nextPutAll: (self toString: value) ] 
]
