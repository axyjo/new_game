class Game.Routers.Maps extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    view = new Game.Views.MapsIndex()
    $("#container").html view.render().el

