class Bootstrap

  constructor: (options) ->

    @options = options

  run: ->

    # Load lo-dash helpers
    require 'helpers'

    # Load start
    require 'start'

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
        response.result(params)

      else

        # Convert string to the path
        path = @_formatPath(response.result)

        # Require controller
        controller = require 'controllers/' + path

        # Invoke
        controller = new controller()

        # Check if we have a method before
        if controller['before']?

          # Run the before method
          controller.before(params)

        unless controller._gothamStop
          controller.run(params)


  _formatPath: (str) ->

    str.split('.').join('/').split('#').join('/')




module.exports = Bootstrap
