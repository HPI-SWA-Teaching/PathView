api callouts
apiCreate: anAffPath dPath: anDPath
	<cdecl: void* 'Hunspell_create' (char* char*) module:'libhunspell.dll'>
	^self externalCallFailed