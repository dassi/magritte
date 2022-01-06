visiting-description
visitMemoDescription: aDescription
	| inputElement lineHeight resizableElement |
	self flag: 'Lots of duplication from standard inputElement creation; line height very rough based on 14 pt size - waiting on answer on Discord'.
	lineHeight := 14 * 1.5.
	inputElement := BrEditor new
		beEditable;
		text: (self textUsing: aDescription);
		aptitude: BrGlamorousEditorAptitude new glamorousRegularFontAndSize;
		vMatchParent;
		hMatchParent.
	inputElement editor when: BrTextEditorModifiedEvent
			do: [ :event | aDescription writeFromString: event text greaseString to: self memento ].
			
	resizableElement := BlElement new
		aptitude: BrGlamorousWithVerticalResizerAptitude;
		constraintsDo: [ :c | 
			c horizontal matchParent.
			c vertical exact: lineHeight * aDescription lineCount ];
		addChild: inputElement;
		yourself.
	
	self addInputField: resizableElement using: aDescription