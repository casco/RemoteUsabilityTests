ids
newTaskId
	| tasks newId |
	tasks := ExperimentTask selectAll.
	tasks isEmpty
		ifTrue: [ newId := 1 ]
		ifFalse: [ newId := (tasks collect: [ :each | each id asNumber ]) max + 1 ].
	^ newId asString