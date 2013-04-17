var util = require('util');
var exec = require('child_process').exec;
var path = require('path');

var buildutil = require("./buildutil");

// input
var options = require('../options');
var file = process.argv[2];
var project_directory = process.argv[3];
var skyrim_directory = options.directory.skyrim;

if (file === undefined || project_directory === undefined) {
  console.error('Cannot compile, no file supplied');
  return;
}

// computed
var project_source = path.join(project_directory, 'Data/scripts/Source');
var skyrim_source = path.join(skyrim_directory, 'Data/scripts/Source');
var compiler = path.join(skyrim_directory, 'Papyrus Compiler/PapyrusCompiler.exe');
var flags = "TESV_Papyrus_Flags.flg";
var imports = project_directory ? path.join(project_directory, 'Data/scripts/Source') : '';
var output = path.join(project_directory, 'Data/scripts');


// build messages
console.log('######');
console.log('# Papyrus builder');
console.log('#');
console.log('# Building "' + path.basename(file) + '"');
console.log('######');
console.log('')

// Change working directory to scripts/Source
process.chdir(skyrim_source);

function arg(name, value) { return value !== undefined ? '-' + name + '="' + value + '"' : '"' + name + '"'; }

var command = [arg(compiler),
	arg(file), 
	arg('f', flags), 
	arg('import', imports), 
	arg('output', output)].join(' ');

exec(command, 
  function (error, stdout, stderr) {
    if (error === null) {
      console.log(stdout);
      var outfile = path.basename(file, '.psc') + '.pex';
      console.log('Copying "' + outfile + '" to "' + path.join(skyrim_directory, 'Data/scripts') + '"');
      buildutil.copy(path.join(output, outfile), path.join(skyrim_directory, 'Data/scripts', outfile));
    } else {
      console.log('stdout: ' + stdout);
      console.log('stderr: ' + stderr);
      console.log('exec error: ' + error);
    }
});

// Copy built .pex to skyrim /Data/scripts
