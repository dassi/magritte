visiting-description
visitSingleOptionDescription: aDescription
	| inputElement |
	inputElement := MADropdownElement new 
		items: aDescription allOptions;
		itemDescription: aDescription reference;
		selection: (self memento readUsing: aDescription);
		when: MADropdownWish do: [ :aWish | 
			aDescription write: aWish selection to: self memento ];
		yourself.
	self addInputField: inputElement using: aDescription