rotate scale and flex
referencePosition 
	"Return the current reference position of the receiver"
	^ self valueOfProperty: #referencePosition ifAbsent: [ self midpoint ]
