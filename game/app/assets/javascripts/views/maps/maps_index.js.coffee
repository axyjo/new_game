class Game.Views.MapsIndex extends Backbone.View

  template: JST['maps/index']

  render: ->
    $(@el).html @template()
    this
