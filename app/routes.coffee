#--------------------------------------------------------------------------
# Routes
#--------------------------------------------------------------------------
#
# All routes of your application.
#
# @see http://gothamjs.io/documentation/1.0.0/routing
##

module.exports = (route) ->

  #--------------------------------------------------------------------------
  # Basic routing
  #--------------------------------------------------------------------------
  #
  # route.match '/welcome', ->
  #
  #   console.log "Hello"
  #
  # If the url is like www.domain.com/welcome, gotham will
  # display "Hello" in the console log.
  #
  # @see http://gothamjs.io/documentation/1.0.0/routing#basic-routing
  ##


  #--------------------------------------------------------------------------
  # Route parameters
  #--------------------------------------------------------------------------
  #
  # route.match '/users/show/:id', (params) ->
  #
  #   console.log 'User #' + params.id
  #
  # If the url is like www.domain.com/users/show/3, gotham will
  # display "User #3" in the console log.
  #
  # @see http://gothamjs.io/documentation/1.0.0/routing#route-parameters
  ##

  #--------------------------------------------------------------------------
  # Routing to controllers
  #--------------------------------------------------------------------------
  #
  # route.match '/kill-batman', 'batman.kill'
  #
  # If the url is like www.domain.com/kill-batman, gotham will
  # execute the controller app/controllers/batman/kill.coffee
  #
  # @see http://gothamjs.io/documentation/1-0-0/controllers#route
  ##

  #--------------------------------------------------------------------------
  # Route constraints
  #--------------------------------------------------------------------------
  #
  # route.match '/kill/:name', 'batman.kill', (params) ->
  #
  #  if params.name is 'Batman'
  #     return true
  #
  #  return false
  #
  # If the url is like www.domain.com/kill/joker, gotham will not
  # execute the controller app/controllers/batman/kill.coffee
  #
  # @see http://gothamjs.io/documentation/1.0.0/routing#route-constraints
  ##
