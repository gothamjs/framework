module.exports = (route) ->

  route.match '/admin', ->

    console.log "Yolo"

  route.match '/', 'index'