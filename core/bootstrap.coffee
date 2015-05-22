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

      else

        # Convert string to the path
        path = @_formatPath(response.result)

        # Require controller
        controller = require 'controllers/' + path

        # Invoke
        controller = new controller()

        if controller['before']?

          # Run the before method
          controller.before.call(undefined, params)

        controller.events.call(undefined, params)


  _formatPath: (str) ->

    str.split('.').join('/').split('#').join('/')




    
module.exports = Bootstrap