support
privateReferencesTo: aSelector 
	| methods |
	methods := OrderedCollection new.
	self allClassesDo: [ :class |
		(class whichSelectorsReferToSymbol: aSelector)
			do: [ :selector | methods add: (class methodFor: selector) ] ].
	^ methods