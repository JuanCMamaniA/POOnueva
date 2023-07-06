Class {
	#name : #Vagon,
	#superclass : #Object,
	#instVars : [
		'anioInstalacion',
		'largo',
		'ancho',
		'peso',
		'cantPasjTrasportar'
	],
	#category : #POO
}

{ #category : #visualizadores }
Vagon >> ancho [

	^ ancho
]

{ #category : #visualizadores }
Vagon >> anioInstalacion [ 

	^ anioInstalacion
]

{ #category : #visualizadores }
Vagon >> cantPasjTrasportar [

	^ cantPasjTrasportar
]

{ #category : #initialization }
Vagon >> crearAnio:unAnio largo:unLargo ancho:unAncho cantidadPasajerosTranportar:cantPasajeros [
anioInstalacion :=unAnio .
largo :=unLargo .
ancho :=unAncho .
peso:=cantPasajeros *80.
cantPasjTrasportar :=cantPasajeros .
]

{ #category : #visualizadores }
Vagon >> imprimir [ 
^'AnioInstalacion:',anioInstalacion asString,',Largo:',largo asString ,',Ancho:',ancho asString ,',Peso:',peso asString,'cantPasajeros:',cantPasjTrasportar asString.
]

{ #category : #visualizadores }
Vagon >> largo [

	^ largo
]

{ #category : #visualizadores }
Vagon >> peso [

	^ peso
]

{ #category : #visualizadores }
Vagon >> verificarAntiguedad [

	^  Date today year asInteger -anioInstalacion .
]
