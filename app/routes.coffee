#--------------------------------------------------------------------------
# Routes
#--------------------------------------------------------------------------
#
# All routes of your application.
##

module.exports = (route) ->

  #--------------------------------------------------------------------------
  # Example of a simple route
  #--------------------------------------------------------------------------
  #
  # route.match '/users', ->
  #
  #   console.log "Here the list of all the users"
  #
  # If the url is like www.domain.com/users, gotham will
  # display a log.
  ##

  #--------------------------------------------------------------------------
  # Example of a simple route with a controller
  #--------------------------------------------------------------------------
  #
  # route.match '/users', 'users#index'
  #
  # If the url is like www.domain.com/users, gotham will require
  # the run the controller "controllers/users/index.coffee"
  ##

  #--------------------------------------------------------------------------
  # Example of a route with a variable
  #--------------------------------------------------------------------------
  #
  # route.match '/users/:id', 'users#show'
  #
  # If the url is like www.domain.com/users/22 or www.domain.com/users/peter, etc ..
  # gotham will require the file controllers/users/show.coffee
  ##

  #--------------------------------------------------------------------------
  # Example of a route with a constraint
  #--------------------------------------------------------------------------
  # route.match '/users/:id/edit', 'users#edit', (params) ->
  #   if params.id is 22
  #     return false
  #   else
  #     return true
  #
  # If the url is like www.domain.com/users/22/edit
  # gotham will not run the controller controllers/users/edit.coffee
  ##


  
