*Path-Core
classAndMethodFor: aSymbol do: binaryBlock ifAbsent: absentBlock
	"Looks up the selector aSymbol in the class chain. If it is found, binaryBlock is evaluated
	with the class that defines the selector and the associated method. Otherwise
	absentBlock is evaluated."

	| method |
	self withAllSuperclassesDo: [:class |
		method := class compiledMethodAt: aSymbol ifAbsent: [nil].
		method ifNotNil: [^ binaryBlock value: class value: method].
	].
	^ absentBlock value.