var buildutil = require("./buildutil");

var util = require('util');
var exec = require('child_process').exec;

var skyrim_directory = "C:/Program Files (x86)/Steam/steamapps/common/skyrim/";
var papyrus_compiler = skyrim_directory + 
// Copy scripts
buildutil.copyDir("Data/scripts/Source", skyrim_directory + "Data/scripts/Source");

// Compile papyrus
process.chdir(skyrim_directory + '/Data/scripts/Source');

var compiler = skyrim_directory + "Papyrus Compiler/PapyrusCompiler.exe";
var file = "DeazurainLoadoutQuest.psc";
var flags = "TESV_Papyrus_Flags.flg";
var imports = "";
var output = skyrim_directory + "Data/scripts/";
function q(s) { return '"' + s + '"'; }

var command = q(compiler) + ' ' + file + ' -f=' + q(flags) + ' -import=' + q(imports) + ' -output=' + q(output);
exec(command, 
  function (error, stdout, stderr) {
    console.log('stdout: ' + stdout);
    console.log('stderr: ' + stderr);
    if (error !== null) {
      console.log('exec error: ' + error);
    }
});