/*
Pulls the latest Loadout .esp from the skyrim directory
*/

var util = require('util');
var path = require('path');

var buildutil = require('./buildutil');
var options = require('../options');

// input
var skyrim_directory = options.directory.skyrim;
var plugin_file = options.plugin.filename + '.seq';

// Copy .esp file to Data directory
buildutil.copy(
	path.join(skyrim_directory, 'Data/SEQ/', plugin_file), // From the skyrim folder
	path.join('Data/SEQ/', plugin_file)); // to the relative project folder