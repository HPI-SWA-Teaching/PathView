toolbar-actions
toggleLabels
	
	labelsHidden := labelsHidden not.
	classMorphs do: [ :classMorph | classMorph showLabels: labelsHidden not ].