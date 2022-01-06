visiting-description
visitBooleanDescription: aDescription
	| inputElement |
	inputElement := BrCheckbox new 
		aptitude: BrGlamorousCheckboxAptitude;
		checked: (aDescription read: self memento);
		whenCheckedDo: [ aDescription write: true to: self memento ];
		whenUncheckedDo: [ aDescription write: false to: self memento ].
	self addInputField: inputElement using: aDescription