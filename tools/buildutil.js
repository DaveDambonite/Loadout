var fs = require("fs"), path = require("path"), util = require("util");

module.exports = buildutil = {};

buildutil.mkdir = function(dir) {
  // making directory without exception if exists
  try {
    fs.mkdirSync(dir, 0755);
  } catch(e) {
    if(e.code != "EEXIST") {
      throw e;
    }
  }
};

buildutil.rmdir = function(dir) {
  if (path.existsSync(dir)) {
    var list = fs.readdirSync(dir);
    for(var i = 0; i < list.length; i++) {
      var filename = path.join(dir, list[i]);
      var stat = fs.statSync(filename);
      
      if(filename == "." || filename == "..") {
        // pass these files
      } else if(stat.isDirectory()) {
        // rmdir recursively
        rmdir(filename);
      } else {
        // rm fiilename
        fs.unlinkSync(filename);
      }
    }
    fs.rmdirSync(dir);
  } else {
    console.warn("warn: " + dir + " not exists");
  }
};

buildutil.copyDir = function(src, dest) {
  buildutil.mkdir(dest);
  var files = fs.readdirSync(src);
  for(var i = 0; i < files.length; i++) {
    var current = fs.lstatSync(path.join(src, files[i]));
    if(current.isDirectory()) {
      buildutil.copyDir(path.join(src, files[i]), path.join(dest, files[i]));
    } else if(current.isSymbolicLink()) {
      var symlink = fs.readlinkSync(path.join(src, files[i]));
      fs.symlinkSync(symlink, path.join(dest, files[i]));
    } else {
      buildutil.copy(path.join(src, files[i]), path.join(dest, files[i]));
    }
  }
};
 
buildutil.copy = function(src, dest) {
  var oldFile = fs.createReadStream(src);
  var newFile = fs.createWriteStream(dest);
  util.pump(oldFile, newFile);
};