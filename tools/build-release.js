/*
This script is used to archive the Data folder
*/

var util = require('util');
var exec = require('child_process').exec;
var path = require('path');

var buildutil = require("./buildutil");

// input
var options = require('../options');
var archive_directory = 'Data/';
var output_directory = 'release/';
var archive_name = 'Loadout_' + options.plugin.version.replace('/\./g', '-') + '.zip';

var command = buildutil.makecommand('$archiver a $name -r $input', {
  archiver: '../7zip/7za.exe',
  name: path.join(output_directory, archive_name),
  input: archive_directory
});

console.log(command)

exec(command, 
  function (error, stdout, stderr) {
    if (error === null) {
      console.log(stdout);
    } else {
      console.log('stdout: ' + stdout);
      console.log('stderr: ' + stderr);
      console.log('exec error: ' + error);
    }
});
