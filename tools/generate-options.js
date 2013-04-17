/*
Pulls the latest Loadout .esp from the skyrim directory
*/

var fs = require('fs');

var options = {
	directory: {
		skyrim: 'C:/Program Files (x86)/Steam/steamapps/common/skyrim/'
	},
	plugin: {
		name: 'Loadout',
		version: '0.12',
		filename: 'DeazurainLoadout'
	}
};

var j = JSON.stringify(options, null, 4);

fs.writeFile('options.json', j, function (err) {
  if (err) throw err;
  console.log(j);
});