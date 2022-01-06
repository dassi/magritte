accessing
addInputFieldUsing: aDescription
	| inputElement |
	inputElement := BrEditableLabel new
		aptitude: BrGlamorousEditableLabelAptitude new glamorousRegularFontAndSize;
		vFitContent;
		hMatchParent;
		when: BrEditorAcceptWish
			do: [ :aWish | aDescription writeFromString: aWish text greaseString to: self memento ];
		text: (self textUsing: aDescription).
	self addInputField: inputElement using: aDescription