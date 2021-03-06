events-processing
acceptDroppingMorph: aMorph event: anEvent
	
	| newMorph isNewMorph |
	(aMorph isKindOf: SFloatingCodeSnippet) ifTrue: [ ^ self ].
	(aMorph isKindOf: SEntryMorph) ifTrue: [ ^ self ].
	aMorph class == SDebugRectangleMorph ifTrue: [ ^ super acceptDroppingMorph: aMorph event: anEvent ].
	(self carriesAcceptableClassCategory: aMorph) ifTrue: 
		[ ^ self acceptClassCategory: aMorph ].
	newMorph := aMorph asClassDiagramMorph.
	isNewMorph := false. "TODO -- find clean way to distinguish between dragged morph and really new morph. Checking the classMorphs collection or the newMorph owner does not work."
	super acceptDroppingMorph: newMorph event: anEvent.
	newMorph isClassMorph & (isNewMorph | aMorph isClassMorph not)
		ifTrue: [
			newMorph showLabels: labelsHidden not.
			newMorph optionallyOpenConnectors ].