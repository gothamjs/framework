##
# View
#
# Micro-Facade for Handlebars.
##
class View

  ##
  # Constructor
  #
  # The constructor
  #
  ##
  constructor: ->

  ##
  # Render
  #
  # Render a template
  #
  # @param [String] Template to compile
  # @param [Object] Datas to compile with the template
  #
  ##
  render: (template, datas) ->

    template = template.split('.').join('/')

    template = require 'views/' + template

    return template(datas)

module.exports = View
