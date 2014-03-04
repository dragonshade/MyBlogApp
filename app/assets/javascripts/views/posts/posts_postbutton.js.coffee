class Blog.Views.PostButton extends Backbone.View
	
  tagName: ''

  events:
    'click' : 'listPosts'

  listPosts: ->
    Backbone.history.navigate("posts/list",true)






