#--------------------------------------------------------------------------
# Example Controller
#--------------------------------------------------------------------------
#
# That controller is just an example.
#
# @see http://gothamjs.io/documentation/1.0.0/controllers
##

# Require the controller library of Gotham
Controller = require 'core/controller'


class Example extends Controller

  ##
  # Before
  #
  # Executed before the run action. You can use
  # @stop() in this method to stop the execution
  # of the controller
  #
  ##
  before: ->

  ##
  # Run
  #
  # The main entry of the controller.
  # Your code start here
  #
  ##
  run: ->


# Export
module.exports = Example
