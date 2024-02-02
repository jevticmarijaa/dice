Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
Die class >> withFaces: anInteger [ 
	| d |
	d := Die new.
	d faces: anInteger.
	^ d
]

{ #category : #accessing }
Die >> faces [
	^ faces
]

{ #category : #accessing }
Die >> faces: anInteger [ 
	faces := anInteger
]

{ #category : #accessing }
Die >> initialize [
	super initialize.
	faces := 6.
]

{ #category : #accessing }
Die >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' (', faces printString, ') '
]

{ #category : #accessing }
Die >> roll [
	^ faces atRandom
]
