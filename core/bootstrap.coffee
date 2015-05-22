Router = require 'core/router'

class Bootstrap

  constructor: (options) ->

    @options = options

  run: ->

    # Init router
    router = new Router(@options.request)

    # Load routes
    require('routes')(router)

    # Run router
    router.run()

    # Check response
    if router.passes()

      # Stock response
      response = router.response()

      # Stock params
      params = response.params

      # Check if we need to call directly the callback
      if _.isFunction(response.result)

        # Call it ! 
        response.result.call(undefined, params)

    
module.exports = Bootstrap