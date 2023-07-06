Class {
	#name : #Auto,
	#superclass : #Object,
	#instVars : [
		'color',
		'marca',
		'modelo',
		'anio',
		'cantKmrecorridos',
		'matricula'
	],
	#category : #POO
}

{ #category : #initialization }
Auto class >> newMatricula: unaMatricula modelo: unModelo anio: unAnio color: unColor [
    | nuevoAuto |
    nuevoAuto := self new.
    nuevoAuto matricula: unaMatricula .
    nuevoAuto modelo: unModelo.
    nuevoAuto anio: unAnio.
    nuevoAuto color: unColor.
    nuevoAuto cantKmrecorridos: 0.
    ^ nuevoAuto
]

{ #category : #modificadores }
Auto >> andarKm: unKm [
	cantKmrecorridos :=cantKmrecorridos asInteger +  unKm asInteger  .

		
]

{ #category : #aplicaciones }
Auto >> comparar: unAuto [
	^(self getMatricula =unAuto getMatricula ).
]

{ #category : #initialization }
Auto >> crearMatricula: unaMatricula marca:unaMarca modelo: unModelo anio: unAnio color:unColor [
matricula :=unaMatricula.
modelo := unModelo.
marca:=unaMarca.
anio := unAnio.
color:=unColor .
cantKmrecorridos :=0.
       
]

{ #category : #observadores }
Auto >> getAnio [

	^ anio
]

{ #category : #observadores }
Auto >> getCantKlmRecorridos [
	^cantKmrecorridos .
]

{ #category : #observadores }
Auto >> getColor [
	^color.
]

{ #category : #observadores }
Auto >> getMarca [
^marca.
]

{ #category : #observadores }
Auto >> getMatricula [

	^ matricula
]

{ #category : #observadores }
Auto >> getModelo [
	^modelo.
]

{ #category : #observadores }
Auto >> imprimir [
 ^ 'Matrícula = ', matricula asString, ', Marca :',marca asString,', modelo = ', modelo asString, ',Anio = ', anio asString ,',Color: ',color asString ,',kmRecorridos: ', cantKmrecorridos asString .
]

{ #category : #modificadores }
Auto >> setColor:unColor [
	color :=unColor .
	
]
