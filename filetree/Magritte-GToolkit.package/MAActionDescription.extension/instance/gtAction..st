*Magritte-GToolkit
gtAction: aValuable
	"aValuable - optional arguments:
		- aGtPhlowNoAction (same as the argument to a standard GT action method)
		- this description
		- NB. the receiver is *not* passed as an argument, because it should be available in the description creation method"

	^ self propertyAt: #gtAction put: aValuable