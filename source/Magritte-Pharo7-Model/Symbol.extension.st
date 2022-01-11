Extension { #name : #Symbol }

{ #category : #'*Magritte-Pharo7-Model' }
Symbol >> cull: receiverObject cull: argumentObject [ 
	^ receiverObject perform: self withEnoughArguments: { argumentObject }
]
