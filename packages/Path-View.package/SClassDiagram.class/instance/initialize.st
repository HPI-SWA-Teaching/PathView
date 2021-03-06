initialization
initialize 
	
	super initialize.
	self
		extent: 1500@1500;
		borderColor: Color gray;
		color: Color white.
	classMorphs := OrderedCollection new.
	layoutingLocked := false.
	"Comment this in to enable the selection morph"
	"selectionMorph := SSelectionMorph new."
	dirty := false.
	labelsHidden := false.
	self currentHand newKeyboardFocus: self.
	self changed: #hasSubmorphs. "This deactivates 'Save as PNG' button."
	savedStates := Dictionary new.
	self saveState.
	openMutex := Mutex new.