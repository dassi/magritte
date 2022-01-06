accessing
visitSingleOptionDescription: aDescription
	| inputElement items |
	self flag: 'lots of duplication with super implementation'.
	items := aDescription allOptions copyWith: MACompositeConflict new; yourself.
	inputElement := MADropdownElement new 
		items: items;
		itemDescription: aDescription reference;
		selection: (aDescription read: self memento);
		when: MADropdownWish do: [ :aWish | 
			aWish selection = MACompositeConflict new ifFalse: [ aDescription write: aWish selection to: self memento ] ];
		yourself.
	self addInputField: inputElement using: aDescription