class Blog.Routers.Posts extends Backbone.Router
    routes: 'posts/list' : 'list'

    list: ->
       @collection = new Blog.Collections.Posts()
       @collection.fetch success: ->
       		 alert @collection
      		 view = new Blog.Views.PostsIndex()
      		 $('#center').html(view.render(posts: @collection).el)
      		 
       	
