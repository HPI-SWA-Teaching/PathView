building
toolbarButtons
	"The model for these button-actions is classDiagramMorph (an SClassDiagram).
	These buttons represent a toolbar; they contain actions for altering the contents of the class-diagram."
	
	^ #(
		('File' #fileMenu #alwaysEnabled)
		('Add class' #addClass #alwaysEnabled)
		('Add note' #addNote #alwaysEnabled)
		('Truncate' #truncateDiagram #alwaysEnabled)
		('Preferences' #openPreferences #alwaysEnabled)
		('Toggle lablels' #toggleLabels #alwaysEnabled)
		('Toggle grid' #griddingOnOff #alwaysEnabled)
		
"The auto-layout buttons are disabled; when deleting this, also delete all implementation-methods in SClassDiagram and SClassMorph."
"		('Trigger Auto Layout' #startLayouting #isLayoutNotRunning)
		('Lock Auto Layout' #lockLayouting #isLayoutUnlocked)
		('Stop Auto Layout' #stopLayouting #isLayoutRunning)
"
		)