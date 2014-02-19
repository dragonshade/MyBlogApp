class Blog.Collections.Posts extends Backbone.Collection

  model: Blog.Models.Post,

  url: '/bb/posts/list_posts'