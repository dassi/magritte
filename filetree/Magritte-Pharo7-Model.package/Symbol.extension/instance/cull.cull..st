*Magritte-Pharo7-Model
cull: receiverObject cull: argumentObject 
	^ receiverObject perform: self withEnoughArguments: { argumentObject }