Controller = require 'core/controller'
View = require 'core/view'

class Index extends Controller


  before: (params) ->

    @log _.welcome()

  run: ->

    view = new View()
    console.log view.render('hello')

    




module.exports = Index