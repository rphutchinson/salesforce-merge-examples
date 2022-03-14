trigger AccountTrigger on Account (before insert) {
	System.debug('Goodbye Cruel World');
	System.debug('Hello World!');
}