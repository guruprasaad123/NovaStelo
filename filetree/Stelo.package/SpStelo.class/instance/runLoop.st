processes
runLoop
	| program |
	self setupEvents.
	program := project programOf: events.
	process := sworld newProcess program: program.
	process loop.
	^ process