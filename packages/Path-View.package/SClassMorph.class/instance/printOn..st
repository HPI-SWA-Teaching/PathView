printing
printOn: stream
	
	super printOn: stream.
	stream
		nextPut: $<;
		nextPutAll: klass name;
		nextPut: $>.