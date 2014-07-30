var PEG = require('pegjs');
var fs = require('fs');

var data = fs.readFileSync('./js/scheemgrammar.pegjs', 'utf-8');

exports.scheem = PEG.buildParser(data).parse;