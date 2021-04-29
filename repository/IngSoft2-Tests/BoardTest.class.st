Class {
	#name : #BoardTest,
	#superclass : #TestCase,
	#category : #'IngSoft2-Tests'
}

{ #category : #asserting }
BoardTest >> should: errorBlock raise: exceptionClass withMessage: expectedErrorMessage [

	self
		should: errorBlock
		raise: exceptionClass
		withExceptionDo:
			[ :error | self assert: error messageText equals: expectedErrorMessage ]
]

{ #category : #tests }
BoardTest >> test09ABoardCreatedWithTwentySquareBoardsHasTwentySquareBoards [
	
	| aBoard |
	
	aBoard := Board containing: 20.
	self assert: (aBoard boardSquares) equals: 20.
]

{ #category : #tests }
BoardTest >> test10ABoardMustContainAtLeast1SquareBoard [
	
	self
		should: [ Board containing: 0 ]
		raise: Error
		withMessage: 'A board must contain at least 2 square board'.
]