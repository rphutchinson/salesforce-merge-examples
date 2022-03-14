trigger AccountTrigger on Account (before insert) {
	System.debug('Goodbye cruel world :(');
}