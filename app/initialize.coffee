Bootstrap = require 'core/bootstrap'

# If document is ready
$ ->

  bootstrap = new Bootstrap
    request: window.location.pathname

  bootstrap.run()
