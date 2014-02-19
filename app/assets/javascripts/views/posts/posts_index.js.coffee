class Blog.Views.PostsIndex extends Backbone.View

  template: JST['posts/index']

  initialize: ->
  	@collection.on('reset',@render,this)

  render: -> 
  	$(@el).html(@template())
  	@collection.each(@appendEntry)
  	this

  appendEntry: (entry) ->
    view = new Blog.Views.PostsView(model: entry)
    $('#entries').append(view.render().el)