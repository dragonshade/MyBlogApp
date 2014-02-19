class Blog.Views.PostsIndex extends Backbone.View

  template: JST['posts/index']


  render: (posts) -> 
  	$(@el).html(@template(posts))
  	this