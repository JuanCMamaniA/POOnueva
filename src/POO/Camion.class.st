Class {
	#name : #Camion,
	#superclass : #Object,
	#instVars : [
		'matricula',
		'tipo',
		'KmaActual',
		'KmService',
		'pesoCarga'
	],
	#category : #POO
}

{ #category : #modifcadores }
Camion >> andarKm: unKm [
	KmaActual  :=KmaActual  asInteger +  unKm asInteger  .

]

{ #category : #initialization }
Camion >> crearMatricula: unaMatricula tipo:unTipo KmService:unKm pesoCarga:unPeso [
	matricula :=unaMatricula .
	tipo :=unTipo .
	KmaActual :=0.
	KmService :=unKm .
	pesoCarga :=unPeso .
^self.
	
]

{ #category : #observadores }
Camion >> imprimir [ 
^'Matricula: ',matricula asString,',Tipo: ',tipo asString,',KmActual:',KmaActual asString ,',KmServicio:',KmService asString,',Peso de carga: ',pesoCarga asString.
]

{ #category : #observadores }
Camion >> kmService [

	^ KmService
]

{ #category : #observadores }
Camion >> kmaActual [

	^ KmaActual
]

{ #category : #modifcadores }
Camion >> kmaActual: anObject [

	KmaActual := anObject
]

{ #category : #observadores }
Camion >> matricula [

	^ matricula
]

{ #category : #observadores }
Camion >> pesoCarga [

	^ pesoCarga
]

{ #category : #modifcadores }
Camion >> pesoCarga: unPesoCarga [

	pesoCarga := unPesoCarga
]

{ #category : #observadores }
Camion >> tipo [

	^ tipo
]

{ #category : #aplicasiones }
Camion >> verificarPeso:unPeso [
^ unPeso >pesoCarga  .
]

{ #category : #aplicasiones }
Camion >> verificarService [
^ KmaActual >=KmService .
]
