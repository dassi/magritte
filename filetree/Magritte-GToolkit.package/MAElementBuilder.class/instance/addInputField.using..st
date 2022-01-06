accessing
addInputField: inputElement using: aDescription
	| labelElement diffElement |
	labelElement := BrLabel new
		text: aDescription label , ':';
		addEventHandlerOn: BlClickEvent
			do: [ :evt | evt target phlow spawnObject: (aDescription read: self object) ];
		aptitude: BrGlamorousLabelAptitude.
	labelElement constraintsDo: [ :c | 
			c vertical fitContent.
			c horizontal fitContent.
			c grid vertical alignCenter ].
	aDescription isRequired ifTrue: [ self flag: 'unsupported' ].
	aDescription hasComment ifTrue: [ 
		self addTooltip: aDescription comment to: labelElement.
		self addTooltip: aDescription comment to: inputElement ].
	"diffElement := BrEditor new
		text: inputElement text copy; ""if we don't copy, diff magically changes as input updates"
		"aptitude: BrGlamorousEditorAptitude".
	self form addChild: labelElement.
	self form addChild: inputElement.
	"self form addChild: diffElement."