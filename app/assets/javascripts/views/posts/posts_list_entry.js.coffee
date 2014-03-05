class Blog.Views.PostsView extends Backbone.View

  template: JST['posts/posts_list_entry']
  tagName: 'li'

  events:
  	'click' : 'showPost'

  showPost: ->
    Backbone.history.navigate("posts/#{@model.get('id')}",true)

  render: ->
    $(@el).html(@template(entry: @model))
    this