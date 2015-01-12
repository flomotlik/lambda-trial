console.log('Loading event');
console.log('Loading event again');

exports.handler = function(event, context) {
    console.log('Who = ' + event.key1);
    console.log('is = ' + event.key2);
    console.log('awesome = ' + event.key3);
    context.done(null, 'Hello World');  // SUCCESS with message
};
