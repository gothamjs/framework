#--------------------------------------------------------------------------
# Helpers
#--------------------------------------------------------------------------
#
# If you need to create some functions to use in your application, you are
# in the right place !
# 
# Gotham uses lo-dash and the concept of mixins.
# 
# @see https://lodash.com/docs#mixin
##

##
# Example 
# 
# Check if the user is batman
# 
# @param [string] Name of the user
##
_.mixin isBatman: (name) ->
  
  if name.toLowerCase() is "batman"
    return true

  return false
