layout - assigning
assignCorners
	"Starting from a center node, recursively go through its neighbors and attach them as close as possible.
	Then, until all nodes are handled, pick a leftover node, attach it to the center node and attach all its neighbors as close as possible."
	
	| allNodes centerNode |
	allNodes := nodes copy.
	centerNode := self biggestNodeIn: allNodes.
	self recursivelyAttachTo: centerNode from: allNodes.
	[ allNodes notEmpty ] "If all nodes in this graph are interconnected, this loop will not even be entered."
		whileTrue: [ | nextNode |
			nextNode := self biggestNodeIn: allNodes.
			self attach: nextNode to: centerNode.
			self recursivelyAttachTo: nextNode from: allNodes ].