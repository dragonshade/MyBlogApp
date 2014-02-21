class Blog.Routers.Posts extends Backbone.Router
  routes: 'posts/list' : 'list','posts/:id' : 'show','' : 'render_template'

  list: ->
    @collection = new Blog.Collections.Posts()
    @collection.fetch({reset:true})
    view = new Blog.Views.PostsIndex(collection: @collection)
    $('#center').html(view.render().el)
    return

  show: (post_id) ->
    @model = new Blog.Models.Post({id: post_id})
    @model.fetch()
    view = new Blog.Views.Post(model: @model)
    $("#center").html(view.render().el)

  render_template: ->
    postButtonView= new Blog.Views.PostButton()
    $('#menu').html(postButtonView.render().el)


      		 
       	
