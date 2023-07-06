Class {
	#name : #Sistema,
	#superclass : #Object,
	#instVars : [
		'coleccionFiestas'
	],
	#category : #'POO-6'
}

{ #category : #'instance creation' }
Sistema class >> newListaFiestas [
|fiesta|
fiesta := self new crearListaFiestas .
^fiesta .
]

{ #category : #aplicasiones }
Sistema >> agregarFiesta:unaFiesta [
coleccionFiestas add: unaFiesta .

]

{ #category : #initialization }
Sistema >> crearListaFiestas [
coleccionFiestas :=OrderedCollection  new.
]

{ #category : #aplicasiones }
Sistema >> obtenerFiestasConArtista:unArtista [
|nuevalista|
nuevalista :=coleccionFiestas select:[:unaFiesta| unaFiesta haParticipado: unArtista  ].
^nuevalista .

]

{ #category : #aplicasiones }
Sistema >> obtenerFiestasConTipoDeArtista:unTipo [
|nuevalista|
nuevalista :=coleccionFiestas select:[:unaFiesta| unaFiesta participoUnTipo: unTipo    ].
^nuevalista .

]
