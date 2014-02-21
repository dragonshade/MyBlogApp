class Blog.Views.PostButton extends Backbone.View

  template: JST['posts/postbutton']

  events:
    'click' : 'listPosts'

  listPosts: ->
    Backbone.history.navigate("posts/list",true)

  render: ->
    $(@el).html(@template())
    this





