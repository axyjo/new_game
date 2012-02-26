window.Game =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Game.Routers.Maps()
    new Game.Routers.Kingdoms()
    Backbone.history.start()

$(document).ready ->
  Game.init()
