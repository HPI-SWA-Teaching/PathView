zooming
testZoomingWithSlider

	| pathView slider diagram newZoomLevel |

	pathView := SPathView privateNew buildWith: MorphicToolBuilder new.
	slider := (pathView allSubmorphsOfKind: UiSlider) asOrderedCollection first.
	diagram := (pathView allSubmorphsOfKind: SClassDiagram) asOrderedCollection first.
	newZoomLevel := 0.5.

	slider currentValue: newZoomLevel.
	self assert: [ diagram scrollPane scroller scale = newZoomLevel ]