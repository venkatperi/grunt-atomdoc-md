path = require 'path'
gen = require 'atomdoc-md'
console.log gen

module.exports = ( grunt ) ->
  grunt.registerMultiTask 'atomdoc_md', 'Generate markdown from atomdoc', ->
    @data.module ?= '.'
    done = @async()
    gen(@data)
    .then -> done()
    .fail done 
