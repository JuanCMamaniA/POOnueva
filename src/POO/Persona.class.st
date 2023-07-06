Class {
	#name : #Persona,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'apellido',
		'edad',
		'enBar'
	],
	#category : #POO
}

{ #category : #add }
Persona class >> apellido: aString nombre: aString2 edad: anInteger [ 
	self shouldBeImplemented.
]

{ #category : #add }
Persona class >> nuevaConNombre: unNombre edad: unaEdad [ 
    | persona |
    persona := self new.
    persona nombre: unNombre.
    persona edad: unaEdad.
    persona enBar:false.
    ^ persona.

]

{ #category : #observadores }
Persona >> apellido [

	^ apellido
]

{ #category : #accessing }
Persona >> apellido: nApellido nombre:nNombre  edad:  aEdad [ 
	apellido :=nApellido .
	nombre :=nNombre .
	edad  :=aEdad  .
	enBar :=false.
	
]

{ #category : #'propias del tipo' }
Persona >> entrarBar [ 
	|exito|
	exito :=false.
	(self esMayor )
		ifTrue:[enBar :=true.
			exito :=true.
			].
		
	^exito  .
	
]

{ #category : #'propias del tipo' }
Persona >> esMayor [
	|mayor|
	mayor:=false.
	mayor :=(18<=edad)
		ifTrue: true.
	^mayor .
	
]

{ #category : #observadores }
Persona >> getNombre [
	^nombre  .
]

{ #category : #observadores }
Persona >> toString [
	|texto|
	texto:= apellido asString ,' , ', nombre asString. 
	^ texto.
]
