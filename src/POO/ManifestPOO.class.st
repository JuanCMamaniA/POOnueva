"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestPOO,
	#superclass : #PackageManifest,
	#category : #'POO-Manifest'
}

{ #category : #'code-critics' }
ManifestPOO class >> ruleClassNotReferencedRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#Auto)) #'2023-03-24T12:19:07.355-03:00') #(#(#RGClassDefinition #(#Persona)) #'2023-03-24T12:19:29.313-03:00') #(#(#RGClassDefinition #(#Fiesta)) #'2023-03-24T18:27:25.689-03:00') #(#(#RGClassDefinition #(#Artista)) #'2023-03-24T19:20:24.858-03:00') #(#(#RGClassDefinition #(#AR)) #'2023-03-24T19:33:57.992-03:00') )
]

{ #category : #'code-critics' }
ManifestPOO class >> ruleDetectContainsRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#Fiesta)) #'2023-04-12T11:05:09.391-03:00') )
]

{ #category : #'code-critics' }
ManifestPOO class >> ruleEqualsTrueRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#Fiesta)) #'2023-04-12T10:49:07.031-03:00') )
]

{ #category : #'code-critics' }
ManifestPOO class >> ruleExcessiveArgumentsRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#Auto)) #'2023-03-24T12:57:27.542-03:00') #(#(#RGMethodDefinition #(#Cliente #crearDni:nombreyapellido:telefono:tarjetaDecredito:fechaVencimiento: #false)) #'2023-03-24T16:45:22.645-03:00') #(#(#RGMethodDefinition #(#Artista #crearNombre:apellido:tipo:dni:telefono:email: #false)) #'2023-03-24T19:13:41.013-03:00') )
]

{ #category : #'code-critics' }
ManifestPOO class >> ruleInconsistentMethodClassificationRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Auto #printString #false)) #'2023-03-24T13:37:46.334-03:00') )
]

{ #category : #'code-critics' }
ManifestPOO class >> ruleNoUnusedInstanceVariableRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#Fiesta)) #'2023-03-24T18:27:15.452-03:00') )
]

{ #category : #'code-critics' }
ManifestPOO class >> ruleReClassNotCategorizedRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#Auto)) #'2023-03-24T12:19:15.248-03:00') #(#(#RGClassDefinition #(#Persona)) #'2023-03-24T12:19:33.475-03:00') #(#(#RGClassDefinition #(#Fiesta)) #'2023-03-24T18:27:22.055-03:00') #(#(#RGClassDefinition #(#Artista)) #'2023-03-24T19:20:28.474-03:00') #(#(#RGClassDefinition #(#AR)) #'2023-03-24T19:34:03.125-03:00') )
]

{ #category : #'code-critics' }
ManifestPOO class >> ruleReIvarNeitherReadNorWrittenRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#Fiesta)) #'2023-03-24T18:27:19.073-03:00') )
]

{ #category : #'code-critics' }
ManifestPOO class >> ruleSelfSentNotImplementedRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Auto #equals: #false)) #'2023-03-24T14:41:25.411-03:00') #(#(#RGMethodDefinition #(#Auto #comparar: #false)) #'2023-03-24T14:43:26.799-03:00') #(#(#RGMethodDefinition #(#Camion #crearMatricula:tipo:KmService:pesoCarga: #false)) #'2023-03-24T15:42:49.633-03:00') )
]

{ #category : #'code-critics' }
ManifestPOO class >> ruleSentNotImplementedRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#Cliente #verificarVencimiento #false)) #'2023-03-24T17:55:33.815-03:00') )
]
