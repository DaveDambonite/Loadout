
var fs = require('fs');

var source = 'tools/x.txt';
var sink = 'tools/copy of input.txt';

var copy = function(source, destination, callback) {
	var i = fs.createReadStream(source);
	var o = fs.createWriteStream(destination);
	var c = false;
	var cb = callback ?
		function(err) { if (c) { return; } c = true; callback(err); } : 
		function(err) {};
	i.on('error', function(err) { cb(err); });
	o.on('error', function(err) { cb(err); });
	o.on('finish', function() { cb(null); });
	i.pipe(o);
};

copy(source, sink, function(err) {
	if (err) {
		console.error(err);
	} else {
		console.log('Copied "' + source + '" to "' + sink + '"');
	}
});

copy('README.md', 'backup.md');
