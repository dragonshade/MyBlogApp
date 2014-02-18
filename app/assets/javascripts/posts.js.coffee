# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$().ready ->
  $("#menu_item_post").on "click", ->
    $.getJSON "/posts/list_posts", (resp) ->
    	  list resp
      return

    return

  return



 list(json_data) ->
 	$.each resp , (key,value) ->
 					alert(key+ ": "+value)
 		return
 return

