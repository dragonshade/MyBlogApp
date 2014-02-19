class Blog.Views.Post extends Backbone.View

  template: JST['posts/post']

  initialize: ->
  	@model.on('reset',@render,this)

  render: ->
    $(@el).html(@template(entry: @model))
    this
