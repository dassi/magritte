*Magritte-Model
cull: receiverObject cull: argumentObject 
	^ receiverObject perform: self withEnoughArguments: { argumentObject }