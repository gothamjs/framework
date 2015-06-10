#--------------------------------------------------------------------------
# Initialize
#--------------------------------------------------------------------------
#
# It's the main entry of your gotham application. We will require the
# bootstrap file and run gotham.
##
Bootstrap = require 'core/bootstrap'

# Hey sir, is the document ready ?
$ ->

  # Yep ! We will run gotham !
  bootstrap = new Bootstrap

    # We set the browser's request
    request: window.location.pathname

  bootstrap.run()
