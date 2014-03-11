class Blog.Routers.Posts extends Backbone.Router
  routes: 'posts/list' : 'list','posts/:id' : 'show','' : 'render_template'
  
  initialize: ->
    this.on('route', @render_template)

  render_template: ->
    postButtonView=new Blog.Views.PostButton(el: "#postslist")

  list: ->
    @collection = new Blog.Collections.Posts()
    @collection.fetch({reset:true})
    view = new Blog.Views.PostsIndex(collection: @collection)
    $('#center').html(view.render().el)

  show: (post_id) ->
    @model = new Blog.Models.Post({id: post_id})
    @model.fetch()
    view = new Blog.Views.Post(model: @model)
    $("#center").html(view.render().el)

      		 
       	
