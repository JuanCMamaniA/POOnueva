Class {
	#name : #Artista,
	#superclass : #Object,
	#instVars : [
		'tipo',
		'nombre',
		'apellido',
		'dni',
		'telefono',
		'email'
	],
	#category : #'POO-6'
}

{ #category : #testing }
Artista class >> isAbstract [
		
	^ self == Artista
]

{ #category : #'instance creation' }
Artista class >> newNombreArtista:unNombre apellido:unApellido tipo:unTipo dni:unDni telefono:unTelefono email:unEmail [
|nuevoArtista|
nuevoArtista := self new crearNombre:unNombre apellido:unApellido tipo:unTipo dni:unDni telefono:unTelefono email:unEmail.
^nuevoArtista .
]

{ #category : #visualizadores }
Artista >> aArtista [

	^ tipo
]

{ #category : #visualizadores }
Artista >> apellido [

	^ apellido
]

{ #category : #initialization }
Artista >> crearNombre:unNombre apellido:unApellido tipo:unTipo dni:unDni telefono:unTelefono email:unEmail [
nombre :=unNombre .
apellido :=unApellido .
tipo :=unTipo .
dni :=unDni .
telefono :=unTelefono .
email :=unEmail .
]

{ #category : #visualizadores }
Artista >> dni [

	^ dni
]

{ #category : #visualizadores }
Artista >> email [

	^ email
]

{ #category : #aplicaciones }
Artista >> equals: unArtista [
^ dni =unArtista dni .
]

{ #category : #visualizadores }
Artista >> getTipoArtista [

	^ tipo
]

{ #category : #visualizadores }
Artista >> nombre [

	^ nombre
]

{ #category : #visualizadores }
Artista >> telefono [

	^ telefono
]

{ #category : #visualizadores }
Artista >> tipo [
	^ tipo
]

{ #category : #visualizadores }
Artista >> toString [
^'Nombre:',nombre asString ,', Apellido:',apellido ,', Tipo:',tipo asString ,', DNI:',dni asString ,', Telefono:',telefono asString,', Email:',email asString.
]
