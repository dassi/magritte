Extension { #name : #Symbol }

{ #category : #'*magritte-gemstone-model' }
	Symbol >> cull: receiverObject cull: argumentObject [
	"Send the selector, aSymbol, to the receiver with arguments in argArray.
	Only use enough arguments for the arity of the selector; supply nils for missing ones."

	| numArgs args |
	numArgs := self argumentCount.
	numArgs = 0
		ifTrue: [ ^ receiverObject perform: self ].
	numArgs = 1
		ifTrue: [ ^ receiverObject perform: self with: argumentObject ].
	args := Array new: numArgs.
	args at: 1 put: argumentObject.
	^ receiverObject perform: self withArguments: args
]