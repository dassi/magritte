*Magritte-GToolkit
gtActionOf: anObject
	
	^ self
		propertyAt: #gtAction
		ifPresent: [ :valuable | 
			valuable cull: GtPhlowAction noAction cull: self ]
		ifAbsent: [ 
			| button |
			button := GtPhlowAction noAction button.
			self comment ifNotEmpty: [ :tt | button tooltip: tt ].
			self icon ifNotNil: [ :icn | button icon: icn ].
			button
				action: [ self performOn: anObject ];
				label: self label;
				yourself ].