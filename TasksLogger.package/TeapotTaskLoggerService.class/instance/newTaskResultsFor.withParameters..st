voyage-access
newTaskResultsFor: task withParameters: parameters
	| result |
	result := ExperimentTaskResult new.
	result task: task.
	result properties: (parameters at: #results). 
	^result.
	