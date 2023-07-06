Class {
	#name : #Cliente,
	#superclass : #Object,
	#instVars : [
		'Dni',
		'nombreyapellido',
		'telefono',
		'tarjetaDecredito',
		'fechaVencimiento'
	],
	#category : #POO
}

{ #category : #add }
Cliente class >> apellido: aString nombre: aString2 edad: anInteger [ 
	self shouldBeImplemented.
]

{ #category : #add }
Cliente class >> nuevaConNombre: unNombre edad: unaEdad [ 
    | persona |
    persona := self new.
    persona nombre: unNombre.
    persona edad: unaEdad.
    persona enBar:false.
    ^ persona.

]

{ #category : #initialization }
Cliente >> crearDni:unDni nombreyapellido:unNombreyApellido telefono:unTelefono tarjetaDecredito:unaTarjeta fechaVencimiento: unaFechaVencimiento [ 
	Dni :=unDni .
	nombreyapellido  :=unNombreyApellido.
	telefono :=unTelefono .
	tarjetaDecredito :=unaTarjeta .
	fechaVencimiento :=unaFechaVencimiento .
	
]

{ #category : #visualizadores }
Cliente >> dni [

	^ Dni
]

{ #category : #visualizadores }
Cliente >> fechaVencimiento [

	^ fechaVencimiento
]

{ #category : #visualizadores }
Cliente >> imprimir [ 
^'Dni:',Dni asString,',Nombre y Apellido:',nombreyapellido asString,',Telefono:',telefono asString,',TarjetaDecredito:',tarjetaDecredito asString,',Fecha Vencimiento:',fechaVencimiento asString.
]

{ #category : #visualizadores }
Cliente >> nombreyapellido [

	^ nombreyapellido
]

{ #category : #modificadores }
Cliente >> setTelefono:unTelefono [
telefono :=unTelefono .
]

{ #category : #visualizadores }
Cliente >> tarjetaDecredito [

	^ tarjetaDecredito
]

{ #category : #visualizadores }
Cliente >> telefono [

	^ telefono
]

{ #category : #visualizadores }
Cliente >> verificarVencimiento [
^ fechaVencimiento subtractDate: Date today .
]
