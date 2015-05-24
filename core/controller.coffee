##
# Controller
# 
# Basic controller structure.
##
class Controller

  # Flag to know if we must run or not the controller
  # It's linked with the before() method.
  _gothamStop: false

  ##
  # Constructor
  #
  # The constructor
  #
  ##
  constructor: ->

  ##
  # Stop
  #
  # If we call this method in the before method,
  # it will not execute the run() method
  #
  ##
  stop: ->

    @_gothamStop = true

  ##
  # Log
  #
  # Shortcut to display a console.log
  #
  # @param [Mixed] Value to display
  # 
  ##
  log: (value) ->

    console.log(value)

  ##
  # On
  #
  # Shortcut to create a jquery "on" event
  #
  # @param [String] Trigger to listen (Ex. click)
  # @param [String] The selector to attach
  # @param [Function] The callback
  # 
  ##
  on: (trigger, selector, handler) ->

    $(selector).on trigger, handler

  ##
  # Off
  #
  # Shortcut to create a jquery "off" event
  #
  # @param [String] Trigger to shutdown (Ex. click)
  # @param [String] The selector attached
  # @param [Function] The handler
  # 
  ##
  off: (trigger, selector, handler) ->

    $(selector).off trigger, handler

  ##
  # Delayed
  #
  # Like "on" jquery event but listen new elements
  # added in the page
  #
  # @param [String] Trigger to listen (Ex. click)
  # @param [String] The selector to attach
  # @param [Function] The callback
  # 
  ##
  delayed: (trigger, selector, handler) ->

    $(document).on trigger, selector, handler


module.exports = Controller
