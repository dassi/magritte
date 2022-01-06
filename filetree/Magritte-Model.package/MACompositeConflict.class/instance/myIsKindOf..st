class membership
myIsKindOf: aClass
	"TBD GemStone does not allow to reimplement isKindOf:. Bad practice, anyway, so I stowed this away"

	"This is to pass #validateKind:"
	^ (super isKindOf: aClass) or: [ self kind = aClass ]