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
#= require jquery.hammer.min
#= require_tree .

gridSize = 50
threshold = gridSize / 2

startCoords = (dragStartCoords) ->
  dragStartCoords = {x:e.gesture.center.pageX, y:e.gesture.center.pageY}
  startOffSetX = dragStartCoords.x % gridSize
  startOffSetY = dragStartCoords.y % gridSize
  startCoords.x -= startOffSetX
  startCoords.y -= startOffSetY
  startCoords.x += gridSize if startOffSetX > threshold
  startCoords.y += gridSize if startOffSetY > threshold

flattenCoords = (coords) ->
  offsetX = coords.x % gridSize
  offsetY = coords.y % gridSize
  console.log("OffSet: "+offsetX)
  console.log("Offset: "+offsetY)
  coords.x -= offsetX
  coords.y -= offsetY
  coords.x += gridSize if offsetX > threshold
  coords.y += gridSize if offsetY > threshold

drawAUnitLineBetweenPoints = (dragStartCoords, coords) ->
  if Math.sin(angle) == gridSize*Math.sqrt(2) #if sine(coords.y/coords.x) = pi/2 then # if sine of the angle is  = 45 deg, draw the line
    # get context from canvas (2d)
    canvas = document.getElementById('myCanvas')
    # set variable ctx as context
    context = canvas.getContext('2d')
    # begin line draw from dragStartCoords
    context.beginPath()
    context.moveTo(dragStartCoords.x, dragStartCoords.y)
    context.moveTo(coords.x, coords.y)

    context.lineJoin = 'round'
    context.stroke()
    
# resetPointDataForNewLine = (dragStartCoords, coords) ->
#   dragStartCoords = 

    
    # set dragStartCoords to coords, and reset dragStartCoords (while $touchArea.hammer().on("dragend")? false)
    # refactor later to save dragStartCoords and coords as an object to a lines hash
    # (move) line draw to coords 

$ ->
  $touchArea = $(".touch_area")

  $touchArea.hammer().on("dragstart", startCoords() ->
    startCoords = { x: e.gesture.center.pageX, y: e.gesture.center.pageY}
    console.log("STARTED DRAGGING!")    
  )

  $touchArea.hammer().on("drag", coords(e) ->
    coords = { x: e.gesture.center.pageX, y: e.gesture.center.pageY}
    flattenCoords(coords)
    console.log(e)
    console.log(e.gesture.angle + " degrees")
    console.log("x: "+ coords.x + " y: "+coords.y)
  )

  $touchArea.hammer().on("dragend", coords(e) ->
    coords = { x: e.gesture.center.pageX, y: e.gesture.center.pageY}
    console.log("END DRAGGING!")
  )