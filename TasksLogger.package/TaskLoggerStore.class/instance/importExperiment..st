importing
importExperiment: exp
	self importTasks: exp tasks.
	self importSamples: exp samples.
	exp id: self newExperimentId.
	self rememberToSave: exp.
	self savePending