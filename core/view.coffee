##
# View
# 
# Micro Tiny Facade for Handlebars
#
# @author  Ges Jeremie <http://www.gesjeremie.fr>
# @since Version 1.0
##

##
# View class
#
# Class who manage "views"
#
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

    template = require 'views/' + template

    return template(datas)

module.exports = View