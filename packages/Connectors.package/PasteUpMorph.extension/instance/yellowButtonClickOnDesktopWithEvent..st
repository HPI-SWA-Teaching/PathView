*connectors-world menu-override
yellowButtonClickOnDesktopWithEvent: evt 
	"Put up either the personalized menu or the world menu when 
	the user clicks on the morphic desktop with the yellow button. 
	The preference 'personalizedWorldMenu' governs which one 
	is used"
	| aMenu |
	Preferences personalizedWorldMenu
		ifTrue: [aMenu := MenuMorph new defaultTarget: self.
			Preferences personalizeUserMenu: aMenu.
			aMenu addLine.
			aMenu
				add: 'personalize...' translated
				target: Preferences
				action: #letUserPersonalizeMenu]
		ifFalse: [aMenu := self buildWorldMenu: evt.
			aMenu addTitle: 'World' translated].
	Preferences cmdGesturesEnabled ifTrue: [
		self addGraphModelYellowButtonItemsTo: aMenu event: evt ].
	aMenu popUpEvent: evt in: self