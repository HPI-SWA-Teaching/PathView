building
scrollPane

	^ scrollPane ifNil: [
		scrollPane := SScrollPane forMorph: self viewAreaMorph.
		scrollPane borderWidth: 0.
		STool setFrame: (0 asPoint corner: 1 asPoint) in: scrollPane.
		scrollPane scrollBy: ((viewAreaMorph extent / 2) - (scrollPane scroller extent * 2)) negated.
		scrollPane ]