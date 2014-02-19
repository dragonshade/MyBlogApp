window.Blog =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
  	new Blog.Routers.Posts()
  	Backbone.history.start()

$(document).ready ->
  Blog.initialize()
