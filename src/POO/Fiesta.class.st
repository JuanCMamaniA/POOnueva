Class {
	#name : #Fiesta,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'lugar',
		'fechaInicio',
		'coleccionArtista',
		'artista'
	],
	#category : #'POO-6'
}

{ #category : #'instance creation' }
Fiesta class >> newNombreFiesta: unNombre lugar:unLugar fechaInicio:unaFecha artista: unArtista [ 
|nuevaFiesta|
nuevaFiesta := self new  crearNombre: unNombre lugar:unLugar fechaInicio:unaFecha artista: unArtista.
^nuevaFiesta .
]

{ #category : #modificadores }
Fiesta >> agrearArtista: unArtista [

	coleccionArtista add: unArtista .
]

{ #category : #visualizadores }
Fiesta >> artista [

	^ artista
]

{ #category : #modificadores }
Fiesta >> artista: anObject [

	artista := anObject
]

{ #category : #initialization }
Fiesta >> crearNombre: unNombre lugar:unLugar fechaInicio:unaFecha artista: unArtista [ 
nombre:=unNombre .
lugar :=unLugar .
fechaInicio :=unaFecha .
artista :=unArtista .
coleccionArtista :=OrderedCollection  new.


]

{ #category : #visualizadores }
Fiesta >> fechaInicio [

	^ fechaInicio
]

{ #category : #modificadores }
Fiesta >> fechaInicio: anObject [

	fechaInicio := anObject
]

{ #category : #visualizadores }
Fiesta >> getEspecialidadArtista [ 
^artista tipo .
]

{ #category : #modificadores }
Fiesta >> haParticipado: unArtista [
|participo |
participo :=false.
coleccionArtista do:[:unArt| (unArt equals: unArtista)ifTrue: [ participo :=true ] ].
^participo .
]

{ #category : #visualizadores }
Fiesta >> lugar [

	^ lugar
]

{ #category : #visualizadores }
Fiesta >> nombre [

	^ nombre
]

{ #category : #visualizadores }
Fiesta >> obtenerArtistasDeTipo:unTipo [
|listaTipo|
listaTipo := coleccionArtista select:[:unArtista| (unArtista getTipoArtista ) =unTipo ].
^ listaTipo .
]

{ #category : #modificadores }
Fiesta >> obtenerFiestasConTipoDeArtista: unArtista [
|participo tamanioColeccion iteracion|
iteracion :=1.
participo :=false.
tamanioColeccion := coleccionArtista size.
 [(coleccionArtista notNil) & (iteracion <tamanioColeccion) & (participo = false) ] whileTrue: [   coleccionArtista do: [:art|(art equals: unArtista)ifTrue:[ participo:=true]]].
^participo .
]

{ #category : #modificadores }
Fiesta >> participoUnTipo: unTipo [
	| participo |
	participo := false.
	coleccionArtista do: [:art |
		((art getTipoArtista) = unTipo) ifTrue: [^ true].
	].
	^ participo.
	"| participo indice tamanio|
	participo := false.
	indice := 1.
	tamanio:=coleccionArtista size.
	[participo = false and: [indice <=tamanio ]] whileTrue: [
		( (coleccionArtista at: indice) getTipoArtista = unTipo)ifTrue: [ participo:= true.] ] .
		indice := indice + 1.
	].
	^ participo."
]

{ #category : #visualizadores }
Fiesta >> toString [ 
^ 'NombreFiesta:',nombre asString,', Lugar:',lugar asString ,', FechaInicio:',fechaInicio asString ,', Artista Principal:',artista nombre asString.
]
