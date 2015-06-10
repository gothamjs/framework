#--------------------------------------------------------------------------
# Start
#--------------------------------------------------------------------------
#
# Gotham will run after that file the router system. It's the right place
# to put some code to execute globally like the init of jQuery plugins, etc.
##

#--------------------------------------------------------------------------
# Example
#--------------------------------------------------------------------------
#
# We want to say hello to the developer :)
##

# Load library View of Gotham
View = require 'core/view'

# Invoke View
view = new View()

# Load view
hello = view.render 'hello', {framework: 'GothamJS'}

# Inject in the html
$('body').html hello
