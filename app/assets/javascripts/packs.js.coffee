# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  dragged = 0
  gridster = $(".gridster ul").gridster(
    widget_margins: [10, 10],
    widget_base_dimensions: [140, 140]
    serialize_params: ($w, wgd) ->
      name: $($w).data("name")
      col: wgd.col
      row: wgd.row
      size_x: wgd.size_x
      size_y: wgd.size_y
    max_cols: 4
    draggable:
      start: (event, ui) ->
        dragged = 1
      stop: (event, ui) ->
      	json = JSON.stringify(gridster.serialize());
  ).data("gridster")    	

  $("a.thumbnail").click (event) ->
    if dragged
      event.preventDefault()
      dragged = 0  

  # serialization =     
  # gridster.remove_all_widgets();
  # $.each serialization, -> 
  # 	gridster.add_widget('<li />', this.size_x, this.size_y, this.col, this.row)


$(document).ready(ready)
$(document).on('page:load', ready)


