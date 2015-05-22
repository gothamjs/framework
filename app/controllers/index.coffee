Controller = require 'core/controller'

class Index extends Controller


  before: (params) ->

    @log _.welcome()
    @stop()

  events: ->

    @log "here"




module.exports = Index