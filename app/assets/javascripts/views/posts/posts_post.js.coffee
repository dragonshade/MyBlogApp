class Blog.Views.Post extends Backbone.View

  template: JST['posts/post']

  initialize: ->
    @model.on('change',@render,this)

  render: ->
    console.log @model.get('title')
    $(@el).html(@template(post: @model))
    this
