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

gridSize = 100
threshold = gridSize / 2

flattenCoords = (coords) ->
  offsetX = coords.x % gridSize
  offsetY = coords.y % gridSize
  coords.x -= offsetX
  coords.y -= offsetY
  coords.x += gridSize if offsetX > threshold
  coords.y += gridSize if offsetY > threshold
  return coords

startCoords = (e) ->
  dragStartCoords = {x:e.gesture.center.pageX, y:e.gesture.center.pageY}
  startOffSetX = dragStartCoords.x % gridSize
  startOffSetY = dragStartCoords.y % gridSize
  startCoords.x -= startOffSetX
  startCoords.y -= startOffSetY
  startCoords.x += gridSize if startOffSetX > threshold
  startCoords.y += gridSize if startOffSetY > threshold
  return dragStartCoords

endCoords = (e) ->
  dragEndCoords = {x:e.gesture.center.pageX, y:e.gesture.center.pageY}
  endOffSetX = dragEndCoords.x % gridSize
  endOffSetY = dragEndCoords.y % gridSize
  endCoords.x -= endOffSetX
  endCoords.y -= endOffSetY
  endCoords.x += gridSize if endOffSetX > threshold
  endCoords.y += gridSize if endOffSetY > threshold
  return dragEndCoords

flattenCoords = (coords) ->
  offsetX = coords.x % gridSize
  offsetY = coords.y % gridSize
  coords.x -= offsetX
  coords.y -= offsetY
  coords.x += gridSize if offsetX > threshold
  coords.y += gridSize if offsetY > threshold
  return coords

drawAUnitLineBetweenPoints = (dragStartCoords, dragEndCoords) ->
  # if Math.sin(angle) == gridSize*Math.sqrt(2) #if sine(coords.y/coords.x) = pi/2 then # if sine of the angle is  = 45 deg, draw the line
    # get context from canvas (2d)
    canvas = document.getElementById('myCanvas')
    # set variable ctx as context
    context = canvas.getContext('2d')
    # clears canvas so that only one point (dragEndCoords) is used as an endpoint (from the dragStartCoords)
    
    
    # begin line draw from dragStartCoords
    context.beginPath()
    context.clearRect(0, 0, canvas.width, canvas.height)
    context.moveTo(dragStartCoords.x, dragStartCoords.y)
    context.lineTo(dragEndCoords.x, dragEndCoords.y)
    dragStartCoords = dragEndCoords
    context.lineTo(dragStartCoords.x,dragStartCoords.y)

    context.strokeStyle = "#df4b26"
    context.lineWidth = 10
    context.lineCap = 'round'
    context.webkitImageSmoothingEnabled = true;
    context.restore()
    context.stroke()

    context.save()
    

  

# set dragStartCoords to coords, and reset dragStartCoords (within $touchArea.hammer().on("dragend")? false)
# resetPointDataForNewLine = (dragStartCoords, coords) ->
#   newPoint = coords
#   dragStartCoords = coords
#   coords = { x: e.gesture.center.pageX, y: e.gesture.center.pageY}
  

    # refactor later to save dragStartCoords and coords as an object to a lines hash
    # (move) line draw to coords 

$ ->
  orgoNom = new OrgoNom($("#myCanvas"))
  
class OrgoNom
  constructor: (@$canvas) ->
    @start = {x:0, y:0}
    # TODO: we need to bind to dragstart, drag, dragend
    @$canvas.hammer()
      .on( "dragstart", @onDragStart )
      .on( "drag", @onDrag )
      .on( "dragend", @onDragEnd )
  onDragStart: (e) => 
    @start = startCoords(e)
  onDrag: (e) =>
    coords = { x: e.gesture.center.pageX, y: e.gesture.center.pageY}
    console.log("ANGLE: " + e.gesture.angle)
    @end = flattenCoords(coords)
    @render()
  onDragEnd: (e) =>
    @end = endCoords(e)
    @render()
  render: ->
    drawAUnitLineBetweenPoints(@start, @end)
    console.log(@start, @end)





