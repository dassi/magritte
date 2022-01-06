accessing-properties
undefinedValue
	self flag: 'could this be simplified with maLazyXyz?'.
	^ (self propertyAt: #undefinedValue ifAbsent: [ self class defaultUndefinedValue ])
		ifNil: [ self class defaultUndefinedValue ]