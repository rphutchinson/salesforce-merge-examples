trigger AccountTrigger on Account (before insert) {
	System.debug('Hello World!');
	System.debug('Goodbye cruel world :(');
}