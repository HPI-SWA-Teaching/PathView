layout - positioning
assignPositionsFromColumnWidths: columnWidths rowHeights: rowHeights
	
	nodesToPositions keysAndValuesDo: [ :node :matrixPosition |
		node position: 
			((columnWidths at: matrixPosition x) - (node extent x / 2) + (matrixPosition x - 1 * self class minimumSpacing))
			@ ((rowHeights at: matrixPosition y) - (node extent y / 2) + (matrixPosition y - 1 * self class minimumSpacing)) ].