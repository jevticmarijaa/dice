Class {
	#name : #DieTest,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieTest >> testCreationIsOk [
	| d |
	self assert: (Die withFaces: 20) faces equals: 20.
]

{ #category : #tests }
DieTest >> testInitializationIsOk [ 
	| d |
	d := Die new.
	self assert: d faces equals: 6
]

{ #category : #tests }
DieTest >> testRoll [
	| d |
	d := Die new.
	10000 timesRepeat:
		[ self assert: (d roll between: 1 and: 6) ]
]

{ #category : #tests }
DieTest >> testSimpleHandle [
	self assert: 2 D20 diceNumber equals: 2
]
