type contracts
expectElementsOf: aCollection toBeKindOf: aType
	aCollection isCollection ifFalse: [^ self].
	aCollection ifNil: [^ self].
	aCollection do: [:each | self expect: each toBeKindOf: aType. ^ self]