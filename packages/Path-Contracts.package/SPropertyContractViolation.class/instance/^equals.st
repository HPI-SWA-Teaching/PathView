comparing
= other
	self class = other class
		ifFalse: [^ false].
	^ self methodReference = other methodReference 
		and: [self kindOf = other kindOf]
		and: [self givenProperty = other givenProperty]
		and: [self expectedProperty = other expectedProperty]
		and: [self expected = self expected]