# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# the compiled file.
#
# WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# GO AFTER THE REQUIRES BELOW.
#
#= require jquery
#= require jquery_ujs
#= require jquery.hammer.min
#= require_tree .

gridSize = 100
threshold = gridSize / 2

flattenCoords = (coords) ->
  offsetX = coords.x % gridSize
  offsetY = coords.y % gridSize

  coords.x -= offsetX
  coords.y -= offsetY

  coords.x += gridSize if offsetX > threshold
  coords.y += gridSize if offsetY > threshold

$ ->
  $touchArea = $(".touch_area")

  $touchArea.hammer().on("dragstart", (e) ->
    console.log("STARTED DRAGGING!")
  )

  $touchArea.hammer().on("dragend", (e) ->
    console.log("END DRAGGING!")
  )

  $touchArea.hammer().on("drag", (e) ->
    coords = { x: e.gesture.center.pageX, y: e.gesture.center.pageY}
    flattenCoords(coords)
    
    drawShape = () ->
      canvas = document.getElementById('mycanvas')
      ctx = canvas.getContext('2d')

      ctx.beginpath()
      ctx.moveTo coords.x, coords.y
      ctx.lineTo coords.x+offsetX, coords.y+offsetY
      ctx.lineTo()
    
    console.log(e)
    console.log(e.gesture.angle + " degrees , " + e.gesture.distance + " px")
    console.log("x: "+ coords.x + "  y: "+coords.y)
  )