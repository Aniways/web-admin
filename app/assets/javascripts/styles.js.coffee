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
        order_json = JSON.stringify(gridster.serialize());
        $.ajax
          type: "PUT",
          url: window.location,
          dataType: "json"
          data: 
            style:
              view_order: order_json
  ).data("gridster")      

  $("a.thumbnail").click (event) ->
    if dragged
      event.preventDefault()
      dragged = 0  

$(document).ready(ready)
$(document).on('page:load', ready)

