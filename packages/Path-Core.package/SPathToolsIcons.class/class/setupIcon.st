accessing
setupIcon
	"Auto-generated.
	
	Free Disabled Button Icons
	© 2000-2013 Aha-Soft
	Website: http://www.aha-soft.com/support.htm
	License: http://creativecommons.org/licenses/by/3.0/us/"
	
	^ Icons
		at: #fugueSetup
		ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self setupIconContents readStream) ].