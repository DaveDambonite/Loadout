/*
Clean compiled scripts
*/

var util = require('util');
var exec = require('child_process').exec;
var path = require('path');
var fs = require('fs');

var buildutil = require("./buildutil");

// Inputs
var scripts_directory = path.join(process.cwd(), 'Data/scripts');

var files = fs.readdirSync(scripts_directory);
for (var i = 0, li = files.length; i < li; i++) {
  var f = path.join(scripts_directory, files[i]);
  var stat = fs.statSync(f);
  if (stat.isFile()) {
    fs.unlinkSync(f);
  }
}
